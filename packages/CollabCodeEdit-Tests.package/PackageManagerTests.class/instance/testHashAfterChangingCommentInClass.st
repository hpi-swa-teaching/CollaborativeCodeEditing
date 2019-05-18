testHashing
testHashAfterChangingCommentInClass
	| packageManager testPackage testClass originalComment hashBeforeChange|
	
	testPackage := 'Signals'.
	packageManager := CCEPackageManager new sessionPackages: #( 'Signals' ).
	
	testClass := (packageManager listClassesOfPackage: testPackage) first.

	originalComment := testClass comment.
	
	hashBeforeChange := packageManager sessionHash.
	testClass comment: testClass comment, '++'.
	
	self deny: hashBeforeChange equals: packageManager sessionHash.
	
	testClass comment: originalComment.
	