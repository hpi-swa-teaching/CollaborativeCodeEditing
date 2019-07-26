tests collaborator managment
testCollaboratorsListReturnsAnArrayOfCCECollaborators
	| firstCollaborator  secondCollaborator createdArray |
	
	firstCollaborator := CCECollaborator new identifier: 'firstCollaborator'.
	secondCollaborator := CCECollaborator new identifier:  'secondCollaborator'.
	
	session collaborators at: 'firstCollaborator' put: firstCollaborator. 
	session collaborators at: 'secondCollaborator' put: secondCollaborator.
	
	createdArray := session collaboratorsList.
	
	self assert: (createdArray isKindOf: Array).
	self assert: (createdArray includes: firstCollaborator).
	self assert: (createdArray includes: secondCollaborator)