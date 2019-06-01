building
buildPackagesList: aBuilder
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #packagesList;
		getIndex: #packagesSelected;
		setIndex: #packagesSelected:;
		getSelectionList: #packagesAt:;
		setSelectionList: #packagesAt:put:;
		frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.9;
				leftFraction: 0;
				rightFraction: 1);
		yourself