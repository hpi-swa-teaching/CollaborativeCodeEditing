as yet unclassified
reset
	self allInstVarNames do: [ :variableName | instance instVarNamed: variableName put: nil]