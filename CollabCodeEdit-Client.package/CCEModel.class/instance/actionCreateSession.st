actions
actionCreateSession
	
	self createSessionModel 
		packagesList: {'helo' . 'huhu'};
		parentModel: self.
	ToolBuilder open: self createSessionModel.
	