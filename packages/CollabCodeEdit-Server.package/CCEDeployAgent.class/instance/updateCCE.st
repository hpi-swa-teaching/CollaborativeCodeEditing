request handling
updateCCE
	| workingCopy |
	
	"Upon initial checkout these may not be specified and thus may block deployment"
	((Smalltalk class canUnderstand: #isHeadless) and: [ Smalltalk isHeadless ])
		ifTrue: [
			GitStamp defaultName: ''.
			GitStamp defaultEmail: '' ].
	
	workingCopy := SquotWorkingCopy new.
	workingCopy store: SquotImageStore new.
	workingCopy repository:
		(SquitRepository onDirectory: FileSystem memory / 'CollaborativeCodeEditing').

	workingCopy repository cloneFrom: self class updateRepository.

	workingCopy loadedHistorian:
		(workingCopy repository historianNamed: 'origin/', self class updateBranch).
	workingCopy loadVersion: workingCopy baseVersion interactive: false