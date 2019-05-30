as yet unclassified
enableButtonsWithLabels: aStringArray
self sessionCtrlButtons do: [:button | aStringArray do: [:labelToDisable | (button label = labelToDisable) ifTrue: [button enabled: true]]].