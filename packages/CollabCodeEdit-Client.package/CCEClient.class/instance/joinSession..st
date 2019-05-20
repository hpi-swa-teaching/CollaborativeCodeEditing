request sending
joinSession: aSessionToken
	self sendMsg: (CCEMessage joinSession: aSessionToken)