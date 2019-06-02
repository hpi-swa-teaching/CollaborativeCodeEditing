tests
testHashchangesAfterMetaClassInformationChange
	| originalComment  testClass hashBeforeChange hashAfterChange |

	CCESession default scope: #( 'Signals' ).
	
	testClass := (PackageInfo named: 'Signals') classes first.
	
	originalComment := testClass comment.
 
	hashBeforeChange := packageManager hashPackages: #( 'Signals' ).
	
	testClass comment: 'This comment was changed by packageManagerTest'.
	
 	hashAfterChange := packageManager hashPackages: #( 'Signals' ).
	
	self deny: hashBeforeChange equals: hashAfterChange.
	
	testClass comment: originalComment