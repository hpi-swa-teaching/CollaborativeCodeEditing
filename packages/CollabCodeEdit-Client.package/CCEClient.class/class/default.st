instance creation
default
	^ instance ifNil: [ instance := self new]