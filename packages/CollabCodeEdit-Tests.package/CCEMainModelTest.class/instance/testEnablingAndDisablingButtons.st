tests backend
testEnablingAndDisablingButtons

	model enableButtonsWithLabels: #(CCEModel createSessionLabel, CCEModel joinSessionLabel, CCEModel leaveSessionLabel).
	
	self assert: (model buttonWithLabel: (CCEModel createButtonLabel)) enabled.
	self assert: (model buttonWithLabel: (CCEModel joinButtonLabel)) enabled.
	self assert: (model buttonWithLabel: (CCEModel leaveButtonLabel)) enabled.
	
	model disableButtonsWithLabels: #(CCEModel createSessionLabel, CCEModel joinSessionLabel, CCEModel leaveSessionLabel).
	
	self deny: (model buttonWithLabel: (CCEModel createButtonLabel)) enabled.
	self deny: (model buttonWithLabel: (CCEModel joinButtonLabel)) enabled.
	self deny: (model buttonWithLabel: (CCEModel leaveButtonLabel)) enabled.