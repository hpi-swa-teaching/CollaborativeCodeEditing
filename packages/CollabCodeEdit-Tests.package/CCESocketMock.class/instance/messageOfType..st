accessing
messageOfType: aSymbol
	| matchingMessages |
	
	matchingMessages := OrderedCollection new. 
	
	self messages valuesDo:
		[ :aCCEMessage | (aCCEMessage type = aSymbol) 
			ifTrue: [ matchingMessages add: aCCEMessage ] ].
	
	^ matchingMessages