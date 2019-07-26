comparing
hash
	^ (((((self superclass name asSymbol hash 
		bitXor: self subclass hash)
		bitXor: self instVarNames hash)
		bitXor: self classVarNames hash)
		bitXor: self poolDictionaries hash)
		bitXor: self category hash)
		bitXor: self comment hash