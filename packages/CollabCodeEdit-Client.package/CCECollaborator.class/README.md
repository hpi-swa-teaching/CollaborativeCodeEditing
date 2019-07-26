I represent a collaborator, which is a user in the current session.
Both the user local to this machine and users not local to this machine are represented as CCECollaborators.

I store details about those collaborators, mainly what they're doing right now.

Instance Variables
	consistencyState:		aString
	currentSelection:		aCCESelection
	currentSelectionAsDictionary:		anOrderedDictionary
	identifier:		aString

consistencyState
	- Whether or not the collaborators packets initial state is the same as that of the other collaborators
	If a collaborator is not consistent they shouldn't be able to send/receive changes in that session

currentSelection
	- Where in the class browser the collaborator currently is as text

currentSelectionAsDictionary
	- Where in the class browser the collaborator currently is as dictionary

identifier
	- A human readable name for that collaborator
