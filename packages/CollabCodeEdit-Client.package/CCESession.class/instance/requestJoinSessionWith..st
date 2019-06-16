request-sending
requestJoinSessionWith: aTokenString
	| message | 
	
	message := CCEMessage joinSession: aTokenString.	
	self client sendMessage: message.
	
	self status setToNoRemoteSession