tests collaborator managment
testAddCollaboratorFromPayload
	| exptedCollaborator | 
	
	session collaborators removeAll.
	
	exptedCollaborator := CCECollaborator new identifier: testIdentifier.
	
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: { #id -> testIdentifier }).
	
	self assert: ((session collaborators at: testIdentifier) identifier = testIdentifier)