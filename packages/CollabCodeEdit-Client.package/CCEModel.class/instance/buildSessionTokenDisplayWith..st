building
buildSessionTokenDisplayWith: aBuilder
	^ aBuilder pluggableTextSpec new 
		model: self session;
		getText: #token;
		readOnly: true;
		frame: (LayoutFrame new
			topFraction: 0.1;
			bottomFraction: 0.15;
			leftFraction: 0;
			rightFraction: 1;
			yourself)