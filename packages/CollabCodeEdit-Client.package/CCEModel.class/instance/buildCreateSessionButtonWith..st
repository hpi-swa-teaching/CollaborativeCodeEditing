building
buildCreateSessionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: CCEModel createButtonLabel;
		action: #actionCreateSession;
		frame:  (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.1;
				leftFraction: 0;
				rightFraction: 0.33;
				yourself)