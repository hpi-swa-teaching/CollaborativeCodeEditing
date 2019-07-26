initialize-release
sessionSetUp
	self
		session 
		client: self client;
		addStatusSubscriber: self;
		addStatusSubscriber: self client clientUI;
		localAccount: self account.
		
	self session status setToNoRemoteSession
