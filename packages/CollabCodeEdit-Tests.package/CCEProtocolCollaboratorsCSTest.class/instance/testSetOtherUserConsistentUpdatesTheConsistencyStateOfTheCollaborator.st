requests backend
testSetOtherUserConsistentUpdatesTheConsistencyStateOfTheCollaborator
	session removeAllCollaborators.
	session addCollaboratorFromPayload: (OrderedDictionary newFrom: { #id->'aKey' }).
	
	model receive: (CCEMessage setOtherUser: 'aKey' consistent: true) serialize.
	self assert: ((session collaborators at: 'aKey') consistencyState = CCECollaborator isConsistentString).
	
	model receive: (CCEMessage setOtherUser: 'aKey' consistent: false) serialize.
	self assert: ((session collaborators at: 'aKey') consistencyState = CCECollaborator isNotConsistentString)