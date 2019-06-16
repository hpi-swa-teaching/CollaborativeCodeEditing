accessing
buttonWithLabel: aString
	self sessionCtrlButtons do: [:button | button label == aString ifTrue: [^ button]].