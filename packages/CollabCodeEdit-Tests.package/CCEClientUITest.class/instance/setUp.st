running
setUp
	client := CCEClient new.
	clientUI := client ui.
	session := CCESession new.
	clientUI session: session.