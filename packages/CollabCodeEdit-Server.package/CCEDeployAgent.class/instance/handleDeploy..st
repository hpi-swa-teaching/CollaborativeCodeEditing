request handling
handleDeploy: aWebRequest
	self authenticate: aWebRequest action: [
		| tokens |
		
		tokens := self getURLTokensFrom: aWebRequest limit: 2.
		
		tokens ifNil: [ ^ self ].
		tokens size > 1
			ifTrue: [ self deployCCECommit: tokens last ]
			ifFalse: [ self deployCCE ].

		aWebRequest send200Response: 'Deployed successfully.' ]