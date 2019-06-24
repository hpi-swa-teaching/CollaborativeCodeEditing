baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				project: 'OSProcess' with: [
					spec
						className: 'ConfigurationOfOSProcess';
						repository: 'http://www.squeaksource.com/OSProcess';
						versionString: #'stable' ];
				package: 'CollabCodeEdit-Core';
				package: 'CollabCodeEdit-Server' with: [
					spec requires: #('OSProcess') ];
				package: 'CollabCodeEdit-Client';
				package: 'CollabCodeEdit-Tests' with: [
					spec requires: #('CollabCodeEdit-Core' 
						'CollabCodeEdit-Server' 
						'CollabCodeEdit-Client') ];
				yourself.
			spec
				group: 'default' with: #('CollabCodeEdit-Core');
				group: 'tests' with: #('CollabCodeEdit-Tests');
				yourself ]