server-Message creation
forwardEditMessage: aCCEEdit
	^ self new: (CCEMessage serverMsgTypes at: #receiveEdit:) 
			with: aCCEEdit