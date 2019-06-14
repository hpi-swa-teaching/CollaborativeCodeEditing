requests ui
joinSessionWith: aTokenString
	self session requestJoinSessionWith: aTokenString.
	self joinSessionModel sessionToken: aTokenString.