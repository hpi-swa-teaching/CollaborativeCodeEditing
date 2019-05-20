session management
createSession
	| session |

	self sessionSeed: self sessionSeed + 1. "TODO: Use randomization"
	session := CCERemoteSession new initializeWithSeed: sessionSeed.
	self sessions at: session token put: session.
	^ session