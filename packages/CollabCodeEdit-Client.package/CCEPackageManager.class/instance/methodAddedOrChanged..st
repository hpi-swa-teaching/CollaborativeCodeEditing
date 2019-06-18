change-capturing
methodAddedOrChanged: anEvent	
	| class |
	
	class := anEvent itemClass.
	(self isInScope: class)
		ifTrue: [ self session broadcastAddedOrChangedMethod: anEvent item getSource in: class ]