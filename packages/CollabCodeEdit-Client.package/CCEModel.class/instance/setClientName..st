requests ui
setClientName: aString
	| message |
	message := CCEMessage setClientName: aString.
	self client sendMsg: message