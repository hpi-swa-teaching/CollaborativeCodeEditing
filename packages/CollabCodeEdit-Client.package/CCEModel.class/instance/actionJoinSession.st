actions
actionJoinSession
	self joinSessionModel parentModel: self.
	^ ToolBuilder open: self joinSessionModel