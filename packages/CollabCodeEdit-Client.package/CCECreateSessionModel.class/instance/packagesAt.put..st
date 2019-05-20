accessing-packages
packagesAt: anInteger put: aBoolean

	self selectedPackagesList: (self selectedPackagesList
									perform: (aBoolean ifTrue: [#copyWith:] ifFalse: [#copyWithout:]) 
									with: (self packagesList at: anInteger ifAbsent: [^ self])).
	self changed: #selectedPackagesList.