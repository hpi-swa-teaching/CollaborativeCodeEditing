actions
checkCCEOnline
	^ CCEServer currentInstance
		ifNil: [ 'The server is currently down.' ]
		ifNotNil: [ 'The server is up and running.' ]