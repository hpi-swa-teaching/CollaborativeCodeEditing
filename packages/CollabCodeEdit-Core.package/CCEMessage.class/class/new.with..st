instance creation
new: aString with: someData
	^ self new
		type: aString;
		payload: (someData
			ifNil: [ IdentityDictionary new ]
			ifNotNil: [ IdentityDictionary newFrom: someData ])