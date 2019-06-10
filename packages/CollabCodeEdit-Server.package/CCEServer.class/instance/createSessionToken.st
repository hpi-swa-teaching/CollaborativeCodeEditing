session management
createSessionToken
	| token |
	
	token := Symbol allSymbols at: Symbol allSymbols size atRandom.
	(self sessions includes: token) 
		ifTrue: [ ^ self createSessionToken ]
		ifFalse: [ ^ token ]