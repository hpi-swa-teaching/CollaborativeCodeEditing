request handling
onRequest: aWebRequest
	| remoteClient |

	remoteClient := CCERemoteClient newFromSocket: aWebRequest asWebSocket.
	remoteClient
		timeout: CCEServer defaultTimeOut;
		onMessage: [ :data | self onMessage: data from: remoteClient ];
		onClose: [ self onClose: remoteClient ];
		onError: [ :ex | self onError: ex from: remoteClient ].

	self addClient: remoteClient.

	"We don't need to #fork here, in fact we shouldn't since it ensures
	that shutting down WebServer shuts down any WebSockets, too."
	remoteClient run