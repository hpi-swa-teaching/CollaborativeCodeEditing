tests
testUpdateSelectionFillsCCESelectionWithCorrectSelectionSymbols
	| expectedMessage |	
	
	cceSelection updateSelectionWith: browser.
	
	expectedMessage := CCEMessage changeSelectionWith: ( OrderedDictionary newFrom: {
		#id -> imageAccount humanReadableName .
		#selection -> ( OrderedDictionary newFrom: {
			#categorySelection -> cceSelection categorySelection .
			#classSelection -> cceSelection classSelection .
			#methodSelection -> cceSelection methodSelection}) } ).
	
	
	self assert: (  ( networkInterface singleMessage payload at: #selection) = ( expectedMessage payload at: #selection ) ).
	
	networkInterface clear