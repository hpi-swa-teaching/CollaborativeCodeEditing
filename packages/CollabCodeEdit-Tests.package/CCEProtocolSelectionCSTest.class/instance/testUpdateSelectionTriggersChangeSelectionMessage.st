tests
testUpdateSelectionTriggersChangeSelectionMessage
	cceSelection updateSelectionWith: browser.
	self assert: (networkInterface hasMessageOfType:  #changeSelection:from:)