initialize
initialize
	super initialize.
	self createSessionModel: CCECreateSessionModel new.
	self joinSessionModel: CCEJoinSessionModel new.
	self leaveSessionModel: CCELeaveSessionModel new.
	self client: (CCEClient default owner: self).
	self session: (CCESession default client: self client).
	self session addStatusSubscriber: self.
	"CCEClient default connected ifFalse: [CCEClient default start]."