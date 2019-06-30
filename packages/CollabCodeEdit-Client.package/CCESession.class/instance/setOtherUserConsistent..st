collaborator managment
setOtherUserConsistent: anOrderedDictionary
	| identifier isConsistent | 
	
	identifier := anOrderedDictionary at: #id.
	isConsistent := anOrderedDictionary at: #isConsistent.
	
	self setConsistencyOfCollaborator: identifier to: isConsistent