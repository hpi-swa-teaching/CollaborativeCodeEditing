tests
testBecomeDependentOfNewCCEBrowser
	| browser |
	
	browser := CCEBrowser new.
	self assert: (browser dependents includes: selectionListener)
	
	