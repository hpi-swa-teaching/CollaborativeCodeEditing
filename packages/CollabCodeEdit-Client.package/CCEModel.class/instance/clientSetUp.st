initialize-release
clientSetUp
	self client 
		addStatusSubscriber: self;
		model: self.
	self client clientUI session: self session