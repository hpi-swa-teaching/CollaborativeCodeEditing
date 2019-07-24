building
buildJoinSessionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new 
			model: self;
			label: self class joinButtonLabel;
			action: #actionJoinSession;
			enabled: #noSessionIsLoaded;
			frame:  (LayoutFrame new
					topFraction: 0;
					bottomFraction: 0.1;
					leftFraction: 0.33;
					rightFraction: 0.66;
					yourself)