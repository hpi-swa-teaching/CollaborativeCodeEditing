session management
createSessionToken
	| token |
	
	token := Symbol allSymbols at: Symbol allSymbols size random.
	(self sessions includes: token) 
		ifTrue: [ ^ self createSessionToken ]
		ifFalse: [ ^ token ]