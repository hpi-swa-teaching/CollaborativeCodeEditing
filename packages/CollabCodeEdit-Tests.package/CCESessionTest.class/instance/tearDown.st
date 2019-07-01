running
tearDown
	clientMock clear.
	session selectionListener stop.
	session selectionListener: nil