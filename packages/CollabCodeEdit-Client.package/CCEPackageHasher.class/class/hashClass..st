hashing
hashClass: aClass
		^ ((((((self hashMethodsForClass: aClass)
			bitXor: aClass instVarNames hash)
			bitXor: aClass comment hash)
			bitXor: aClass classVariablesString hash)
			bitXor: aClass sharedPoolsString hash)
			bitXor: aClass category hash) hashMultiply