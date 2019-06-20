event handling
onRequest: aRequest
	| socket |

	socket := CCERemoteClient newFromSocket: aRequest asWebSocket.
	socket timeout: CCEServer defaultTimeOut.

	Transcript cr; show: 'New ', socket.

	socket onMessage: [ :data | self onMessage: data from: socket ].
	socket onClose: [ self onClose: socket ].
	socket onError:[ :ex | self onError: ex from: socket ].

	self addClient: socket.

	"We don't need to #fork here, in fact we shouldn't since it ensures
	that shutting down WebServer shuts down any WebSockets, too."
	socket run