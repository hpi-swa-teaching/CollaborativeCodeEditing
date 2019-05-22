event handling
onClose: aSocket
	Transcript cr; show: 'Closing ', aSocket.
	self removeClient: aSocket