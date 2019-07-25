actions
deployCCECommit: aHash
	CCEServer breakdown.
	[ self updateCCEToCommit: aHash ] ifError: [ :error :receiver |
		CCEServer start.
		self error: error ].
	CCEServer start