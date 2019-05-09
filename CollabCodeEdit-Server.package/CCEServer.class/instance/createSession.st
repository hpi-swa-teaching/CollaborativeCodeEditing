session management
createSession
	| session |

	session := CCERemoteSession new initializeWithSeed: self createSessionToken.
	self sessions at: session token put: session.
	^ session