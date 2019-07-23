I catch and send changes in a scope.

For that I need to know the scope (which is defined over a number of packages), so that I know which changes of the code I can ignore, and which I should send.
Once I catch an event I should send I user the CCEEditBuilder to build an edit, CCEMessage to build a message out of the edit, and give the whole package to the client.

It is important that I am mindful, and don't just broadcast all changes of the code. 
First, sending changes in other packages would be an information leak.
Second, when a different collaborator sends an edit, and that edit is applied, I shouldn't send the same edit out again. That would break things, and that would be bad.

I have a second main task: I build hashes out of packages, which can be used to compare the initial state of packages between different collaborators.

Instance Variables
	client:		aCCEClient
	ignorableEdits:		anOrderedCollection
	scope:	aStringArray

client
	- Who I can talk to to send my messages

ignorableEdits
	- Edits which I should not tell the client about

scope
	- For packages I should collect edits
