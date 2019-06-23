running
setUp
	packageManager := CCEPackageManager default.
	session := CCESession default.
	session 
		scope: self sessionScope;
		client: CCEClientMock new.
	packageManager session: session.
	testClass :=  CCETestDummy.
	testMethod := #testMethod