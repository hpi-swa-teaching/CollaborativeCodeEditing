accessing
statusAction
	^ statusAction ifNil: [ statusAction := self class connectAction ]