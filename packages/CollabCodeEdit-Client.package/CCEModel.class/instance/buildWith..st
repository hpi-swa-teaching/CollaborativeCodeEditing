building
buildWith: aBuilder
	^ aBuilder build: (aBuilder pluggableWindowSpec new
			model: self;
			label: self class defaultApplicationLabel;
			extent: self class defaultApplicationExtent;
			children: (self buildChildrenWith: aBuilder);
			yourself)