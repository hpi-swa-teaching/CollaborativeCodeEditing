helpers
prepareGitUpdateWorkingCopy
	| workingCopy |

	workingCopy := (SquotWorkingCopy new)
		store: SquotImageStore new;
		repository: (SquitRepository
			onDirectory: FileSystem memory / 'CollaborativeCodeEditing');
		yourself.
	workingCopy repository cloneFrom: self class updateRepository.

	workingCopy loadedHistorian: (workingCopy repository historianNamed:
		'origin/', self class updateBranch).
	
	^ workingCopy