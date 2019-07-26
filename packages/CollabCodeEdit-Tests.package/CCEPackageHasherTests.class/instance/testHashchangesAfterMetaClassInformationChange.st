tests
testHashchangesAfterMetaClassInformationChange
	| originalComment hashBeforeChange |

	originalComment := testClass comment.
	[ hashBeforeChange := CCEPackageHasher hashPackages: self sessionScope.
	
		testClass comment: originalComment, 
			'This comment was changed by packageManagerTest'.
		self deny: hashBeforeChange = 
					(CCEPackageHasher hashPackages: self sessionScope) ]
			ensure: [ testClass comment: originalComment ]
