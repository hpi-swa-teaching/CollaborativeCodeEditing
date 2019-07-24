session-managment
joinSessionWith: aSessionScopeArray and: aHash
		((CCEPackageManager default hashPackages: aSessionScopeArray) = aHash)
			ifTrue: [ self joinCleanSessionWith: aSessionScopeArray and: aHash ]
			ifFalse: [	 self joinDirtySessionWith: aSessionScopeArray and: aHash ].