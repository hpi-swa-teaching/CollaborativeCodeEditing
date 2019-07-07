as yet unclassified
testBuildCCEClassRecategorizedEdit
	| event edit |
	
	event := RecategorizedEvent class: CCETestDummy category: 'CollabCodeEdit-Client' oldCategory: 'CollabCodeEdit-Tests'.
	
	edit := builder buildEditFrom: event.
	
	self assert: edit oldCategory equals: 'CollabCodeEdit-Tests'.
	self assert: edit recategorizedClass equals: CCETestDummy.
	self assert: (edit isKindOf: CCEClassRecategorizedEdit)
	
	
	