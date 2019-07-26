breakdown
breakdown
	self currentInstance ifNotNil: [
		self currentInstance breakdown.
		self currentInstance: nil ]