request handling
createChangeSelectionMessageFromPayload: anOrderedDictionary andClient: aClient
	
	^ (OrderedDictionary newFrom: {#id -> aClient identifier . #selection -> anOrderedDictionary at: #selection })
	
	