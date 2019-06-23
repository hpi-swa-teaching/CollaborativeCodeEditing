tests
testChangeSelectionUpdatesSelectionInCollaboratorsList
	| selectionMessage | 
	
	selectionMessage := CCEMessage changeSelectionBroadcastWith: changeSelectionPayload.
	
	model receive: selectionMessage serialize.
	
	self assert: ( session collaborators at: remoteId ) currentSelection = remoteSelection.