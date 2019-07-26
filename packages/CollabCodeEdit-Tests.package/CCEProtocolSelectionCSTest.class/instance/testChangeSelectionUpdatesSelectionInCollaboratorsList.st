tests
testChangeSelectionUpdatesSelectionInCollaboratorsList
	model receive: (CCEMessage changeSelectionBroadcastWith: changeSelectionPayload) serialize.
	
	self assert: ( session collaborators at: remoteId ) currentSelectionAsDictionary =  (OrderedDictionary newFrom: {
		#categorySelection -> remoteSelection categorySelection .
		#classSelection -> remoteSelection classSelection .
		#methodSelection -> remoteSelection methodSelection })