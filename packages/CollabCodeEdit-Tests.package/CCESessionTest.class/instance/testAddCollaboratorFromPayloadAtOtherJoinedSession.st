tests collaborator managment
testAddCollaboratorFromPayloadAtOtherJoinedSession
	session collaborators removeAll.
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: {#id -> testIdentifier}).
	self assert: ((session collaborators at: testIdentifier) = (CCECollaborator new identifier: testIdentifier))