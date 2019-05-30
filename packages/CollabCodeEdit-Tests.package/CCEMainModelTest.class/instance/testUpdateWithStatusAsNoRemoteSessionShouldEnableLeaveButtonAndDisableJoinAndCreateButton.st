tests backend
testUpdateWithStatusAsNoRemoteSessionShouldEnableLeaveButtonAndDisableJoinAndCreateButton
	
	model enableButtonsWithLabels: (Array newFrom: {CCEModel joinButtonLabel . CCEModel createButtonLabel}).
	model disableButtonsWithLabels: (Array newFrom: {CCEModel leaveButtonLabel}).
	
	model update: CCESessionStatus new setToCleanRemoteSession.
	
	self deny: (model buttonWithLabel: CCEModel createButtonLabel) enabled.
	self deny: (model buttonWithLabel: CCEModel joinButtonLabel) enabled.
	self assert: (model buttonWithLabel: CCEModel leaveButtonLabel) enabled.