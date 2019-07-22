request handling
handleUpdate: aWebRequest
	self authenticate: aWebRequest action: [
		| tokens |
		
		tokens := self getURLTokensFrom: aWebRequest limit: 2.
		
		tokens ifNil: [ ^ self ].
		tokens size > 1
			ifTrue: [ self updateCCEToCommit: tokens last ]
			ifFalse: [ self updateCCE ].

		aWebRequest send200Response: 'Update completed.' ]