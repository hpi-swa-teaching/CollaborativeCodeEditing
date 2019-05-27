building
buildLeaveButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: CCELeaveSessionModel labelLeaveButton;
		action: #actionLeaveButton;
		frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 1;
				leftFraction: 0.5;
				rightFraction: 1);
		yourself.