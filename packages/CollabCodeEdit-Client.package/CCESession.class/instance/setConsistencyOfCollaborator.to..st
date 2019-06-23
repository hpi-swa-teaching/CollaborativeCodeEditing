collaborator managment
setConsistencyOfCollaborator: aString to: aBoolean
	| collaborator |
	
	collaborator := self collaborators at: aString.
	
	aBoolean
		ifTrue: [ collaborator consistencyState: CCECollaborator isConsistentString ]
		ifFalse: [ collaborator consistencyState: CCECollaborator isNotConsistentString ].
	
	self updateCollaboratorsInUI
