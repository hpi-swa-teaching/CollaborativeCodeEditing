as yet unclassified
statusAction
	^ statusAction ifNil: [ statusAction := CCEClientUI connectAction ]