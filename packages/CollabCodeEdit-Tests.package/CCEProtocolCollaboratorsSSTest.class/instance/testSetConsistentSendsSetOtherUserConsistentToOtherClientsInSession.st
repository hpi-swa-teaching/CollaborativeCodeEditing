testing
testSetConsistentSendsSetOtherUserConsistentToOtherClientsInSession	
	| token setConsistentMessage joinPayloadForClient2 joinPayloadForClient3 |
	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	token := client1 session token.
	joinPayloadForClient2 := OrderedDictionary newFrom: { #token -> token. #id -> client2 identifier }.
	joinPayloadForClient3 := OrderedDictionary newFrom: { #token -> token. #id -> client3 identifier }.
	setConsistentMessage := CCEMessage setConsistent: { #isConsistent -> true }.
	
	server CCEjoinSession: joinPayloadForClient2 from: client2.
	
	server onMessage: setConsistentMessage serialize from: client2.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:)).
	
	networkInterface1 clear.
	networkInterface2 clear.
	
	server CCEjoinSession: joinPayloadForClient3 from: client3.
	
	server onMessage: setConsistentMessage serialize from: client3.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:)).
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:))