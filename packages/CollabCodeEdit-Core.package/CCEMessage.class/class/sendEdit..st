client-Message creation
sendEdit: aCCEEdit
	^ self new 
		type: #sendEdit:from:;
		payload: aCCEEdit;
		yourself