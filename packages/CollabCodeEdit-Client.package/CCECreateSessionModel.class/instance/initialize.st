initialize-release
initialize
	super initialize.

	self packagesList: OrderedCollection new.
	self selectedPackagesList:  OrderedCollection new