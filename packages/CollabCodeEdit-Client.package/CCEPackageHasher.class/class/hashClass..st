hashing
hashClass: aClass
		^ (self hashMethodsForClass: aClass
				+ aClass instVarNames hash 
				+ aClass comment hash 
				+ aClass classVariablesString hash 
				+ aClass sharedPoolsString hash 
				+ aClass category hash) hashMultiply