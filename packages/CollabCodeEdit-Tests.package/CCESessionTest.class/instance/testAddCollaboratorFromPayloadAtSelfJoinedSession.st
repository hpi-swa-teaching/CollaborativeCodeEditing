tests collaborator managment
testAddCollaboratorFromPayloadAtSelfJoinedSession
	session collaborators removeAll.	
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: {#id -> testIdentifier . #isConsistent -> true}).
	self assert: (session collaborators at: testIdentifier) = (CCECollaborator new identifier: 
		testIdentifier; 
		consistencyState: CCECollaborator isConsistentString; 
		yourself)