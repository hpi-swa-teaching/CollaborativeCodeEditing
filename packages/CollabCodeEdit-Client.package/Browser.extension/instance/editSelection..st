*CollabCodeEdit-Client
editSelection: aSelection
	"Set the editSelection as requested."

	editSelection := aSelection.
	self changed: #editSelection.
	
	self changed: self