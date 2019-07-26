actions
updateCCE
	| workingCopy |

	workingCopy := self prepareGitUpdateWorkingCopy.
	workingCopy
		loadVersion: workingCopy baseVersion
		interactive: false