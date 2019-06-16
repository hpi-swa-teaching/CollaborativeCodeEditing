tests
testStart
	| server |

	server := nil.

	3 timesRepeat: [
		self assert: server equals: CCEServer currentInstance.

		server := CCEServer start.
		server ifNil: [ self fail ].
		self assert: CCEServer equals: server class ]