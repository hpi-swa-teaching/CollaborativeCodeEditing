comparing
= anCollaborator
	^ ((anCollaborator consistencyState = self consistencyState) &
		 (anCollaborator identifier = self identifier))