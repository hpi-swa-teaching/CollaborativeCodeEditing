tests
testSimultaniouslyRunningSessionsHaveDisctinctSessionTokens
	| sessionKeys | 
	sessionKeys := OrderedCollection new.
	4 timesRepeat: [server createSession].
	
	server sessions keys do: [:key |
		 (sessionKeys includes: key asString) ifTrue: [self fail].
		 sessionKeys add: key asString].