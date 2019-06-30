tests
testChangeSelectionUpdatesSelectionInCollaboratorsList
	| selectionMessage | 
	
	selectionMessage := CCEMessage changeSelectionBroadcastWith: changeSelectionPayload.
	
	model receive: selectionMessage serialize.
	
	self assert: ( session collaborators at: remoteId ) currentSelectionAsDictionary =  (OrderedDictionary newFrom: {
		#categorySelection -> remoteSelection categorySelection .
		#classSelection -> remoteSelection classSelection .
		#methodSelection -> remoteSelection methodSelection })