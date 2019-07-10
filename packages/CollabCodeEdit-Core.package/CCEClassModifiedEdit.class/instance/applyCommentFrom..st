applying
applyCommentFrom: aCCEClassDefinition
	self halt.
	(Smalltalk classNamed: aCCEClassDefinition subclass asString) comment: aCCEClassDefinition comment.