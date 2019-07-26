running
setUp
	sessionScope := #( 'CollabCodeEdit-Tests' ).
	packageManager := CCEPackageManager new.
	session := CCESession new.
	session 
		scope: sessionScope;
		client: CCEClientMock new.
	testClass :=  CCETestDummy.
	testMethod := #testMethodNotify