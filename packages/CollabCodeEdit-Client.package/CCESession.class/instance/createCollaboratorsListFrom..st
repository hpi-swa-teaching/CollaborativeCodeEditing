collaborator managment
createCollaboratorsListFrom: anOrderedCollection
	anOrderedCollection do: [ :aDictionary | self addCollaboratorFromPayload: aDictionary ].
	self addCollaboratorFromAccount: self imageAccount