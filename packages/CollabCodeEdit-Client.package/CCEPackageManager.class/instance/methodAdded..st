change-capturing
methodAdded: anEvent	
	| class |
	
	class := anEvent itemClass.
	(self isInScope: class)
		ifTrue: [ self session broadcastChangedMethod: anEvent item getSource in: class ]