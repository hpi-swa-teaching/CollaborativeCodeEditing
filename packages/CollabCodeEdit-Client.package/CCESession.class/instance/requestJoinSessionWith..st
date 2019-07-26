request-sending
requestJoinSessionWith: aTokenString
	self client sendMessage: 
		(CCEMessage 
			joinSession: aTokenString 
			withIdentifier: CCEAccount new humanReadableName).
	self status setToNoRemoteSession