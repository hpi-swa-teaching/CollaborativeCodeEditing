as yet unclassified
stop
	self halt.
	self currentDefaultBrowserClass allInstances do: [ :browser | 
		browser removeDependent: self ].
	self delete