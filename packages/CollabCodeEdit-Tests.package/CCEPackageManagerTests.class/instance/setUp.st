running
setUp
	super setUp.
	
	client := CCEClientMock new.
	packageManager listenForChangesInScope: self sessionScope for: client