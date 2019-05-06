socket
startSocket

	self socket: Socket newTCP; 
		connectTo: (NetNameResolver addressFromString: CCESessionSocket serverAdressAsString) port: CCESessionSocket serverPort;
		waitForConnectionFor: CCESessionSocket socketConnectionTimeOut.
		
	^ self socket isConnected
			
			
	