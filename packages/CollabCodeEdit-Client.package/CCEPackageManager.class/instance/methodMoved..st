change-capturing
methodMoved: anEvent	
	| class |
	
	class := anEvent itemClass.
	(self isInScope: class)
		ifTrue: [ self session broadcastMovedMethod: anEvent itemSelector 
			in: class into: anEvent itemProtocol ]