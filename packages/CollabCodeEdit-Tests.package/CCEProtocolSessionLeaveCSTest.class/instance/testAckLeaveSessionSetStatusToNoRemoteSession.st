requests backend
testAckLeaveSessionSetStatusToNoRemoteSession
	model receive: (CCEMessage ackLeaveSessionWith: nil) serialize.
	self assert: (CCESessionStatus noRemoteSession = session getStatus)