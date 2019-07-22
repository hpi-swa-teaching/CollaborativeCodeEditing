helpers
getURLTokensFrom: aWebRequest limit: aNumber
	| tokens |

	tokens := aWebRequest url findTokens: '/'.
	
	tokens size > aNumber ifTrue: [
		aWebRequest send404Response.
		^ nil ].
	^ tokens