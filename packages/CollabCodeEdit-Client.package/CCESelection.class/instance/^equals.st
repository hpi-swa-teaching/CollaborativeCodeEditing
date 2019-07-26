comparing
= aCCESelection
	^ (self categorySelection = aCCESelection categorySelection) and:
		(self classSelection = aCCESelection classSelection) and:
		(self methodSelection = aCCESelection methodSelection)