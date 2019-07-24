instance creation
new
	| newInstance |
	
	newInstance := self basicNew initialize.
			
	self changed.
	^ newInstance