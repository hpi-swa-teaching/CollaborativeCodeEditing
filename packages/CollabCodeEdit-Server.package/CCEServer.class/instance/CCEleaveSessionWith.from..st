request handling
CCEleaveSessionWith: anOrderedDictionary from: aClient
	
	((anOrderedDictionary at: #token) = aClient session token) 
		ifTrue: [
			aClient session handleDeleteUser: aClient.	
			aClient sendMessage: (CCEMessage ackLeaveSessionWith: anOrderedDictionary) ]
		ifFalse: [
			aClient sendMessage: (CCEMessage ackLeaveSessionWithError: {#error -> 'Invalid session token'}) ]
	