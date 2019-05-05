event handling
onMessage: someData from: aClient
	| message |
	
	message := [ (CCEMessage deserialize: someData) ] ifError: [
		Transcript cr; show: 'Invalid message: ', someData.
		^ self ].
	
	[
		message type = #CREATE_SESSION ifTrue: [ self createSession: message from: aClient ].
		message type = #JOIN_SESSION ifTrue: [ self joinSession: message from: aClient ] ] ifError: [ :ex :rcvr |
		Transcript cr; show: 'Error handling message: ', ex. ]