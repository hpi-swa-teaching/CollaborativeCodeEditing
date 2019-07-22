helpers
handleErrorsFor: aWebRequest action: aBlock
	[ aBlock value: aWebRequest ] ifError: [ :err :receiver |
		Transcript show: err.
		
		 (err startsWith: 'GitObjectNotFoundError')
			ifTrue: [
				aWebRequest send400Response: 'The specified Git object does not exist.' ]
			ifFalse: [
				aWebRequest send500Response: 'The operation failed due to a server error.' ] ]