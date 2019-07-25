actions
CCEleaveSessionWith: anOrderedDictionary from: aCCERemoteClient
	((anOrderedDictionary at: #token) = aCCERemoteClient session token) 
		ifTrue: [
			aCCERemoteClient session handleDeleteUser: aCCERemoteClient.	
			aCCERemoteClient sendMessage:
				(CCEMessage ackLeaveSessionWith: anOrderedDictionary) ]
		ifFalse: [
			aCCERemoteClient sendMessage:
				(CCEMessage ackLeaveSessionWithError: {#error -> 'Invalid session token'}) ]