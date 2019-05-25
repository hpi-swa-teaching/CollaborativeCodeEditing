request-sending
requestJoinSessionWith: aTokenString
	| message | 
	
	message := CCEMessage joinSession: aTokenString.	
	self client sendMsg: message.