request handling
CCEchangeSelection: anOrderedDictionary from: aClient
	aClient session broadcastMsg: (CCEMessage changeSelectionBroadcastWith: anOrderedDictionary)