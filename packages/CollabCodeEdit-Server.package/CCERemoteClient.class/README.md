I am the serverside representation of a connected client.

Everything one wants to send to my client they send through me.
Even though I receive all messages from my client I don't handle them.
That is the tasak of the CCEServer, whom has registered himself beforehand.

I also have some information on my client.


Instance Variables
	identifier:		aString
	isConsistent:		aBoolean
	session:		aCCERemoteSession
	socket:		aWebSocket

identifier
	- Human readable identifier of user. Corresponds with CCECollaboratos identifier.

isConsistent
	- Wether or not my clients packages are up to date with the packages of the session

session
	- The session my client is in

socket
	- The socket I can use to reach my client
