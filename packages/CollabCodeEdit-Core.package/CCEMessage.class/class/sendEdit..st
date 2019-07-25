client-Message creation
sendEdit: aCCEEdit
	^ self new 
		type: (CCEMessage clientMessageTypes at: #sendEdit:from:); 
		payload: aCCEEdit;
		yourself