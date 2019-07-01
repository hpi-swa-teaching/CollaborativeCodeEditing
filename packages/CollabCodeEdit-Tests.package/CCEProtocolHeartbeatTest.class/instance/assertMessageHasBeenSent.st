tests
assertMessageHasBeenSent
	self assert: ( networkInterface1 hasMessageOfType: #ackHeartbeat: ).
	
	networkInterface1 clear