socket
startSocket

	self socket: Socket newTCP;
		listenOn: CCESessionSocket serverPort.