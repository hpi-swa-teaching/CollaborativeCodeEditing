actions
actionNextButton
	self parentModel createSessionWith: self selectedPackagesList.
	^ self changed: #close