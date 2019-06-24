building
buildSessionCollaboratorsDisplayWith: aBuilder
	^ aBuilder pluggableListSpec new 
		model: self session;
		list: #collaboratorsList;
		frame:  (LayoutFrame new
				topFraction: 0.4;
				bottomFraction: 0.6;
				leftFraction: 0;
				rightFraction: 1;
				yourself)