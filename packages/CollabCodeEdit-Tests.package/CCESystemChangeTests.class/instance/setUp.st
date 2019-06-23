running
setUp
	packageManager := CCEPackageManager default.
	session := CCESession default.
	session scope: self sessionScope.
	packageManager session: session.
	testClass :=  CCETestDummy.
	testMethod := #testMethod