accessing
createSelectionPayload
	^ OrderedDictionary newFrom: { 
		#selection -> self .
		#id -> self imageAccount humanReadableName }