accessing
humanReadableName
	^ humanReadableName ifNil: [ 
		humanReadableName := Utilities authorInitials]