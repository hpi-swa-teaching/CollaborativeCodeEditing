comparing
hash
	^ ( self categorySelection hash + self classSelection hash + self methodSelection hash)
			hashMultiply