building
buildSessionCollaboratorsDisplayWith: aBuilder
	^ aBuilder pluggableListSpec new 
		model: CCESession default;
		list: #collaborators;
		frame:  (LayoutFrame new
				topFraction: 0.4;
				bottomFraction: 0.6;
				leftFraction: 0;
				rightFraction: 1;
				yourself)