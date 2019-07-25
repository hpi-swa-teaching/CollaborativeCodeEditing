session management
createSessionWith: anOrderedDictionary andCreator: aCCERemoteClient
	| session |

	session := CCERemoteSession new
		token: self createSessionToken;
		scope: (anOrderedDictionary at: #scope);
		initialChecksum: (anOrderedDictionary at: #checksum);
		addCreator: aCCERemoteClient;
		yourself.
  
	self sessions at: session token put: session.
	^ session