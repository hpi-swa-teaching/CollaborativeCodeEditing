running
subClassSpecificSetUp
	cceSelection := CCESelection new client: client; imageAccount: imageAccount.
	browser := Browser new
		selectCategoryForClass: CCESelection; 
		selectClass: #CCESelection;
		selectMessageNamed: #categorySelection.
	
	remoteSelection := CCESelection new categorySelection: #testCategory; classSelection: #testClass; methodSelection: #testMethod.
	remoteId := 'testId'.
	
	changeSelectionPayload := OrderedDictionary newFrom: {
		#id -> remoteId  . 
		#selection -> (OrderedDictionary newFrom: {
			#categorySelection -> remoteSelection categorySelection .
			#classSelection -> remoteSelection classSelection .
			#methodSelection -> remoteSelection methodSelection }) }.
	
	session collaborators at: remoteId put: ( CCECollaborator new identifier: remoteId; consistencyState: CCECollaborator isConsistentString ).