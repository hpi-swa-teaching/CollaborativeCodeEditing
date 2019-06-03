messaging
createCollaboratorsListWithConsistencys
	^ self clients collect: [:aClient | aClient createCollaboratorInformation]