tests
testHashchangesAfterMetaClassInformationChange
	| originalComment  testClass hashBeforeChange hashAfterChange |

	CCESession default scope: #( 'CollabCodeEdit-Tests' ).
	testClass := Environment default classNamed: 'CCETestDummy'.
	originalComment := testClass comment.
	[ hashBeforeChange := packageManager hashPackages: #( 'CollabCodeEdit-Tests' ).
	
	testClass comment: 'This comment was changed by packageManagerTest'.
	hashAfterChange := packageManager hashPackages: #( 'CollabCodeEdit-Tests' ).
	
	self deny: hashBeforeChange = hashAfterChange. ]
	ensure: [ testClass comment: originalComment ]
