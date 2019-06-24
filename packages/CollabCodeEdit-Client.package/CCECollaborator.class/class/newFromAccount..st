instance creation
newFromAccount: anCCEAccount
	^ self new identifier: (anCCEAccount humanReadableName)