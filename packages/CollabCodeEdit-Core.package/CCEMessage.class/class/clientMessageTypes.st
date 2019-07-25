constants
clientMessageTypes
	^ OrderedDictionary newFrom: {
			#createSessionWith:from: -> #createSessionWith:from: .
			#joinSession:from: -> #joinSession:from: .
			#setConsistent:from: -> #setConsistent:from: .
			#leaveSessionWith:from: -> #leaveSessionWith:from: .
			#sendMulticastToSession:from: -> #sendMulticastToSession:from: .
			#sendEdit:from: -> #sendEdit:from: .
			#heartbeat:from: -> #heartbeat:from: .
			#changeSelection:from: -> #changeSelection:from: }