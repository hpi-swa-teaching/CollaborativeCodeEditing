tests
testNewFromAccountFillsNewInstanceWithAccountsIdentifier
	| createdCCECollaborator account| 
	
	account := CCEAccount new.
	account humanReadableName: 'testName'.
	
	createdCCECollaborator := CCECollaborator newFromAccount: account.
	self assert: (createdCCECollaborator isKindOf: CCECollaborator).
	self assert: account humanReadableName equals: createdCCECollaborator identifier