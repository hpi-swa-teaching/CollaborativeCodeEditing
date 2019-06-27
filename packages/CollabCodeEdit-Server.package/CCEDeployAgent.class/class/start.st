startup
start
	^ self currentInstance ifNil: [
		| newInstance |

		newInstance := self new start.
		self currentInstance: newInstance.
		^ newInstance ]