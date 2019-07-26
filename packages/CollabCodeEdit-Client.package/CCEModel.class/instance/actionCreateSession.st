actions
actionCreateSession
	self
		createSessionModel 
		packagesList: CCEPackageHasher listAvailablePackages;
		parentModel: self.
	^ ToolBuilder open: self createSessionModel
	