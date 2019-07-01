testing
hasEditOfType: aCCEEditClass
	^ self messages anySatisfy: [ :message | message payload isKindOf: aCCEEditClass ]