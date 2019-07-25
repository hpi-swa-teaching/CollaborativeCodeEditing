client-Message creation
heartbeat
	^ self
		new: (CCEMessage clientMessageTypes at: #heartbeat:from:) 
		with: nil