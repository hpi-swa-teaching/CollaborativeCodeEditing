comparing
hash
	^ (self class name hash bitXor: self editContent hash) hashMultiply