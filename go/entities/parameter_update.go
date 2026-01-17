package entities

import (
	"encoding/json"
	"strings"

	"github.com/goldenm-software/layrz-sdk/types"
)

// ParamData represents the updated value and last updated timestamp for a parameter.
type ParamData struct {
	// Value is the updated value of the parameter.
	Value *any `json:"value,omitempty"`
	// UpdatedAt is the timestamp when the parameter was last updated.
	UpdatedAt types.UnixTime `json:"updated_at"`
}

// ParameterUpdate represents an update to a asset parameter.
type ParameterUpdate struct {
	// AssetId is the identifier of the asset whose parameter is being updated.
	AssetId int64 `json:"asset_id"`
	// Parameters is a map of parameter names to their updated data.
	// On this map, the key is the parameter name, and the value is a
	// ParamData struct containing the updated value and timestamp.
	Parameters map[string]ParamData `json:"parameters"`
}

// UnmarshalJSON implements the json.Unmarshaler interface for ParameterUpdate.
// It ensures that the Parameters map is properly initialized during unmarshalling.
func (p *ParameterUpdate) UnmarshalJSON(data []byte) error {
	type Alias ParameterUpdate
	aux := &struct {
		*Alias
	}{
		Alias: (*Alias)(p),
	}
	if err := json.Unmarshal(data, &aux); err != nil {
		return err
	}

	sanitizedParams := make(map[string]ParamData, len(p.Parameters))

	for k, v := range p.Parameters {
		newKey := strings.ReplaceAll(k, "__", ".")
		sanitizedParams[newKey] = v
	}
	p.Parameters = sanitizedParams
	return nil
}
