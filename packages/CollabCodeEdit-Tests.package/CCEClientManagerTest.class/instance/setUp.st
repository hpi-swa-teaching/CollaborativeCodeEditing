running
setUp
	clients := (OrderedCollection newFrom: { CCEClientMock new . CCEClientMock new. CCEClientMock new. }).
	clientManager :=  CCEClientManager new.
	clients do: [ :client | clientManager addClient: client ]
	
