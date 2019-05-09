building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: CCEModel defaultApplicationLabel;
		extent: CCEModel defaultApplicationExtent;
		children: (self buildButtonsWith: aBuilder);
		yourself)