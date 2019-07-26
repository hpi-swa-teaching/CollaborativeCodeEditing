comparing
hash
	^ ((self categorySelection hash 
		bitXor: self classSelection hash) 
		bitXor: self methodSelection hash) hashMultiply