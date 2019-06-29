change-capturing
methodAddedOrModified: anEvent		
	self sendEditIfNotToBeIgnored: 
		(CCEMethodRecategorizedEdit 
			newWith: anEvent item getSource in: anEvent itemClass)