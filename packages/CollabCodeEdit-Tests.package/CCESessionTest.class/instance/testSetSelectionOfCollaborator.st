tests collaborator managment
testSetSelectionOfCollaborator	
	| newSelection | 
	
	newSelection := OrderedDictionary newFrom: {
		#categorySelection -> #testCategory .
		#classSelection -> #testClass .
		#methodSelection -> #testMethod}. 
		
	self assert: testCollaborator currentSelection = nil.
	
	session addCollaboratorFromAccount: account.
	
	session setSelectionOfCollaborator: testIdentifier to: newSelection.
	
	self assert: (session collaborators at: testIdentifier) currentSelectionAsDictionary = newSelection.
	