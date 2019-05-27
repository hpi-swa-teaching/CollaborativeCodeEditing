building
buildNextButton: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Next';
		action: #actionNextButton;
		frame: (LayoutFrame new
				topFraction: 0.5;
				bottomFraction: 1;
				leftFraction: 0;
				rightFraction: 1);
		yourself.