testing
testStart
	| server |

	server := nil.

	3 timesRepeat: [
		self assert: server equals: CCEDeployAgent currentInstance.

		server := CCEDeployAgent start.
		self deny: server isNil.
		self assert: CCEDeployAgent equals: server class ]