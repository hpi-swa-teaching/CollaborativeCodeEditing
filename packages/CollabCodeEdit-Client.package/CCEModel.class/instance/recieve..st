backend calls
recieve: someData
	| message | 
	
	message := [ (CCEMessage deserialize: someData) ] ifError: [
		Transcript cr; show: 'Invalid message: ', someData.
		^ self ].
	
	[ self perform: ((CCEMessage prefix, message type) asSymbol) with: (message payload)] ifError: [
		]