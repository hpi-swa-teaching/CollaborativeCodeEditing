startup
startConnectionTo: aURIString
	self socket: (WebClient webSocketTo: aURIString).
	self socket
		onMessage: [ :data | Transcript cr; show: data ];
		fork