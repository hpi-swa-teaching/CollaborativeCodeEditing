request-sending
requestJoinSessionWith: aTokenString
	| message | 
	
	message := CCEMessage joinSession: aTokenString withIdentifier: CCEAccount default humanReadableName.	
	self client sendMessage: message.
	
	self status setToNoRemoteSession