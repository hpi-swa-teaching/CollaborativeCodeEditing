request-sending
requestLeaveSession
	| message | 
	
	message := CCEMessage leaveSessionWith: self token.
	self client sendMsg: message.