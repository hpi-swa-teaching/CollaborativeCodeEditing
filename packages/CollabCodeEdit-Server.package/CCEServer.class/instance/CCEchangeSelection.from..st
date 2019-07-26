actions
CCEchangeSelection: anOrderedDictionary from: aCCERemoteClient
	aCCERemoteClient session broadcastMessage:
		(CCEMessage changeSelectionBroadcastWith: anOrderedDictionary)