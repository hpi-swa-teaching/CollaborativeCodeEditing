tests
testNewFromAccountFillsNewInstanceWithAccountsIdentifier
	| createdCCECollaborator | 
	
	createdCCECollaborator := CCECollaborator newFromAccount: account.
	self assert: (createdCCECollaborator isKindOf: CCECollaborator).
	self assert: account humanReadableName equals: createdCCECollaborator identifier