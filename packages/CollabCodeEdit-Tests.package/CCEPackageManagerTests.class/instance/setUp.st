running
setUp
	session := CCESessionMock new.
	packageManager listenForChangesOnScope: self sessionScope for: session