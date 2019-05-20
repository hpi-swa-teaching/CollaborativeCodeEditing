initialize-release
initialize
	super initialize.
	
	self server: WebServer reset default.
	self sessions: Dictionary new.
	self sessionSeed: 0. "TODO: Use randomization"
	
	self initializeServices