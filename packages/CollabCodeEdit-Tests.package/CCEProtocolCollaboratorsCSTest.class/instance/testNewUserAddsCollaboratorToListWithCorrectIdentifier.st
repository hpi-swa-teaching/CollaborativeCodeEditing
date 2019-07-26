requests backend
testNewUserAddsCollaboratorToListWithCorrectIdentifier
	session removeAllCollaborators.

	model receive: ( CCEMessage newUser: 'aKey' ) serialize.

	self assert: 1 equals: session collaborators size.
	self assert: ( ( session collaborators at: 'aKey' ) identifier = 'aKey' )