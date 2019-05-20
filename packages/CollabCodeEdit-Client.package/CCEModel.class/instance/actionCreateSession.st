actions
actionCreateSession
	self createSessionModel 
		packagesList: CCEPackageManager new listAvailablePackages;
		parentModel: self.
	^ ToolBuilder open: self createSessionModel
	