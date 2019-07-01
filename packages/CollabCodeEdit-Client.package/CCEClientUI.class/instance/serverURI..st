as yet unclassified
serverURI: aString
	serverURI := aString asString.
	self client serverURI: aString asString.
	self changed: #serverURI