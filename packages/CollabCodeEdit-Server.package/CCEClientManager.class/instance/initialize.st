initialize-release
initialize
	super initialize.
	
	self
		clientsMutex: Mutex new;
		clients: OrderedCollection new