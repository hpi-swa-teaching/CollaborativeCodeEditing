server-Message creation
ackHeartbeat
	^ self new: (CCEMessage serverMessageTypes at: #ackHeartbeat:) 
			with: ( OrderedDictionary new ).