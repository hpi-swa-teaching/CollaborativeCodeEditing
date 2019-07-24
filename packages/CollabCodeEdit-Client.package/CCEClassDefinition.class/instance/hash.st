comparing
hash
	^ (self superclass name asSymbol hash + 
		self subclass hash +
		self instVarNames hash +
		self classVarNames hash +
		self poolDictionaries hash +
		self category hash +
		self comment hash) hashMultiply