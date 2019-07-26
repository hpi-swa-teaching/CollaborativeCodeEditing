accessing
isIdentifierInUse: aString
	^ self clients anySatisfy: [ :client | client identifier asString = aString ]