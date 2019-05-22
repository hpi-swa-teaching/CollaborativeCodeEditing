as yet unclassified
recieve: someData
	| message | 
	
	message := [ (CCEMessage deserialize: someData) ] ifError: [
		Transcript cr; show: 'Invalid message: ', someData.
		^ self ].
	
	[ self perform: (message type) with: (message payload)] ifError: [
		]