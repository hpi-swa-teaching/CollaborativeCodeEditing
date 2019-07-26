request handling
onError: anException from: aCCERemoteClient
	Transcript cr; show: aCCERemoteClient.
	Transcript cr; show: anException description.
	Transcript cr; show: anException signalerContext longStack