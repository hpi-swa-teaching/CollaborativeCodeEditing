accessing
status
	^ status ifNil: [status := CCESessionStatus new]