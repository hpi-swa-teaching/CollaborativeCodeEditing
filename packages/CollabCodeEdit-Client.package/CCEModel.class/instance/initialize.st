initialize
initialize
	super initialize.
	
	self createSessionModel: CCECreateSessionModel new.
	self joinSessionModel: CCEJoinSessionModel new.
	self leaveSessionModel: CCELeaveSessionModel new.
	
	self client: (CCEClient default owner: self).
	self imageAccount: (CCEAccount default).
	
	self session: (CCESession default 
			client: self client;
			imageAccount: self imageAccount).			
	self session addStatusSubscriber: self.

	"CCEClient default connected ifFalse: [CCEClient default start]."