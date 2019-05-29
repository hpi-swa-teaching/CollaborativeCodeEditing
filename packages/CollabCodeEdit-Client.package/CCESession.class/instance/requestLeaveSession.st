request-sending
requestLeaveSession
	| message | 
	
	message := CCEMessage leaveSession.	
	self client sendMsg: message.