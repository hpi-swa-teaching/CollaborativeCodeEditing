I am the medium with which the client and server communicate.

I build all messages.
Each message is a wrapper for something the client sends to the server or vice versa.
For that, I know all possible message types and formats.
Messages can call methods on the client and the server.
I have to know all these methods, to construct the corresponding messages.
Changes to these methods must manually be added to me.

When someone wants to build a message they pass me the necessary data, and I take care of all formatting.

Each message has a type and payload.
I know all types and construct all payloads.

Instance Variables
	payload:		aDictionary
	type:		aString

payload
	- Data to be passed from sender to receiver. Knowledge on how to format is held within my different methods.

type
	- Decides what methods are called on the receiver. Defined in CCEMessage constants.
