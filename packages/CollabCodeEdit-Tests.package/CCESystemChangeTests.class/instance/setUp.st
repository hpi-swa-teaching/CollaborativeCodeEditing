running
setUp
	packageManager := CCEEditManager new.
	session := CCESession new.
	session 
		scope: self sessionScope;
		client: CCEClientMock new.
	testClass :=  CCETestDummy.
	testMethod := #testMethodNotify