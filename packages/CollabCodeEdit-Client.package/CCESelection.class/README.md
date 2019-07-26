I know what the local user has selected.

My update method should be called when the local user changes their selection. 
Once that happens I look at where my Browser is, and give the selection message I created to the client.
I'm not respoonsible to know when changes happen, that is CCESelectionListeners responsibility.


Instance Variables
	categorySelection:		aString
	classSelection:		aString
	methodSelection:		aString
	client:		aCCEClient
	localAccount:		aCCEAccount

categorySelection
	- In which category the user currently is

classSelection
	- In which class the user currently is
	
methodSelection
	- Which method the user currently is

client
	- Which client I give my messages to

localAccount
	- Who my local user is

