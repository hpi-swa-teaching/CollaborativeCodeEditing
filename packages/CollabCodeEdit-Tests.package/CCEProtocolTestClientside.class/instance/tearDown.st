running
tearDown
	session reset.
	session selectionListener stop.
	session selectionListener: nil.
	self subClassSpecificTearDown