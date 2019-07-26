tests
testNewCallsChanged
	| browser |
	
	CCEBrowser addDependent: self.
	browser := CCEBrowser new.
	
	self assert: (browser isKindOf: Browser).
	self assert: updatedBy equals: CCEBrowser