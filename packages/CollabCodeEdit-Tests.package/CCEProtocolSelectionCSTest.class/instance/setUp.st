running
setUp
	super setUp.
	
	cceSelection := CCESelection new client: client; imageAccount: imageAccount; yourself.
	browser := Browser new setClass: CCESelection selector: #categorySelection.
	remoteSelection := CCESelection new categorySelection: #testCategory; classSelection: #testClass; methodSelection: #testMethod.
	remoteId := 'testId'.
	changeSelectionPayload := self generateChangeSelectionPayload.
	session collaborators at: remoteId put: ( CCECollaborator new identifier: remoteId; consistencyState: CCECollaborator isConsistentString )