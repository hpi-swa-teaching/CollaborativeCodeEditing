initialize-release
initialize
	super initialize.
	
	SystemBrowser default: CCEBrowser.
	
	self createSessionModel: CCECreateSessionModel new;	
		account: CCEAccount default;
		client: CCEClient default;
		session: CCESession default;
		sessionSetUp;
		clientSetUp