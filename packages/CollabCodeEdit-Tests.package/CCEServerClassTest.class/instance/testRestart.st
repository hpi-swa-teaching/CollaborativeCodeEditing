tests
testRestart
	| server previousServer |
	server := nil.
	previousServer := nil.

	3 timesRepeat: [
		self assert: server equals: CCEServer currentInstance.

		server := CCEServer restart.
		server ifNil: [ self fail ].
		self assert: CCEServer equals: server class.
		self deny: previousServer equals: server.

		previousServer := server ]
	