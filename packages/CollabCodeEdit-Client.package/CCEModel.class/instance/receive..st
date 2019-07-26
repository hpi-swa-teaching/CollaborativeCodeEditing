requests backend
receive: someData
	| message | 
	
	message := [ (CCEMessage deserialize: someData) ] 
		ifError: [ ^ self error: 'Invalid Message' ].
	message payload at: #error
		ifPresent: [ self error: 'Error message from Server' ].

	self perform: ((CCEMessage prefix, message type) asSymbol) with: (message payload)