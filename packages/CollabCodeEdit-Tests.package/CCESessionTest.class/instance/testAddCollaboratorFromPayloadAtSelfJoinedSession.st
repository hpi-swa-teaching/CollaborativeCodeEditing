tests collaborator managment
testAddCollaboratorFromPayloadAtSelfJoinedSession
	| expectedCollaborator | 
	
	session collaborators removeAll.
	
	expectedCollaborator := CCECollaborator new identifier: testIdentifier; consistencyState: CCECollaborator isConsistentString; yourself.
	
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: {#id -> testIdentifier . #isConsistent -> true}).
	
	self assert: ((session collaborators at: testIdentifier) = expectedCollaborator)