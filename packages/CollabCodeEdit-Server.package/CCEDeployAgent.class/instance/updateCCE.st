request handling
updateCCE
	| workingCopy |
	
	workingCopy := SquotWorkingCopy new.
	workingCopy
		store: SquotImageStore new;
		repository: (SquitRepository
			onDirectory: FileSystem memory / 'CollaborativeCodeEditing').

	workingCopy repository cloneFrom: self class updateRepository.

	workingCopy
		loadedHistorian: (workingCopy repository historianNamed:
			'origin/', self class updateBranch);
		loadVersion: workingCopy baseVersion interactive: false