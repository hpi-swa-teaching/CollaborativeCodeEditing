session management
createSession
	| session |

	session := CCERemoteSession newWithToken: self createSessionToken.
	self sessions at: session token put: session.
	^ session