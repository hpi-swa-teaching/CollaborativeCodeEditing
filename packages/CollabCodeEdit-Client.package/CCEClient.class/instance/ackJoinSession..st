request sending
ackJoinSession: aSessionToken
	self sendMessage: (CCEMessage ackJoinSession: aSessionToken)