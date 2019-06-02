tests collaborator managment
testAddCollaboratorWithKeySetsConsistencyStateToUndefined
	| exptedCollaborator createdCollaborator | 
	
	session collaborators removeAll.
	
	exptedCollaborator := CCECollaborator new identifier: testIdentifier.
	
	session addCollaborator: exptedCollaborator withKey: testIdentifier.
	
	createdCollaborator := session collaborators at: testIdentifier ifAbsent: [self fail].
	
	self assert: 1 equals: session collaborators size.
	self assert: (createdCollaborator isKindOf: CCECollaborator).
	self assert: (createdCollaborator identifier = testIdentifier).
	self assert: (createdCollaborator consistencyState = CCECollaborator isUndefinedString).
	
