running
setUp
	packageManager := CCEPackageManager default.
	testClass := Environment default classNamed: 'CCETestDummy'.
	session := CCESessionMock new