requests backend
testUserConsistencyStateIsUndefinedAfterAdding
	session removeAllCollaborators.
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: { #id->'aKey' }).
	
	self assert: ((session collaborators at: 'aKey') consistencyState = CCECollaborator isUndefinedString)