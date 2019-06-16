request-sending
publishSession
	| message | 
	
	message := CCEMessage createSessionWith: self createSessionPayload.	
	self client sendMessage: message.
	self status setToNoRemoteSession