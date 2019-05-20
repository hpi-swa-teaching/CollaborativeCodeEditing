initialize-release
initialize
	super initialize.
	
	self clientsMutex: Mutex new.
	self clients: OrderedCollection new