collaborator managment
setSelectionOfCollaborator: aString to: anOrderedDictionary
	(self collaborators at: aString) currentSelectionAsDictionary: anOrderedDictionary.	
	self updateCollaboratorsInUI