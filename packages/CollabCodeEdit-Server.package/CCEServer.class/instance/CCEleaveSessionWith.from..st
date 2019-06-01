request handling
CCEleaveSessionWith: anOrderedDictionary from: aClient
	
	((anOrderedDictionary at: #token) = aClient session token) 
		ifTrue: [
			aClient session removeClient: aClient. 	
			aClient sendMsg: (CCEMessage ackLeaveSessionWith: anOrderedDictionary) ]
		ifFalse: [
			aClient sendMsg: (CCEMessage ackLeaveSessionWithError: {#error -> 'Invalid session token'}) ]
	