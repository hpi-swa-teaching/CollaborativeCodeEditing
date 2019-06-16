startup
start
	"spins up a new server instance if none is running already"

	^ self currentInstance ifNil: [
		| newInstance |

		newInstance := self new start.
		self currentInstance: newInstance.
		^ newInstance
	]