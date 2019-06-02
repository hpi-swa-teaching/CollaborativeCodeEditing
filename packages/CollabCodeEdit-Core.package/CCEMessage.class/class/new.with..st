instance creation
new: aString with: someData
	^ self new
		type: aString asSymbol;
		payload: (someData
			ifNil: [ IdentityDictionary new ]
			ifNotNil: [ IdentityDictionary newFrom: someData ])