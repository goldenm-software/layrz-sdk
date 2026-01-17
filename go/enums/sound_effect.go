package enums

// SoundEffect represents different sound effect options.
type SoundEffect string

const (
	// SoundEffectNone represents No sound
	SoundEffectNone SoundEffect = "NONE"
	// SoundEffectBeep represents A short, sharp electronic sound, often associated with alerts or signals.
	SoundEffectBeep SoundEffect = "BEEP"
	// SoundEffectMechanical represents A sound resembling a machine or device,
	// characterized by clicking, whirring, or other industrial tones.
	SoundEffectMechanical SoundEffect = "MECHANICAL"
	// SoundEffectPeal represents A clear, ringing sound, reminiscent of a bell or a chime.
	SoundEffectPeal SoundEffect = "PEAL"
	// SoundEffectPop represents A quick, soft burst-like sound, similar to a bubble popping.
	SoundEffectPop SoundEffect = "POP"
	// SoundEffectResonant represents A deep, echoing tone with a lasting vibration or reverberation.
	SoundEffectResonant SoundEffect = "RESONANT"
	// SoundEffectTone represents A steady, smooth sound with a consistent pitch, often used in signals or melodies.
	SoundEffectTone SoundEffect = "TONE"
	// SoundEffectCustom represents A custom sound effect that can be set by the user.
	SoundEffectCustom SoundEffect = "CUSTOM"
)
