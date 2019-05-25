as yet unclassified
disableButtonsWithLabels: aStringArray
	self sessionCtrlButtons do: [:button | button enabled: false]