request sending
createSession
	self sendMsg: (CCEMessage new: #CREATE_SESSION with: nil)