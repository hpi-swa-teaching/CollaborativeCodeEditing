tests collaborator managment
testSetConsistencyStateOfCollaborator
	session collaborators at: testIdentifier put: testCollaborator.	
	self assert: (CCECollaborator isUndefinedString = testCollaborator consistencyState).
	
	session setConsistencyOfCollaborator: testIdentifier to: true.	
	self assert: (CCECollaborator isConsistentString = testCollaborator consistencyState).
	
	session setConsistencyOfCollaborator: testIdentifier to: false.	
	self assert: (CCECollaborator isNotConsistentString = testCollaborator consistencyState)
