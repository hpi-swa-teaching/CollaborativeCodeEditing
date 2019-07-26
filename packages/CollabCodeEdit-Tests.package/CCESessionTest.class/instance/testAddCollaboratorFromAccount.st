tests collaborator managment
testAddCollaboratorFromAccount
	session collaborators removeAll.
	session addCollaboratorFromAccount: account.
	self assert: ((session collaborators at: testIdentifier) identifier = testIdentifier)