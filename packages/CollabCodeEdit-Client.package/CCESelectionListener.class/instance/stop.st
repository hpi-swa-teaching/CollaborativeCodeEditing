stepping
stop
	self currentDefaultBrowserClass allInstances do: [ :browser | 
		browser removeDependent: self ].
	self delete