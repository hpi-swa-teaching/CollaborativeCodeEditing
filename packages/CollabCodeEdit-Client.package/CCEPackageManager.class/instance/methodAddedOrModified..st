as yet unclassified
methodAddedOrModified: anEvent		
	self sendEditIfNotToBeIgnored: 
		(CCEMethodAddedOrModifiedEdit 
			newWith: anEvent item getSource in: anEvent itemClass)