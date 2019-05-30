tests backend
testModelUnderstandsButtonsActions	
	model sessionCtrlButtons do: [ :button | 
		self assert: (CCEModel canUnderstand: button action)]