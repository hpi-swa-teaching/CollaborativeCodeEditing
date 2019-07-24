accessing
buttonWithLabel: aString
	^ self sessionCtrlButtons detect: [ :button | button label == aString ]