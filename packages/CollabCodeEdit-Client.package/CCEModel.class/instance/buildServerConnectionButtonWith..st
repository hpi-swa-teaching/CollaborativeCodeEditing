building
buildServerConnectionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new 
			model: self client;
			label: CCEModel serverConnectButtonLabel;
			action: #start;
			enabled: true;
			frame:  (LayoutFrame new
					topFraction: 0.90;
					bottomFraction: 0.95;
					leftFraction: 0;
					rightFraction: 0.33;
					yourself)