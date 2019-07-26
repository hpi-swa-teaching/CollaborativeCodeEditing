tests
testUpdateSelectionTriggersChangeSelectionMessage
	cceSelection updateSelectionWith: browser.
	self assert: ( networkInterface hasMessageOfType: ( CCEMessage clientMsgTypes at: #changeSelection:from: ) )