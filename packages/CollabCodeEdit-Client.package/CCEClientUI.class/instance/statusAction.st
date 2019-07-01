accessing
statusAction
	^ statusAction ifNil: [ CCEClientUI connectAction ]