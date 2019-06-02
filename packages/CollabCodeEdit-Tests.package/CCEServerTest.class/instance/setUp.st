running
setUp
	server := CCEServer new start.
	testPayload := IdentityDictionary newFrom: {#scope -> #('Signals') . #checksum -> 12345}