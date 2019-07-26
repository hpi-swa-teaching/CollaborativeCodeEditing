building
buildServerConnectionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new 
		model: self client clientUI;
		label: #statusAction;
		changeLabelWhen: #statusAction:;
		action: #toggleClientConnection;
		enabled: #noRemoteSessionIsLoaded;
		frame: (LayoutFrame new
			topFraction: 0.90;
			bottomFraction: 0.95;
			leftFraction: 0;
			rightFraction: 0.33;
			yourself);
		yourself