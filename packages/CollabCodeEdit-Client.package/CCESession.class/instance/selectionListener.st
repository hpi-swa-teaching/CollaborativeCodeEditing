accessing
selectionListener
	^ selectionListener ifNil: [ selectionListener := CCESelectionListener new ]