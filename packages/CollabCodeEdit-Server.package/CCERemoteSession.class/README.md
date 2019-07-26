I am a ClientManager that represent an editing session.

In that I am very similar to the CCESession in CollabCodeEdit-Client.
However, my main task is to communicate things to my members.
Collaborators of a session are represented as CCERemoteClients.

I know some things about my session and I offer some utility methods that support the creation of messages regarding sessions.

Instance Variables
	initialChecksum:		aNumber
	scope:		aStringArray
	token:		aSymbol

initialChecksum
	- Checksum of packages from session creator. Used to send to other clients

scope
	- Packets relevant to the checksum

token
	- Access token for this session
