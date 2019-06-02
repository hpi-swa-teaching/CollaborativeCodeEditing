tests
testHumanReadableNameDefaultsToAuthorInitials
	account humanReadableName: nil.
	self assert: account humanReadableName == Utilities authorInitials