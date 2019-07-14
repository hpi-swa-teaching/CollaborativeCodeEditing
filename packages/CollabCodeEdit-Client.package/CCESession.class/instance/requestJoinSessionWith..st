request-sending
requestJoinSessionWith: aTokenString
	self client sendMessage: 
		(CCEMessage joinSession: aTokenString withIdentifier: CCEAccount default humanReadableName).
	self status setToNoRemoteSession