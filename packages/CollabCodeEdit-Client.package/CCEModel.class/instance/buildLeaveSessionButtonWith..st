building
buildLeaveSessionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: CCEModel leaveButtonLabel;
		action: #actionLeaveSession;
		enabled: #serverConnectionAndRemoteSession;
		frame:  (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.1;
				leftFraction: 0.66;
				rightFraction: 1;
				yourself)