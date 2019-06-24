request handling
ensureGitStamp
	"Upon initial checkout these may not be specified and thus may block deployment"

	((Smalltalk class canUnderstand: #isHeadless) and: [ Smalltalk isHeadless ])
		ifTrue: [
			GitStamp defaultName: self class defaultGitName.
			GitStamp defaultEmail: self class defaultGitEmail ]