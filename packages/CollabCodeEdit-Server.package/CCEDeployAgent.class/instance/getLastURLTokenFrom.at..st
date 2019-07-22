helpers
getLastURLTokenFrom: aWebRequest at: aNumber
	| tokens |

	tokens := aWebRequest url findTokens: '/'.
	
	tokens size > aNumber ifTrue: [ aWebRequest send404Response ].
	tokens size ~= aNumber ifTrue: [ ^ nil ].
	^ tokens last