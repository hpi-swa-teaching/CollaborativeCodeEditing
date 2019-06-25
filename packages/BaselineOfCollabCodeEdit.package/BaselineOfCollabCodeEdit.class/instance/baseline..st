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
				baseline: 'Squot' with: [
					spec repository: 'github://hpi-swa/Squot:master/src' ];
				package: 'CollabCodeEdit-Core';
				package: 'CollabCodeEdit-Server' with: [
					spec requires: #('OSProcess' 'CollabCodeEdit-Core') ];
				package: 'CollabCodeEdit-Client' with: [
					spec requires: #('CollabCodeEdit-Core') ];
				package: 'CollabCodeEdit-Tests' with: [
					spec requires: #(
						'CollabCodeEdit-Core'
						'CollabCodeEdit-Server'
						'CollabCodeEdit-Client') ];
				yourself.

			spec
				group: 'default' with: #(
					'CollabCodeEdit-Core'
					'CollabCodeEdit-Server'
					'CollabCodeEdit-Client');
				group: 'tests' with: #('CollabCodeEdit-Tests');
				yourself ]