initialize-release
sessionSetUp
	self session 
		client: self client;
		addStatusSubscriber: self;
		addStatusSubscriber: self client ui;
		imageAccount: self account.
		
	self session status setToNoRemoteSession
