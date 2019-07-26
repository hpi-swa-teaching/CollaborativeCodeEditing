request-sending
requestJoinSessionWith: aTokenString
	self client sendMessage: 
		(CCEMessage 
			joinSession: aTokenString 
			withIdentifier: self localAccount humanReadableName).
	self status setToNoRemoteSession