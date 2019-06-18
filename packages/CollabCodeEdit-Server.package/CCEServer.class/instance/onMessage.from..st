event handling
onMessage: someData from: aClient
	| message |
	
	message := [ (CCEMessage deserialize: someData) ] ifError: [
		Transcript cr; show: 'Invalid message: ', someData.
		^ self ].
	
	[ self perform: ((CCEMessage prefix , message type) asSymbol) 
					with: (message payload) with: aClient ]
			ifError: [ :ex :rcvr |
					Transcript cr; show: 'Error handling message: ', ex.]