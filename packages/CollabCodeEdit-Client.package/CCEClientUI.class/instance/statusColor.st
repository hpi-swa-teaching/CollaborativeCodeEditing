accessing
statusColor
	^ statusColor ifNil: [ statusColor := CCEClientUI notConnectedColor ]