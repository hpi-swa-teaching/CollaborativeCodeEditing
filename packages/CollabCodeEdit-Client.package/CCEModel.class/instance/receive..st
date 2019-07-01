requests backend
receive: someData
	| message | 
	
	message := [ (CCEMessage deserialize: someData) ] ifError: [
		Transcript cr; show: 'Invalid message: ', someData.
		^ self ].
	
	Transcript show: 'client recieve :', message serialize; cr.
	
	self perform: ((CCEMessage prefix, message type) asSymbol) with: (message payload)