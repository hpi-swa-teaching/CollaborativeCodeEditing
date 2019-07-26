tests
testUpdateWithCCEBrowserRegistersAllBrowsers
	| browser |
	
	browser := CCEBrowser new.
	
	selectionListener 
		currentSelection: CCESelectionMock new;
		update: browser.
	self assert: (selectionListener currentSelection hasMessage: browser)