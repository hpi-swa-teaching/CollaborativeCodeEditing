building
buildNextButton: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Next';
		action: #actionNextButton;
		frame: (LayoutFrame new
			topFraction: 0.9;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 1;
			yourself);
		yourself