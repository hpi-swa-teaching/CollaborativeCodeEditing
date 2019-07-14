user interaction
toggleClientConnection
	self client connected ifFalse: [ self client start ] ifTrue: [ self client breakdown ]