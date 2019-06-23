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
		#selection -> remoteSelection }.
	
	session collaborators at: remoteId put: ( CCECollaborator new identifier: remoteId; consistencyState: CCECollaborator isConsistentString ).