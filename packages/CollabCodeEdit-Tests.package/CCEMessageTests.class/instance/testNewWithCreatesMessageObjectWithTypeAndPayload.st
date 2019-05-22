as yet unclassified
testNewWithCreatesMessageObjectWithTypeAndPayload
	| expectedCCEMessage generatedCCEMessage  | 
	
	expectedCCEMessage := CCEMessage new
		type: #expectedType;
		payload: (IdentityDictionary newFrom: {1->'42'}).
	generatedCCEMessage := (CCEMessage new: #expectedType with: (IdentityDictionary newFrom: {1->'42'})).
	
	self assert: expectedCCEMessage type equals: generatedCCEMessage type.
	self assert: expectedCCEMessage payload equals: generatedCCEMessage payload.	