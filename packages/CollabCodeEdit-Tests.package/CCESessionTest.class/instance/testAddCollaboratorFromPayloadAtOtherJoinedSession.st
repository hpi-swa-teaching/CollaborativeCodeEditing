tests collaborator managment
testAddCollaboratorFromPayloadAtOtherJoinedSession
	| expectedCollaborator | 
	
	session collaborators removeAll.
	
	expectedCollaborator := CCECollaborator new identifier: testIdentifier.
	
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: {#id -> testIdentifier}).
	
	self assert: ((session collaborators at: testIdentifier) = expectedCollaborator).