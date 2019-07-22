actions
deployCCECommit: aHash
	CCEServer breakdown.
	[ self updateCCEToCommit: aHash. ] ifError: [ :err :receiver |
		CCEServer start.
		self error: err ].
	CCEServer start