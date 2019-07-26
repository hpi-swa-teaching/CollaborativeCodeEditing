initialize-release
initialize
	super initialize.
	self createSessionModel: CCECreateSessionModel new;
		account: CCEAccount default;
		joinSessionModel: CCEJoinSessionModel new;
		leaveSessionModel: CCELeaveSessionModel new;
		client: (CCEClient default 
				model: self;
				yourself);
		session: (CCESession default 
				client: self client;
				yourself).
	self session 
		addStatusSubscriber: self;
		localAccount: self account
