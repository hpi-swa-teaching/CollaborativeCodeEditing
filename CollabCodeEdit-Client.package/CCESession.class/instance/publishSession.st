as yet unclassified
publishSession
	| message | 
	
	message := CCEMessage createSessionWith: self createSessionPayload.	
	CCEClient default sendMsg: message.