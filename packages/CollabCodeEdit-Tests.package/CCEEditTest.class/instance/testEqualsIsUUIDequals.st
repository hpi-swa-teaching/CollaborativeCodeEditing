tests
testEqualsIsUUIDequals
	| edit1 edit2 |
	
	edit1 := CCEEdit new.
	edit2 := CCEEdit new.
	
	self deny: edit1 = edit2.
	
	edit2 editID: edit1 editID.
	
	self assert: edit1 equals: edit2