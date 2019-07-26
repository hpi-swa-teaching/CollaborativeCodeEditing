running
setUp
	client := CCEClient new.
	clientUI := client clientUI.
	session := CCESession new.
	clientUI session: session.