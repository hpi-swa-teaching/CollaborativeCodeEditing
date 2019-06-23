running
setUp
	super setUp.
	session := CCESessionMock new.
	session scope: self sessionScope.
	packageManager listenForChangesFor: session