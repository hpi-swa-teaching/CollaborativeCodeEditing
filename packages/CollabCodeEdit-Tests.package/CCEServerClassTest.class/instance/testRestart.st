tests
testRestart
	| server previousServer |

	server := nil.
	previousServer := nil.

	3 timesRepeat: [
		self assert: server equals: CCEServer currentInstance.

		server := CCEServer restart.
		self deny: server isNil.
		self assert: CCEServer equals: server class.
		self deny: previousServer = server.

		previousServer := server ]