I am the owner of the connection to the server.

I own the websocket and the heartbeat, I know where to connect to. 
If someone wants to send something to the server they have to go through me.
I'm also the first to receive things the server sends back. But handling it is none of my business:
Whenever I receive something from the server I give it to the model, which then does whatever.

To keep the connection with the server open I am in control of the CCEHeartbeatEngine.


Instance Variables
	activeUI:		aCCEModel
	connected:		aBoolean
	heartbeatEngine:		aCCEHeartbeatEngine
	serverURI:		aString
	socket:		aWebSocket
	ui:		aCCEClientUI

activeUI
	- The model as aforementioned

connected
	- Wether I'm connected to a Server

heartbeatEngine
	- My heartbeatEngine as aforementioned

serverURI
	- The URI of the Server I'm connected to or to which I will connect when asked

socket
	- The socket which handels the connection to the server

ui
	- Represents information about my to the UI
