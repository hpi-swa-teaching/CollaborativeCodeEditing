initialize-release
initialize
	super initialize.
	
	self server: WebServer reset default.
	self sessions: Dictionary new.

	
	self initializeServices