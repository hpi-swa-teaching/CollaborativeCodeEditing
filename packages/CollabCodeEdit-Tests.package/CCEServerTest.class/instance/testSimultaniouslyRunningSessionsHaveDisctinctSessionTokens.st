tests
testSimultaniouslyRunningSessionsHaveDisctinctSessionTokens
	| sessionKeys | 
	sessionKeys := OrderedCollection new.
	4 timesRepeat: [ server
		createSessionWith: testPayload
		andCreator: CCERemoteClient new ].
	
	server sessions keys do: [ :key |
		 (sessionKeys includes: key asString) ifTrue: [ self fail ].
		 sessionKeys add: key asString ]