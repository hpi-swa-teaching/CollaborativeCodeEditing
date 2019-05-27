tests backend
testModelUnderstandsButtonsActions
	model buildButtonsWith: toolbuilder.
	
	model sessionCtrlButtons do: [ :button | 
		self assert: (CCEModel canUnderstand: button action)]