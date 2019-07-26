requests backend
receive: someData
	| message | 
	
	message := [ (CCEMessage deserialize: someData) ] 
		ifError: [ ^ self error: 'Invalid Message' ].
	self perform: ((CCEMessage prefix, message type) asSymbol) with: (message payload)