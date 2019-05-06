test-initialize
testServerStartUpSessionSeedRandomization

	| sessionSeed |
	
	sessionSeed := 0.
	
	10 timesRepeat: [
		server := CCEServer new start.
		
		self deny: sessionSeed = server sessionSeed.
		sessionSeed := server sessionSeed.
		
		server breakdown].
	
	
	
	