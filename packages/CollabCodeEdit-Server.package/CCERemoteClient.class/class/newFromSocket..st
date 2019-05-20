instance creation
newFromSocket: aSocket
	^ self new
		socket: aSocket;
		yourself