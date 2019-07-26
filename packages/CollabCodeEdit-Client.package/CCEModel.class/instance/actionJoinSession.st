actions
actionJoinSession
	(UIManager getDefault request: 'Please insert valid session token')
		ifNotEmpty: [ :sessionToken | self joinSessionWith: sessionToken ]