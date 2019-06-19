startup
startConnectionTo: aURIString
	self socket: (WebClient webSocketTo: aURIString).
  	self socket
		onMessage: [ :data | self owner receive: data ];
		fork.
	self connected: true