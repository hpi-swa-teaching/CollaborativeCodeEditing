as yet unclassified
setUp
	server := CCEServer new start.
	client1 := CCEClient new startTestClientToLocalhost.
	client2 := CCEClient new startTestClientToLocalhost.
	client3 := CCEClient new startTestClientToLocalhost.
	
	session1 := CCESession new.
	session2 := CCESession new.
	session3 := CCESession new.