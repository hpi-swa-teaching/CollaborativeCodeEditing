actions
actionNextButton
	self parentModel joinSessionWith: self sessionToken.
	^ self changed: #close.