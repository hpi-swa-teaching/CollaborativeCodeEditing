building
buildCancelButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: CCELeaveSessionModel labelCancelButton;
		action: #actionCancelButton;
		frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 1;
				leftFraction: 0;
				rightFraction: 0.5);
		yourself.