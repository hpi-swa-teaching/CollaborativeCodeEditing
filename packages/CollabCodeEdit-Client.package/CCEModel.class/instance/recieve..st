requests backend
recieve: someData
	| message | 
	
	message := [ (CCEMessage deserialize: someData) ] ifError: [
		Transcript cr; show: 'Invalid message: ', someData.
		^ self ].
	
	Transcript show: message serialize asString; cr.
	
	[ self perform: ((CCEMessage prefix, message type) asSymbol) with: (message payload)] ifError: [
		]