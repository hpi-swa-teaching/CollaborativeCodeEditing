initialize-release
initialize
	super initialize.
	self createSessionModel: CCECreateSessionModel new.
	self account: CCEAccount default.
	self joinSessionModel: CCEJoinSessionModel new.
	self leaveSessionModel: CCELeaveSessionModel new.
	self client: (CCEClient default owner: self).
	self session: (CCESession default client: self client).
	self session addStatusSubscriber: self.
	self session imageAccount: self account.
