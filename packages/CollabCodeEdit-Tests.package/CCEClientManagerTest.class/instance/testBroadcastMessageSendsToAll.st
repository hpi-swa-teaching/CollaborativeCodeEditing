as yet unclassified
testBroadcastMessageSendsToAll
	| aCCEMessage |
	aCCEMessage := CCEMessage new.
	aCCEMessage type: 'TEST_TYPE';
					payload: 'TEST_PAYLOAD'.
					
	clientManager broadcastMessage: aCCEMessage.
	
	clients do: [ :client | self assert: (client hasMessage: aCCEMessage)]