as yet unclassified
= anCollaborator
	^ ((anCollaborator consistencyState = self consistencyState) &
		 (anCollaborator identifier = self identifier))