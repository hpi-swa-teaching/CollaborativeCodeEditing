testing
testSetConsistentSendsSetOtherUserConsistentToOtherClientsInSession	
	| token |
	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	token := client1 session token.
	
	server CCEjoinSession: ( OrderedDictionary newFrom: { #token -> token. #id -> client2 identifier }) from: client2.
	server onMessage: ( CCEMessage setConsistent: { #isConsistent -> true }) serialize from: client2.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMessageTypes at: #setOtherUserConsistent:))