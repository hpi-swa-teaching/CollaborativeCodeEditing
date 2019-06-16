tests
testBroadcastMessageWithoutSendsToAllExceptOne
	| aCCEMessage |
	aCCEMessage := CCEMessage new.
	aCCEMessage type: 'TEST_TYPE';
					payload: 'TEST_PAYLOAD'.
									
	clientManager broadcastMessage: aCCEMessage without: clients first.
	
	clients do: [ :client | self assert: (client hasMessage: aCCEMessage)] without: clients first.
	self assert: clients first hasNoMessage.