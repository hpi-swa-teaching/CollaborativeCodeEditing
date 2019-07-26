helpers
parseURL: aWebRequest with: aHandlerMapping
	| tokens |

	tokens := aWebRequest url findTokens: '/'.
	
	(IdentityDictionary newFrom: aHandlerMapping)
		at: tokens size
		ifPresent: [ :value | value value: tokens ]
		ifAbsent: [ aWebRequest send404Response ]