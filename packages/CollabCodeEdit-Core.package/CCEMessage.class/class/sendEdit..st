client-Message creation
sendEdit: aCCEEdit
	^ self new: (CCEMessage clientMsgTypes at:#sendMulticastToSession:from: ) 
			with: (STON toString: aCCEEdit)