running
setUp
	session := CCESession new.
	clientMock := CCEClientMock new.
	session client: clientMock