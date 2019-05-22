connection-managment
publishSession
	| message | 
	
	message := CCEMessage createSessionWith: self createSessionPayload.	
	CCEClient default sendMsg: message.