building
buildServerAdressFieldWith: aBuilder
	^ aBuilder pluggableTextSpec new 
		model: self client clientUI;
		editText: #serverURI:;
		getText: #serverURI;
		color: #statusColor;
		frame: (LayoutFrame new
			topFraction: 0.90;
			bottomFraction: 0.95;
			leftFraction: 0.33;
			rightFraction: 1;
			yourself)