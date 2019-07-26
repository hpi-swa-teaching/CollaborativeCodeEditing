initialize-release
initialize
	super initialize.
	
	self 
	    createSessionModel: CCECreateSessionModel new;	
		account: CCEAccount new;
		client: CCEClient default;
		session: CCESession default;
		sessionSetUp;
		clientSetUp