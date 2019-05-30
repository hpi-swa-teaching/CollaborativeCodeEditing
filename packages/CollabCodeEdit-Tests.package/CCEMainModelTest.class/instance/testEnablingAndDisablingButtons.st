tests backend
testEnablingAndDisablingButtons

	model enableButtonsWithLabels: (Array newFrom: {CCEModel createButtonLabel . CCEModel joinButtonLabel . CCEModel leaveButtonLabel}).
	
	self assert: (model buttonWithLabel: (CCEModel createButtonLabel)) enabled.
	self assert: (model buttonWithLabel: (CCEModel joinButtonLabel)) enabled.
	self assert: (model buttonWithLabel: (CCEModel leaveButtonLabel)) enabled.
	
	model disableButtonsWithLabels:  (Array newFrom: {CCEModel createButtonLabel . CCEModel joinButtonLabel . CCEModel leaveButtonLabel}).
	
	self deny: (model buttonWithLabel: (CCEModel createButtonLabel)) enabled.
	self deny: (model buttonWithLabel: (CCEModel joinButtonLabel)) enabled.
	self deny: (model buttonWithLabel: (CCEModel leaveButtonLabel)) enabled.