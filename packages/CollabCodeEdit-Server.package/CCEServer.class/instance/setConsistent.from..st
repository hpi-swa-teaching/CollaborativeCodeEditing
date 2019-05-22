consistency managment
setConsistent: aBoolean from: aClient
	aClient session broadcastMsg: (CCEMessage setOtherUser: (aClient identifier) consistent: aBoolean )