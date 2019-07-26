running
setUp
	sessionScope := #( 'CollabCodeEdit-Tests' ).
	packageManager := CCEEditManager new.
	session := CCESession new.
	session 
		scope: sessionScope;
		client: CCEClientMock new.
	testClass :=  CCETestDummy.
	testMethod := #testMethodNotify