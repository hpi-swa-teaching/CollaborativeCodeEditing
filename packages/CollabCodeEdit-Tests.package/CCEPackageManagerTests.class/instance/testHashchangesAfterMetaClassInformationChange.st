tests
testHashchangesAfterMetaClassInformationChange
	| originalComment  testClass hashBeforeChange hashAfterChange |

	CCESession default scope: testPackagesArray.
	
	testClass := (PackageInfo named: testPackage) classes first.
	
	originalComment := testClass comment.
 
	hashBeforeChange := packageManager hashPackages: testPackagesArray.
	
	testClass comment: 'This comment was changed by packageManagerTest'.
	
 	hashAfterChange := packageManager hashPackages: testPackagesArray.
	
	self deny: (hashBeforeChange == hashAfterChange).
	
	testClass comment: originalComment