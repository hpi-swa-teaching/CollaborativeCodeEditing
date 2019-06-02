tests collaborator managment
testCollaboratorsLazyInitialisation
	self deny: CCESession new collaborators isNil.
	self assert: (CCESession new collaborators isKindOf: Dictionary)