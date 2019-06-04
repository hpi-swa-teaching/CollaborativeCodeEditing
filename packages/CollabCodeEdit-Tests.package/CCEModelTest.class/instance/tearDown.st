running
tearDown
	model changed: #close.
	self newMorphs do: [:morph | morph model changed: #close].
	CCESession reset