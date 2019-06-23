testing
hasMessageOfType: aString
	^ self messages anySatisfy:  [ :aCCEMessage | aCCEMessage value type = aString ]