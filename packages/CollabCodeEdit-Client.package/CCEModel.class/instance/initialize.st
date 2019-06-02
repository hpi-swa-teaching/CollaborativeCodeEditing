initialize-release
initialize
	super initialize.
	self createSessionModel: CCECreateSessionModel new.
	self account: CCEAccount default. 
	self joinSessionModel: CCEJoinSessionModel new