server-Message creation
forwardEditMessage: aSerializeddCCEEdit
	^ self new: (CCEMessage serverMsgTypes at: #receiveEdit:) 
			with: (STON fromString: aSerializeddCCEEdit)