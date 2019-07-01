initialize-release
initialize
	super initialize.
	SystemBrowser default: CCEBrowser.
	self createSessionModel: CCECreateSessionModel new;
		account: CCEAccount default;
		joinSessionModel: CCEJoinSessionModel new;
		leaveSessionModel: CCELeaveSessionModel new;
		client: (CCEClient default owner: self);
		session: (CCESession default client: self client).
	self session 
		addStatusSubscriber: self;
		imageAccount: self account
