building
buildCreateSessionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Create Session';
		action: #actionCreateSession;
		frame:  (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.5;
				leftFraction: 0;
				rightFraction: 1;
				yourself)