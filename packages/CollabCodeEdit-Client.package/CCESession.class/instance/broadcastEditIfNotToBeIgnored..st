request-sending
broadcastEditIfNotToBeIgnored: aCCEEdit
	(self packageManager shouldBeIgnored: aCCEEdit)
		ifFalse: [
			self client sendMessage: 
			(CCEMessage sendEdit: aCCEEdit) ] 