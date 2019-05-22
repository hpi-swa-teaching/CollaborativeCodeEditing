tests-integration
testPublishSessionShouldCreateASessionObjectInCCEServer
	| cceServer | 	
	
	cceServer := CCEServer new start.
	CCEClient default startTestClientToLocalhost.
	CCEClient default owner: CCEModel new.
	
	self assert: 0 equals: (cceServer sessions size).
	
	session publishSession.
	
	(Duration milliSeconds: 100) wait.
	
	self assert: 1 equals: (cceServer sessions size).
	cceServer breakdown
	
	