I am the owner of the connection to the server.

I own the websocket and the heartbeat, I know where to connect to. 
If someone wants to send something to the server they have to go through me.
I'm also the first to receive things the server sends back. But handling it is none of my business:
Whenever I receive something from the server I give it to the model, which then does whatever.

To keep the connection with the server open I am in control of the CCEHeartbeatEngine.


Instance Variables
	activeUI:		<Object>
	connected:		<Object>
	heartbeatEngine:		<Object>
	serverURI:		<Object>
	socket:		<Object>
	ui:		<Object>

activeUI
	- xxxxx

connected
	- xxxxx

heartbeatEngine
	- xxxxx

serverURI
	- xxxxx

socket
	- xxxxx

ui
	- xxxxx
