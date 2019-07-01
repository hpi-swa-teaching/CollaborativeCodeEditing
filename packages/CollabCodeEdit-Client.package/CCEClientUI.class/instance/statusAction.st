accessing
statusAction
	^ statusAction ifNil: [ statusAction := CCEClientUI connectAction ]