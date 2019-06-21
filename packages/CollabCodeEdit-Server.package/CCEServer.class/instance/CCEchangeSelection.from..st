request handling
CCEchangeSelection: anOrderedDictionary from: aClient
	| broadcastMessage | 
	
	broadcastMessage := CCEMessage changeSelectionBroadcastWith: (self createChangeSelectionMessageFromPayload: anOrderedDictionary andClient: aClient).
	
	aClient session broadcastMsg: broadcastMessage.