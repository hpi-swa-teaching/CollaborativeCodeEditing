accessing
serverURI
	^ serverURI ifNil: [ CCEClient defaultServerURI ]