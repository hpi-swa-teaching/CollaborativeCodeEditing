request handling
CCEleaveSessionWith: aCCEMessage from: aClient

	aClient session removeClient: aClient. 	
	aClient sendMsg: (CCEMessage ackLeaveSessionWith: aCCEMessage payload).