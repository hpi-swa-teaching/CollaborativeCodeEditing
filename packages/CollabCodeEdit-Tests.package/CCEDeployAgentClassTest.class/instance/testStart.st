testing
testStart
	| server |

	server := nil.

	3 timesRepeat: [
		self assert: server equals: CCEDeployAgent currentInstance.

		server := CCEDeployAgent start.
		server ifNil: [ self fail ].
		self assert: CCEDeployAgent equals: server class ]