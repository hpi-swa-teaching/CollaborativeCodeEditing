testing
testSetNameSetsNameForremoteClient
	| setNameMessage |
	
	setNameMessage := CCEMessage setClientName: 'testName'.
	
	server onMessage: setNameMessage serialize from: client1.
	
	self assert: 'testName' equals: server clients first identifier.