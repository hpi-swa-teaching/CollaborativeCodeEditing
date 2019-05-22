event handling
onError: anException from: aSocket
	Transcript cr; show: aSocket.
	Transcript cr; show: anException description.
	Transcript cr; show: anException signalerContext longStack