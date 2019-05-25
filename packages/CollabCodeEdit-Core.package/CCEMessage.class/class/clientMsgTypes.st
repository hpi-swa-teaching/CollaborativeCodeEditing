constants
clientMsgTypes
	^ clientMsgTypes ifNil: [clientMsgTypes := OrderedDictionary newFrom: {
			#createSessionWith:from: -> #createSessionWith:from: .
			#joinSession:from: -> #joinSession:from: .
			#setConsistent:from: -> #setConsistent:from: }]