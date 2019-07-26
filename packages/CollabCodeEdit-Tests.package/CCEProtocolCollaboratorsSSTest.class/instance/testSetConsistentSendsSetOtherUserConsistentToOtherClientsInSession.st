testing
testSetConsistentSendsSetOtherUserConsistentToOtherClientsInSession	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.

	server CCEjoinSession: (OrderedDictionary newFrom: { #token -> client1 session token. #id -> client2 identifier }) from: client2.
	server onMessage: (CCEMessage setConsistent: { #isConsistent -> true }) serialize from: client2.
	
	self assert: (networkInterface1 hasMessageOfType: #setOtherUserConsistent:)
