tests collaborator managment
testAddCollaboratorFromPayload
	session collaborators removeAll.
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: { #id -> testIdentifier }).
	self assert: ((session collaborators at: testIdentifier) identifier = testIdentifier)