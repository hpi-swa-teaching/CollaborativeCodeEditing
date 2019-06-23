collaborator managment
setSelectionOfCollaborator: aString to: aCCESelection
	( self collaborators at: aString ) currentSelection: aCCESelection.	
	self updateCollaboratorsInUI