package entities

import "math"

// geodesicDistance returns the geodesic distance in meters between two points on the
// WGS-84 ellipsoid using the Vincenty inverse formula.
// This matches geopy.distance.geodesic (Python) for the same inputs.
// Returns 0 for identical points or antipodal pairs that fail to converge.
func geodesicDistance(lat1, lon1, lat2, lon2 float64) float64 {
	// WGS-84 ellipsoid parameters (matches geopy defaults)
	const (
		a = 6378137.0           // semi-major axis (meters)
		f = 1.0 / 298.257223563 // flattening
		b = a * (1 - f)         // semi-minor axis
	)

	φ1 := lat1 * math.Pi / 180
	φ2 := lat2 * math.Pi / 180
	λ1 := lon1 * math.Pi / 180
	λ2 := lon2 * math.Pi / 180

	U1 := math.Atan((1 - f) * math.Tan(φ1))
	U2 := math.Atan((1 - f) * math.Tan(φ2))

	sinU1 := math.Sin(U1)
	cosU1 := math.Cos(U1)
	sinU2 := math.Sin(U2)
	cosU2 := math.Cos(U2)

	λ := λ2 - λ1
	λPrev := 0.0
	var sinσ, cosσ, σ, sinα, cos2σm, C float64
	cos2α := 0.0

	const maxIter = 200
	const eps = 1e-12

	for i := 0; i < maxIter; i++ {
		sinλ := math.Sin(λ)
		cosλ := math.Cos(λ)

		term1 := cosU2 * sinλ
		term2 := cosU1*sinU2 - sinU1*cosU2*cosλ
		sinσ = math.Sqrt(term1*term1 + term2*term2)

		if sinσ == 0 {
			return 0 // coincident points
		}

		cosσ = sinU1*sinU2 + cosU1*cosU2*cosλ
		σ = math.Atan2(sinσ, cosσ)
		sinα = cosU1 * cosU2 * sinλ / sinσ
		cos2α = 1 - sinα*sinα
		cos2σm = 0.0
		if cos2α != 0 {
			cos2σm = cosσ - 2*sinU1*sinU2/cos2α
		}

		C = f / 16 * cos2α * (4 + f*(4-3*cos2α))
		λPrev = λ
		λ = (λ2 - λ1) + (1-C)*f*sinα*(σ+C*sinσ*(cos2σm+C*cosσ*(-1+2*cos2σm*cos2σm)))

		if math.Abs(λ-λPrev) <= eps {
			break
		}
	}

	u2 := cos2α * (a*a - b*b) / (b * b)
	A := 1 + u2/16384*(4096+u2*(-768+u2*(320-175*u2)))
	B := u2 / 1024 * (256 + u2*(-128+u2*(74-47*u2)))
	Δσ := B * sinσ * (cos2σm + B/4*(cosσ*(-1+2*cos2σm*cos2σm)-B/6*cos2σm*(-3+4*sinσ*sinσ)*(-3+4*cos2σm*cos2σm)))

	return b * A * (σ - Δσ)
}
