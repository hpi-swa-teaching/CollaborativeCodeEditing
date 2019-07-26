I manage all existing clients and react to their messages.

In that, I am the layer that is set on top the actual webserver.
When a new request comes in I create a corresponding CCERemoteClient.
The clients can execute my "actions" methods. 
Much like in CollabCodeEdit-Client, these remote methods are prefixed with "CCE".

I also manage all sessions, and can create and destroy them.
I don't directly talk to the clients, and I don't manage the different websockets.
That is the responsibility of CCERemoteClient.

Instance Variables
	server:		aWebServer
	sessions:		aDictionary

server
	- Webserver that accepts new requests

sessions
	- All currently active sessions on the server
