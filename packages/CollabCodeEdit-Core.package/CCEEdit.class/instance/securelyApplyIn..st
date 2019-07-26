applying
securelyApplyIn: aCCESession
	(self mayBeAppliedIn: aCCESession)
		ifTrue: [
			aCCESession editManager ignoreEdit: self.	
			self apply.
			aCCESession editManager stopIgnoringEdit: self ]
		ifFalse: [ self error: 'CCEEdit to be applied is not in Scope' ]