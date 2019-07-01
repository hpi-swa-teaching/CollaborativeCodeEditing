as yet unclassified
sessionIsLoaded
	| sessionStatus | 
	
	sessionStatus := self session getStatus.
	^ (sessionStatus = CCESessionStatus cleanRemoteSession) or: 
		[ sessionStatus = CCESessionStatus dirtyRemoteSession ]