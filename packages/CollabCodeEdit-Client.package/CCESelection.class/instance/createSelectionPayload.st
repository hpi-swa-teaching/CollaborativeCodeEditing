accessing
createSelectionPayload
	^ OrderedDictionary newFrom: { 
		#selection -> (OrderedDictionary newFrom: {
			#categorySelection -> self categorySelection .
			#classSelection -> self classSelection .
			#methodSelection -> self methodSelection }) .
		#id -> self imageAccount humanReadableName }