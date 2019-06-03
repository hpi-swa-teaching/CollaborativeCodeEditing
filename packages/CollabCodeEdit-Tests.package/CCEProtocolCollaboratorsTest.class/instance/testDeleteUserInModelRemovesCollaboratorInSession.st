requests backend
testDeleteUserInModelRemovesCollaboratorInSession

	session addCollaboratorFromPayload: (CCEMessage newUser: 'testName') payload.
	
	model CCEdeleteUser: (CCEMessage deleteUser: 'testName') payload.
	
	self assert: session collaborators size = 0.