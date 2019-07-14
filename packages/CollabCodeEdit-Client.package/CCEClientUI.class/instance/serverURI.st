accessing
serverURI
	^ serverURI ifNil: [ serverURI := CCEClient defaultServerURI ]