change-capturing
methodRemoved: anEvent	
	| class |
	
	class := anEvent itemClass.
	(self isInScope: class)
		ifTrue: [ self session broadcastRemovedMethod: anEvent itemSelector in: class ]