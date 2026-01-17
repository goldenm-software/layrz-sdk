package enums

// Platform is the supported platform types.
type Platform string

const (
	// PlatformiOS represents the iOS platform.
	PlatformiOS Platform = "IOS"
	// PlatformAndroid represents the Android platform.
	PlatformAndroid Platform = "ANDROID"
	// PlatformWeb represents the Web platform.
	PlatformWeb Platform = "WEB"
	// PlatformWindows represents the Windows platform.
	PlatformWindows Platform = "WINDOWS"
	// PlatformMacOS represents the macOS platform.
	PlatformMacOS Platform = "MACOS"
	// PlatformLinux represents the Linux platform.
	PlatformLinux Platform = "LINUX"
	// PlatformLayrzOS represents the LayrzOS platform.
	PlatformLayrzOS Platform = "LAYRZOS"
)
