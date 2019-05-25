constants
serverMsgTypes
	^ serverMsgTypes ifNil: [serverMsgTypes := OrderedDictionary newFrom: {
			#ackCreateSession: -> #ackCreateSession: . 
			#ackCreateSessionWithError: -> #ackCreateSessionWithError: .
			#ackJoinSession: -> #ackJoinSession: . 
			#newUser->  #newUser .
			#setOtherUserConsistent: -> #setOtherUserConsistent: }]