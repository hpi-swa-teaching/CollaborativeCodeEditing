tests
testUpdateSelectionFillsCCESelectionWithCorrectSelectionSymbols
	| expectedMessage |	
	
	cceSelection updateSelectionWith: browser.
	
	expectedMessage := CCEMessage changeSelectionWith: ( OrderedDictionary newFrom: {
		#id -> imageAccount humanReadableName .
		#selection -> cceSelection } ).
	
	
	self assert: ( ( networkInterface singleMessage payload at: #selection ) = cceSelection ).
	
	networkInterface clear.
	