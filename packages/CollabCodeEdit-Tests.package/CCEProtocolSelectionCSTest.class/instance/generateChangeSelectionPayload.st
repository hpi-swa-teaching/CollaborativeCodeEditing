running
generateChangeSelectionPayload
	^ OrderedDictionary newFrom: {
		#id -> remoteId  . 
		#selection -> (OrderedDictionary newFrom: {
			#categorySelection -> remoteSelection categorySelection .
			#classSelection -> remoteSelection classSelection .
			#methodSelection -> remoteSelection methodSelection }) }