as yet unclassified
methodAddedOrModified: anEvent	
	| class |
	
	class := anEvent itemClass.
	(self isInScope: class)
		ifTrue: [ self session 
			broadcastAddedOrModifiedMethod: anEvent item getSource in: class ]