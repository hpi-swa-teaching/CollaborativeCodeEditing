tests collaborator managment
testRemoveCollaboratorAt
	session addCollaborator: (CCECollaborator new) withKey: 'aKey'.
	session addCollaborator: (CCECollaborator new) withKey: 'anotherKey'.
	
	session removeCollaborator: 'aKey'.
	
	self deny: (session collaborators keys includes: 'aKey').
	self assert: (session collaborators keys includes: 'anotherKey').
	self assert: 1 equals: session collaborators size.