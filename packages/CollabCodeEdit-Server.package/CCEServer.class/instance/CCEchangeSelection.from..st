request handling
CCEchangeSelection: anOrderedDictionary from: aClient
	aClient session broadcastMessage: (CCEMessage changeSelectionBroadcastWith: anOrderedDictionary)