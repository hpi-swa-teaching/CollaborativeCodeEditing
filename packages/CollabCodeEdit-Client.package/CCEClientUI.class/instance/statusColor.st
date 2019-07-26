accessing
statusColor
	^ statusColor ifNil: [ statusColor := self class notConnectedColor ]