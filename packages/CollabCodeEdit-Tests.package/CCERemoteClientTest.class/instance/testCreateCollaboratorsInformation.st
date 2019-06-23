tests
testCreateCollaboratorsInformation
	| expectedDictionary | 
	
	expectedDictionary := OrderedDictionary newFrom: { #id -> remoteClient identifier . #isConsistent -> remoteClient isConsistent }.
	
	self assert: (expectedDictionary = remoteClient createCollaboratorInformation)