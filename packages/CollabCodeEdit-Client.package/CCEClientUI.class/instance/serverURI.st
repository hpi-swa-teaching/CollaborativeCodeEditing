as yet unclassified
serverURI
	^ serverURI ifNil: [ serverURI := CCEClient defaultServerURI ]