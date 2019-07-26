tests
testHashchangesAfterMetaClassInformationChange
	| originalComment hashBeforeChange hashAfterChange |

	originalComment := testClass comment.
	[ hashBeforeChange := packageManager hashPackages: sessionScope.
	
		testClass comment: originalComment, 'This comment was changed by packageManagerTest'.
		hashAfterChange := packageManager hashPackages: self sessionScope.
	
		self deny: hashBeforeChange = hashAfterChange ]
			ensure: [ testClass comment: originalComment ]
