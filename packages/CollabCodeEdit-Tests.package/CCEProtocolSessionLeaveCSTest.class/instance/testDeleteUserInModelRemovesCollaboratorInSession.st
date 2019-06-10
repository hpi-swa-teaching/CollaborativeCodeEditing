requests backend
testDeleteUserInModelRemovesCollaboratorInSession

	session addCollaboratorFromPayload: (CCEMessage newUser: 'testName') payload.
	
	model recieve: (CCEMessage deleteUser: 'testName') serialize.
	
	self assert: 0 = session collaborators size.