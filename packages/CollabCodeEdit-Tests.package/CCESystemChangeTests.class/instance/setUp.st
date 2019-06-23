running
setUp
	packageManager := CCEPackageManager default.
	packageManager scope: self sessionScope.
	testClass :=  CCETestDummy.
	testMethod := #testMethod