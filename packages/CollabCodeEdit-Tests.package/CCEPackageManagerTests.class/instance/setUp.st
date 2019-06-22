running
setUp
	session := CCESessionMock new.
	packageManager := CCEPackageManager default.
	packageManager listenForChangesOnScope: self sessionScope for: session.
	testClass := CCETestDummy