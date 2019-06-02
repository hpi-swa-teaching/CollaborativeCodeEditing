session management
createSessionWith: anOrderedDictionary
	| session |

	session := CCERemoteSession new
		token: self createSessionToken;
		scope: (anOrderedDictionary at: #scope);
		initialChecksum: (anOrderedDictionary at: #checksum).
  
	self sessions at: session token put: session.
	^ session