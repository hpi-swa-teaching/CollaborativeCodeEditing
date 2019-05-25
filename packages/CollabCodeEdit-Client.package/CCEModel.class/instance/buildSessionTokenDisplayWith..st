building
buildSessionTokenDisplayWith: aBuilder
	^ aBuilder pluggableTextSpec new 
		model: CCESession default;
		editText: #token;
		frame:  (LayoutFrame new
				topFraction: 0.1;
				bottomFraction: 0.2;
				leftFraction: 0;
				rightFraction: 1;
				yourself)