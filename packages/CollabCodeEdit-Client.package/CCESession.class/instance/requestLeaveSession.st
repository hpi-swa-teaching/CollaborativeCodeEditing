request-sending
requestLeaveSession
	self client sendMessage: (CCEMessage leaveSessionWith: self token)