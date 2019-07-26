running
setUp
	super setUp.
	client := CCEClientMock new.
	packageManager listenForChangesInScope: sessionScope for: client