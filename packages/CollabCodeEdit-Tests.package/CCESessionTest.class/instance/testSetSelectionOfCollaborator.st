tests collaborator managment
testSetSelectionOfCollaborator	
	| newSelection | 
	
	newSelection := CCESelection new categorySelection: #testCategory; classSelection: #testClass; methodSelection: #testMethod.
	session collaborators at: testIdentifier put: testCollaborator.
		
	self assert: testCollaborator currentSelection = nil.
		
	session setSelectionOfCollaborator: testIdentifier to: newSelection.
	
	self assert: testCollaborator currentSelection = newSelection.
	