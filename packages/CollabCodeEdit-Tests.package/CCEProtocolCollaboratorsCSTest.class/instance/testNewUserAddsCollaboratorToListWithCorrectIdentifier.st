requests backend
testNewUserAddsCollaboratorToListWithCorrectIdentifier
	| newUserMessage |
	
	newUserMessage := CCEMessage newUser: 'aKey'.
	session removeAllCollaborators.
	
	model receive: newUserMessage serialize.
	
	self assert: 1 equals: session collaborators size.
	self assert: ((session collaborators at: 'aKey') identifier = 'aKey').
	