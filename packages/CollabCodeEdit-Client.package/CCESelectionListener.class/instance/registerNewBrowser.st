listening
registerNewBrowser
	self currentDefaultBrowserClass allInstances do: [ :browser | 
		browser addDependent: self ]