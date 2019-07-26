I offer information about the CCEClient for the UI. All my state is directly derived from my Client. I am a model for the connect/disconnect-button and the URI textfield in the CollabCodeEditingWindow. As such, I may change my client.

Instance Variables
	client:		aCCEClient
	serverURI:	 aString
	statusAction:	aString
	statusColor:	 aColor

client
	- Whom I offer information about

serverURI
	- the URI of the server my client is connected to

statusAction
	- The text of the button in the CollabCodeEdit-Window. Should be defined by my class methods. 

statusColor
	- The color of the textfield in which the ServerURI is.
