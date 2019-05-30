constants
serverMsgTypes
	^  OrderedDictionary newFrom: {
			#ackCreateSession: -> #ackCreateSession: . 
			#ackCreateSessionWithError: -> #ackCreateSessionWithError: .
			#ackJoinSession: -> #ackJoinSession: . 
			#newUser->  #newUser .
			#setOtherUserConsistent: -> #setOtherUserConsistent: .
			#ackLeaveSession -> #ackLeaveSession .
			#ackLeaveSessionWithError: -> #ackLeaveSessionWithError: }