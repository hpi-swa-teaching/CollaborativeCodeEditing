running
setUp
	super setUp.
	session := CCESessionMock new.
	packageManager listenForChangesOnScope: self sessionScope for: session