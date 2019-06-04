test-initialize
testNetMessageTransmissionViaExampleMessage
	| testMessage | 
		
	"technically this tests more than just the message transmission. For now this works, but this should be refactored some time"
	
	testMessage := CCEMessage createSessionWith: (OrderedDictionary newFrom: {#checksum -> 12345 . #scope -> #('Signals')}).
	
	client send: testMessage serialize.
	
	(Delay forMilliseconds: 100) wait.	
	
	self assert: 1 equals: server sessions size