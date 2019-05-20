request sending
joinSession: aSessionToken
	self sendMsg: (CCEMessage
		new: #JOIN_SESSION
		with: { #token -> aSessionToken })