building
buildWith: aBuilder
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: self class defaultLabel;
		extent: self class defaultExtent;
		children: { self buildPackagesList: aBuilder . self buildNextButton: aBuilder };
		yourself)