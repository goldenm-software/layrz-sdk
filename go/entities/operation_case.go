package entities

import "github.com/goldenm-software/layrz-sdk/go/v4/types"

// OperationCaseComment represents a comment on an operation case.
type OperationCaseComment struct {
	// ID is the unique identifier of the case comment.
	ID int64 `json:"id"`
	// User is the user who created the comment.
	User string `json:"user"`
	// Content is the content of the comment.
	Content string `json:"content"`
	// CreatedAt is the timestamp when the comment was created.
	CreatedAt types.UnixTime `json:"created_at"`
}

// OperationCase represents a case associated with an operation.
type OperationCase struct {
	// ID is the unique identifier of the case.
	ID int64 `json:"id"`
	// CreatedAt is the timestamp when the case was created.
	CreatedAt types.UnixTime `json:"created_at"`
	// UpdatedAt is the timestamp when the case was last updated.
	UpdatedAt types.UnixTime `json:"updated_at"`
	// Trigger is the trigger associated with the case.
	Trigger *Trigger `json:"trigger,omitempty"`
	// FileID is the identifier of the file associated with the case, if any.
	FileID *int64 `json:"file_id,omitempty"`
	// FileCreatedAt is the timestamp when the file was created, if applicable.
	FileCreatedAt *types.UnixTime `json:"file_created_at,omitempty"`
	// Comment is the comment associated with the case, if any.
	Comment *OperationCaseComment `json:"comment,omitempty"`
}
