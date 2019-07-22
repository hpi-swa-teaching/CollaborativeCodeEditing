actions
updateCCEToCommit: aHash
	| workingCopy |

	workingCopy := self prepareGitUpdateWorkingCopy.
	workingCopy loadVersion: (workingCopy repository versionAt: aHash) interactive: false