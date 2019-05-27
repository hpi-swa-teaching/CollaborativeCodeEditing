building
buildGlobalStateAccountDisplayWith: aBuilder
	^ aBuilder pluggableTextSpec new 
		model: CCEAccount default;
		editText: #humanReadableName:;
		getText: #humanReadableName;
		frame:  (LayoutFrame new
				topFraction: 0.95;
				bottomFraction: 1;
				leftFraction: 0;
				rightFraction: 1;
				yourself)