listening
stop
	self currentDefaultBrowserClass allInstances do: [ :browser | 
		browser removeDependent: self ].
	CCEBrowser removeDependent: self.
	self delete