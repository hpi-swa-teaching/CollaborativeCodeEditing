tests
testHashchangesAfterMetaClassInformationChange
	| originalComment  testClass hashBeforeChange hashAfterChange |

	CCESession default scope: #( 'Kernel-Objects' ).
	testClass := (PackageInfo named: 'Kernel-Objects') classes first.
	originalComment := testClass comment.
	[ hashBeforeChange := packageManager hashPackages: #( 'Kernel-Objects' ).
	
	testClass comment: 'This comment was changed by packageManagerTest'.
	hashAfterChange := packageManager hashPackages: #( 'Kernel-Objects' ).
	
	self deny: hashBeforeChange = hashAfterChange. ]
	ensure: [testClass comment: originalComment]