tests collaborator managment
testRemoveAllCollaborators
	session addCollaborator: (CCECollaborator new) withKey: 'aKey'.
	session addCollaborator: (CCECollaborator new) withKey: 'anotherKey'.
	
	session removeAllCollaborators.
	
	self assert: session collaborators isEmpty.