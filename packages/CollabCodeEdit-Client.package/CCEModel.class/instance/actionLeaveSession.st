actions
actionLeaveSession
	self leaveSessionModel parentModel: self.
	^ ToolBuilder open: self leaveSessionModel