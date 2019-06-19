requests backend
testDeleteUserInModelRemovesCollaboratorInSession

	session addCollaboratorFromPayload: (CCEMessage newUser: 'testName') payload.
	
	model receive: (CCEMessage deleteUser: 'testName') serialize.
	
	self assert: 0 = session collaborators size.