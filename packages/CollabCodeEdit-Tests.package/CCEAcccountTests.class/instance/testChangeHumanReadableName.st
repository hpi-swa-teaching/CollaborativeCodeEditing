as yet unclassified
testChangeHumanReadableName
	| everChangingName |
	everChangingName := TimeStamp current asString.
	account humanReadableName: everChangingName.
	
	self assert: account humanReadableName == everChangingName