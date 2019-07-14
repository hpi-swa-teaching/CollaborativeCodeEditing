testing
sessionIsLoaded
	| sessionStatus | 
	
	sessionStatus := self session getStatus.
	^ (sessionStatus = CCESessionStatus cleanRemoteSession) or: 
		[ sessionStatus = CCESessionStatus dirtyRemoteSession ]