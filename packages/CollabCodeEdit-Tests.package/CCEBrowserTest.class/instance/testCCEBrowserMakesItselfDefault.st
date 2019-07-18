tests
testCCEBrowserMakesItselfDefault
	SystemBrowser default: SystemBrowser.
	CCEBrowser initialize.
	self assert: SystemBrowser default equals: CCEBrowser