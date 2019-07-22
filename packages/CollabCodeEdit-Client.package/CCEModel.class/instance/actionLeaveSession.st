actions
actionLeaveSession
	(UIManager getDefault confirm: 'Do you really want to leave the session?')
		ifTrue: [ self leaveSession ]