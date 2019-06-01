request-sending
publishSession
	| message | 
	
	message := CCEMessage createSessionWith: self createSessionPayload.	
	self client sendMsg: message.
	self status setToNoRemoteSession