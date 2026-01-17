package enums

// HttpRequestType represents HTTP request methods.
type HttpRequestType string

const (
	// HttpGET represents the GET method.
	HttpGET HttpRequestType = "GET"
	// HttpPOST represents the POST method.
	HttpPOST HttpRequestType = "POST"
	// HttpPUT represents the PUT method.
	HttpPUT HttpRequestType = "PUT"
	// HttpPATCH represents the PATCH method.
	HttpPATCH HttpRequestType = "PATCH"
	// HttpDELETE represents the DELETE method.
	HttpDELETE HttpRequestType = "DELETE"
)
