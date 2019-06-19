requests backend
testSetOtherUserConsistentUpdatesTheConsistencyStateOfTheCollaborator
	| setOtherUserMessage | 
	
	session removeAllCollaborators.
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: {#id->'aKey'}).
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: {#id->'anotherKey'}).
	
	self assert: ((session collaborators at: 'aKey') consistencyState = CCECollaborator isUndefinedString).
	self assert: ((session collaborators at: 'anotherKey') consistencyState = CCECollaborator isUndefinedString).
	
	setOtherUserMessage := CCEMessage setOtherUser: 'aKey' consistent: true.	
	model receive: setOtherUserMessage serialize.
	
	setOtherUserMessage := CCEMessage setOtherUser: 'anotherKey' consistent: false.	
	model receive: setOtherUserMessage serialize.
	
	self assert: ((session collaborators at: 'aKey') consistencyState = CCECollaborator isConsistentString).
	self assert: ((session collaborators at: 'anotherKey') consistencyState = CCECollaborator isNotConsistentString)
