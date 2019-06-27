request handling
updateCCE
	[ Metacello new
	    baseline: 'CollabCodeEdit';
	    repository: self class getUpdateRepo;
	    onConflict: [ :ex | ex pass ];
	    load ] on: Warning do: [ :w | w resume ]