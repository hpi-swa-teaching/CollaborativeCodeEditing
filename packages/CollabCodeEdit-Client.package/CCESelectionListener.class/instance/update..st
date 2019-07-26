updating
update: aBrowserOrClass
	(aBrowserOrClass isKindOf: Browser) ifTrue: [
		self currentSelection updateSelectionWith: aBrowserOrClass ].
	aBrowserOrClass = self currentDefaultBrowserClass ifTrue: [
		self registerNewBrowser ]