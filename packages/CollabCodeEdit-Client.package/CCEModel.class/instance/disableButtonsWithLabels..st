as yet unclassified
disableButtonsWithLabels: aStringArray
	self sessionCtrlButtons do: [:button | aStringArray do: [:labelToDisable | (button label = labelToDisable) ifTrue: [button enabled: false]]].