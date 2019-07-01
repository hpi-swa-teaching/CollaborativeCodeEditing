building
buildServerConnectionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new 
			model: self;
			label: CCEModel serverConnectButtonLabel;
			action: #actionServerConnect;
			enabled: true;
			frame:  (LayoutFrame new
					topFraction: 0.90;
					bottomFraction: 0.95;
					leftFraction: 0;
					rightFraction: 1;
					yourself)