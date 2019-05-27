building
buildTokenInputField: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		editText: #sessionToken:;
		frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.5;
				leftFraction: 0;
				rightFraction: 1);
		yourself.