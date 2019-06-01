tests
testAddStatusSubscriber
	| testSubscriber |
	
	testSubscriber := Object new.
	
	session addStatusSubscriber: testSubscriber.
	
	self assert: (session status dependents  includes: testSubscriber)