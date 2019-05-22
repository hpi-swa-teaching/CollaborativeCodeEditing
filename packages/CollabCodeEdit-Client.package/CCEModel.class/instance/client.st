accessing
client
	^ client ifNil: [ 
		client := CCEClient default
			owner: self;
			start]