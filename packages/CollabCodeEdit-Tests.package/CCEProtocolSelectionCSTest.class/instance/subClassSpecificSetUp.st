running
subClassSpecificSetUp
	cceSelection := CCESelection new client: client; localAccount: imageAccount.
	
	browser := Browser new setClass: CCESelection selector: #categorySelection.
	
	remoteSelection := CCESelection new categorySelection: #testCategory; classSelection: #testClass; methodSelection: #testMethod.
	remoteId := 'testId'.
	
	changeSelectionPayload := self generateChangeSelectionPayload.
	
	session collaborators at: remoteId put: ( CCECollaborator new identifier: remoteId; consistencyState: CCECollaborator isConsistentString )