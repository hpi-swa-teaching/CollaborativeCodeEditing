requests backend
testDeleteUserInModelRemovesCollaboratorInSession
	session addCollaboratorFromPayload: (CCEMessage newUser: 'testName') payload.
	self assert:  session collaborators notEmpty.
	model receive: (CCEMessage deleteUser: 'testName') serialize.
	self assert: session collaborators isEmpty