request-sending
requestJoinSessionWith: aTokenString
	| message | 
	
	message := CCEMessage joinSession: aTokenString withIdentifier: CCEAccount default humanReadableName.	
	self halt.
	self client sendMsg: message.
	
	self status setToNoRemoteSession