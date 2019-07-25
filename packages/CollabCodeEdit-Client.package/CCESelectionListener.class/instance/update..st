stepping
update: aBrowserOrClass
	self flag: #TODO. "This was commented out, should that be?"
	(aBrowserOrClass isKindOf: Browser) ifTrue: 
		[ "self currentSelection updateSelectionWith: aBrowserOrClass" ].
	aBrowserOrClass = self currentDefaultBrowserClass ifTrue:
		[ self registerNewBrowser ]