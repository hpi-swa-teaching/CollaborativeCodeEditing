I am the singleton editing session the user has joined.

Once a user has connected to a server he has to join a session to start editing collaboratively.
I am the representation of that session.

I am responsible for the buildup and teardown (which includes joinoing and leaving the session.
Once in a session, I also keep track of the different collaborators, and I manage the CCESelectionListener.

Instance Variables
	checksum:		aNumber
	client:		aCCEClient
	collaborators:		aCollection
	localAccount:		aCCEAccount
	packageManager:		aCCEPackageManager
	scope:		aStringArray
	selectionListener:		aCCESelectionListener
	status:		aCCESessionStatus
	token:		aSymbol

checksum
	- Hash/checksum of the local packets within the sessions scope

client
	- Used to send messages

collaborators
	- Collaborators currently in session, used e.g. for visual representation

localAccount
	- Account of local user

packageManager
	- Where I should register my scope and client

scope
	- Which packets may be edited, used to build initial message for client

selectionListener
	- Catches changes in selection

status
	- Current status of session, e.g. no remote, dirty, clean.

token
	- Session token, used to join
