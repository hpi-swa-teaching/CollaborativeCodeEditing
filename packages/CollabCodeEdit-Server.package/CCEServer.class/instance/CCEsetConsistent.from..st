request handling
CCEsetConsistent: aBoolean from: aClient
	aClient session broadcastMsg: (CCEMessage setOtherUser: (aClient identifier) consistent: aBoolean )