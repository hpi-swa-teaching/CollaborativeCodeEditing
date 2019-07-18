instance creation
new
	| newInstance |
	
	newInstance := self basicNew 
			initialize;
			systemOrganizer: SystemOrganization.
			
	self changed.
	^ newInstance