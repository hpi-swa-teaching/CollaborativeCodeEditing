instance creation
new
	"We need to first create the instance and then call self changed, because otherwise the dependents would check for a new instance before it is created."
	| newInstance |
	
	newInstance := self basicNew initialize.
			
	self changed.
	^ newInstance