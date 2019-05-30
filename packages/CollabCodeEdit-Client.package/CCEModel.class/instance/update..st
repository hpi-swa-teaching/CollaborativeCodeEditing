requests backend
update: aStatus
	(aStatus name = CCESessionStatus cleanRemoteSession) ifTrue: [			
			self disableButtonsWithLabels: (Array newFrom: {CCEModel joinButtonLabel . CCEModel createButtonLabel}).
			self enableButtonsWithLabels: (Array newFrom: {CCEModel leaveButtonLabel})].
	(aStatus name = CCESessionStatus noRemoteSession) ifTrue: [
			self disableButtonsWithLabels: (Array newFrom: {CCEModel leaveButtonLabel }).
			self enableButtonsWithLabels: (Array newFrom: {CCEModel joinButtonLabel . CCEModel createButtonLabel})]