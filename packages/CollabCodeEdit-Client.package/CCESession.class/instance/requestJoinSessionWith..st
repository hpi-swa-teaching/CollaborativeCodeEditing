request-sending
requestJoinSessionWith: aTokenString
	| message | 
	
	message := CCEMessage joinSession: aTokenString withIdentifier: CCEAccount default humanReadableName.	
	self client sendMsg: message.
	
	self status setToNoRemoteSession