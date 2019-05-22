connection-managment
requestJoinSessionWith: aTokenString
	| message | 
	
	message := CCEMessage joinSession: aTokenString.	
	CCEClient default sendMsg: message.