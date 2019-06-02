building
buildSessionScopeDisplayWith: aBuilder
	^ aBuilder pluggableListSpec new 
		model: CCESession default;
		list: #scope;
		frame:  (LayoutFrame new
				topFraction: 0.15;
				bottomFraction: 0.4;
				leftFraction: 0;
				rightFraction: 1;
				yourself)