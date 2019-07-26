tests
testStart
	| server |

	server := nil.

	3 timesRepeat: [
		self assert: server equals: CCEServer currentInstance.

		server := CCEServer start.
		self deny: server isNil.
		self assert: CCEServer equals: server class ]