stepping
step
	self currentDefaultBrowserClass allInstances do: [:browser | 
		browser addDependent: self]