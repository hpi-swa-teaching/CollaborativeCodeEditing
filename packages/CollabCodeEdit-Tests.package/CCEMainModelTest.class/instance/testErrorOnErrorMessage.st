tests backend
testErrorOnErrorMessage
	self 
		should: [ model receive: (CCEMessage ackCreateSession: '' withError: '') serialize ]
		raise: Error