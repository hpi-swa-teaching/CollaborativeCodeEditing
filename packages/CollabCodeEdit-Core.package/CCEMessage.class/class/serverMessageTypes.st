constants
serverMessageTypes
	^  OrderedDictionary newFrom: {
			#ackCreateSession: -> #ackCreateSession: . 
			#ackCreateSessionWithError: -> #ackCreateSessionWithError: .
			#ackJoinSession: -> #ackJoinSession: . 
			#ackJoinSessionWithError: -> #ackJoinSessionWithError: .
			#newUser:->  #newUser: .
			#setOtherUserConsistent: -> #setOtherUserConsistent: .
			#ackLeaveSessionWith: -> #ackLeaveSessionWith: .
			#ackLeaveSessionWithError: -> #ackLeaveSessionWithError: .
			#deleteUser: -> #deleteUser: .
			#receiveEdit: -> #receiveEdit: . 
			#ackHeartbeat: -> #ackHeartbeat: }