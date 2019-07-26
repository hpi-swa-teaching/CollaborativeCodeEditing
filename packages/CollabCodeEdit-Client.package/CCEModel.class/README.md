I am the main visual represenation of the Collaborative Code Editor.

I am responsible for the UI of the editor, which includes both the visualising, and the handling of user interactions.

Additionally, the CCEClient gives me messages from the server, which I act upon.
The methods triggered by these requests are in the category "requests backend", and prefixed with CCE, to make identification easier.


Instance Variables
	account:		aCCEAccout
	client:		aCCEClient
	createSessionModel:		<Object>
	joinSessionModel:		<Object>
	leaveSessionModel:		<Object>
	session:		aCCESession
	sessionCtrlButtons:		anOrderedCollection

account
	- Account of local user, used for representation in the ui

client
	- Client used to send and receive messages

createSessionModel
	- xxxxx

joinSessionModel
	- xxxxx

leaveSessionModel
	- xxxxx

session
	- Currently active session

sessionCtrlButtons
	- Ordered Collection of createSession, leaveSession, and joinSessoin button
