messageAPI
sendMessage: aMessageObject

	self sendData: ( FLSerializer serializeToByteArray: aMessageObject ).