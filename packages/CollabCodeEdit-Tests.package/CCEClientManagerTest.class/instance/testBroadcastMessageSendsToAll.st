tests
testBroadcastMessageSendsToAll
	| aCCEMessage |

	aCCEMessage := CCEMessage new type: 'TEST_TYPE';
		payload: 'TEST_PAYLOAD'; 
		yourself.

	clientManager broadcastMessage: aCCEMessage.
	clients do: [ :client | self assert: (client hasMessage: aCCEMessage) ]