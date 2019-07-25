client-Message creation
sendEdit: aCCEEdit
	^ self new 
		type: (CCEMessage clientMsgTypes at: #sendEdit:from:); 
		payload: aCCEEdit;
		yourself