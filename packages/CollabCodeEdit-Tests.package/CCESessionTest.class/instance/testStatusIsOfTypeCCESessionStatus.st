test singleton
testStatusIsOfTypeCCESessionStatus
	self assert: (CCESession default status isKindOf: CCESessionStatus)