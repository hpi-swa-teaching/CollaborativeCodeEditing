helpers
handleErrorsFor: aWebRequest action: aBlock
	[ aBlock value: aWebRequest ] ifError: [ :error :receiver |
		Transcript show: error.
		
		 (error startsWith: 'GitObjectNotFoundError')
			ifTrue: [
				aWebRequest send404Response: 'The specified Git object does not exist.' ]
			ifFalse: [
				aWebRequest send500Response: 'The operation failed due to a server error.' ] ]