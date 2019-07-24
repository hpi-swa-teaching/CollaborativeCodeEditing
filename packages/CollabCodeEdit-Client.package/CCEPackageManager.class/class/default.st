instance creation
default
	^ self instance ifNil: [ self instance: self new]