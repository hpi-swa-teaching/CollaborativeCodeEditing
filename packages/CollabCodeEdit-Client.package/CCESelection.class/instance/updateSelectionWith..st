accessing
updateSelectionWith: aBrowser
	self categorySelection: aBrowser selectedSystemCategoryName;
		classSelection: aBrowser selectedClassName;
		methodSelection: aBrowser selectedMessageName.
	self client sendMsg: (CCEMessage changeSelectionWith: self createSelectionPayload)