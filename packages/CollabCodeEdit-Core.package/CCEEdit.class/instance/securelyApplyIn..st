applying
securelyApplyIn: aCCESession
	(self mayBeAppliedIn: aCCESession)
		ifTrue: [ 			
			aCCESession packageManager ignoreEdit: self.			
			self apply.
			aCCESession packageManager stopIgnoringEdit: self ]
		ifFalse: [ self error: 'CCEEdit to be applied is not in Scope' ]