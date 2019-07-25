messaging
createCollaboratorsListWithConsistencies
	^ self clients collect: [ :aClient | aClient createCollaboratorInformation ]