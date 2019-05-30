constants
serverMsgTypes
	^  OrderedDictionary newFrom: {
			#ackCreateSession: -> #ackCreateSession: . 
			#ackCreateSessionWithError: -> #ackCreateSessionWithError: .
			#ackJoinSession: -> #ackJoinSession: . 
			#newUser->  #newUser .
			#setOtherUserConsistent: -> #setOtherUserConsistent: .
			#ackLeaveSessionWith: -> #ackLeaveSessionWith: .
			#ackLeaveSessionWithError: -> #ackLeaveSessionWithError: }