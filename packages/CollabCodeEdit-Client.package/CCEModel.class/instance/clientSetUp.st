initialize-release
clientSetUp
	self client 
		addStatusSubscriber: self;
		owner: self.
	self client ui session: self session