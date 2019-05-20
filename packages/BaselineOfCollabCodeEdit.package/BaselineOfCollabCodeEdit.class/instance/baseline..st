baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'CollabCodeEdit-Core';
				package: 'CollabCodeEdit-Server';
				package: 'CollabCodeEdit-Client';
				package: 'CollabCodeEdit-Tests' with: 
					[spec requires: #('CollabCodeEdit-Core' 
						'CollabCodeEdit-Server' 
						'CollabCodeEdit-Client')];
				yourself.
			spec
				group: 'default' with: #('CollabCodeEdit-Core');
				group: 'tests' with: #('CollabCodeEdit-Tests')];
				yourself