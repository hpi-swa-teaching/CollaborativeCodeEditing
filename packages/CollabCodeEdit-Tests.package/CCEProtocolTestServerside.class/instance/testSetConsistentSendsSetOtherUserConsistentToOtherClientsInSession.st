as yet unclassified
testSetConsistentSendsSetOtherUserConsistentToOtherClientsInSession	
	| joinPayload token setConsistentMessage|
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	token := client1 session token.
	joinPayload := OrderedDictionary newFrom: {#token -> token}.
	setConsistentMessage := CCEMessage setConsistent: {#isConsistent -> true}.
	
	server CCEjoinSession: joinPayload from: client2.
	
	server onMessage: setConsistentMessage serialize from: client2.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:)).
	
	networkInterface1 clear.
	networkInterface2 clear.
	
	
	server CCEjoinSession: joinPayload from: client3.
	
	server onMessage: setConsistentMessage serialize from: client3.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:)).
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:)).
	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.
	
	
	
	