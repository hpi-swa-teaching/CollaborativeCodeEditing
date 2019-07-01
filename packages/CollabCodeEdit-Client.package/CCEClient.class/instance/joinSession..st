request sending
joinSession: aSessionToken
	self sendMessage: (CCEMessage joinSession: aSessionToken)