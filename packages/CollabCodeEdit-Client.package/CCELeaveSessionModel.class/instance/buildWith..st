building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: self class defaultLabel;
		extent: self class defaultExtent;
		children: { self buildLeaveButtonWith: aBuilder . self buildCancelButtonWith: aBuilder};
		yourself).
		