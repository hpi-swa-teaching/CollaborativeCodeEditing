running
setUp
	session := CCESession new.
	testIdentifier := 'testName'.
	account := CCEAccount new humanReadableName: testIdentifier.	
	session imageAccount: account.
	
	testCollaborator := CCECollaborator new identifier: testIdentifier.
	clientMock := CCEClientMock new.
	session client: clientMock