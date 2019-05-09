test-initialize
testGeneratedTokensAreDistinct

	| sessionTokens token |
	
	sessionTokens := OrderedCollection new.
	10 timesRepeat: [
		token := self server createSessionToken.
		
		self deny: (sessionTokens includes: token).
		sessionTokens add: token ].
	
	
	
	
	
	