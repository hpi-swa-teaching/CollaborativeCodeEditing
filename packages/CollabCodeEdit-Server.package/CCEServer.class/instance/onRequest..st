request handling
onRequest: aWebRequest
	| remoteClient |

	remoteClient := CCERemoteClient newFromSocket: aWebRequest asWebSocket.
	remoteClient
		timeout: self class defaultTimeOut;
		onMessage: [ :data | self onMessage: data from: remoteClient ];
		onClose: [ self onClose: remoteClient ];
		onError: [ :error | self onError: error from: remoteClient ].

	self addClient: remoteClient.
	remoteClient run