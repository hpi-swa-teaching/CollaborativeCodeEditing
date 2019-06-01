accessing
messageOfType: aSymbol
	| matchingMessages |
	
	matchingMessages := OrderedCollection new. 
	
	self messages keysAndValuesDo:
		[:aString :aCCEMessage | (aCCEMessage type = aSymbol) ifTrue: [matchingMessages add: aCCEMessage]].
	
	^ matchingMessages