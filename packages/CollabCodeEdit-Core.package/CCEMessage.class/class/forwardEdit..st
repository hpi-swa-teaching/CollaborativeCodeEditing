server-Message creation
forwardEdit: aCCEEdit
	^ self
		new: #receiveEdit:
		with: { #edit -> aCCEEdit }