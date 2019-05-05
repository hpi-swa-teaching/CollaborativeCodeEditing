startup
start
	self socket: (WebClient webSocketTo: 'http://localhost:8080').
	self socket
		onMessage: [ :data | Transcript cr; show: data ];
		fork