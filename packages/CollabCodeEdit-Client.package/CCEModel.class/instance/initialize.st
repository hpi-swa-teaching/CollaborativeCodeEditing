initialize
initialize
	super initialize.
	self createSessionModel: CCECreateSessionModel new.
	self joinSessionModel: CCEJoinSessionModel new.
	"CCEClient default connected ifFalse: [CCEClient default start]."