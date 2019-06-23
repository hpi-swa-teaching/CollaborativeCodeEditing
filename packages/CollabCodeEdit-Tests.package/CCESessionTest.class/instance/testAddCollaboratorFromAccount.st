tests collaborator managment
testAddCollaboratorFromAccount
	| exptedCollaborator | 
	
	session collaborators removeAll.
	
	exptedCollaborator := CCECollaborator newFromAccount: account.
	
	session addCollaboratorFromAccount: account.
	
	self assert: ((session collaborators at: testIdentifier) identifier = testIdentifier)