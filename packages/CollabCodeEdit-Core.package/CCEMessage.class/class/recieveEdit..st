server-Message creation
recieveEdit: aCCEEdit
	^ self new: (CCEMessage serverMsgTypes at: #recieveEdit:from:) 
			with: aCCEEdit