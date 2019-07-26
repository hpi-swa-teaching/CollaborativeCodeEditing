tests
testUpdateSelectionTriggersChangeSelectionMessage
	| expectedMessage |
	
	expectedMessage := CCEMessage changeSelectionWith: ( OrderedDictionary newFrom: {
		#id -> imageAccount humanReadableName .
		#selection -> cceSelection } ).
	
	cceSelection updateSelectionWith: browser.
	
	self assert: (networkInterface hasMessageOfType: #changeSelection:from:).
	
	networkInterface clear