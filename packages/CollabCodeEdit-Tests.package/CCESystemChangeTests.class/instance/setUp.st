running
setUp
	packageManager := CCEPackageManager default.
	session := CCESession default.
	session 
		scope: self sessionScope;
		client: CCEClientMock new.
	testClass :=  CCETestDummy.
	testMethod := #testMethod