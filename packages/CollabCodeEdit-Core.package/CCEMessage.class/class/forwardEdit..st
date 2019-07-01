server-Message creation
forwardEdit: aCCEEdit
	^ self new: (CCEMessage serverMessageTypes at: #receiveEdit:) 
			with: (OrderedDictionary newFrom: { #edit -> aCCEEdit })