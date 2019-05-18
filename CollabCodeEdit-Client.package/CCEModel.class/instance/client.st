accessing
client
	^ client ifNil: [ 
		client := CCEClient new 
			owner: self;
			start. ]