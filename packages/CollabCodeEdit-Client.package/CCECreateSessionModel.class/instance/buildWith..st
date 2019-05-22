building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: CCECreateSessionModel defaultLabel;
		extent: CCECreateSessionModel defaultExtent;
		children: { self buildPackagesList: aBuilder . self buildNextButton: aBuilder};
		yourself).
		