building
buildLeaveSessionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new 
		model: self;
		enabled: false;
		label: 'Leave Session';
		action: #actionLeaveSession;
		frame:  (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.1;
				leftFraction: 0.66;
				rightFraction: 1;
				yourself)