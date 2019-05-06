test-initialize
testClientServerStartUp

	|  server client |
	
	server := CCEServer new start.
	client := CCEClient new startTestClientToLocalhost.
	
	self assert: server clients size  = 1.
	
	server breakdown.
	client breakdown.