client-Message creation
heartbeat
	^ self new: (CCEMessage clientMsgTypes at: #heartbeat:from:) 
			with: ( OrderedDictionary new )