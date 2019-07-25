server-Message creation
ackJoinSession
	^ self
		new: (CCEMessage serverMessageTypes at: #ackJoinSession:)
		with: nil