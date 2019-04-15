baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'CollabCodeEdit-Core';
				package: 'CollabCodeEdit-Tests' with: [spec requires: #('CollabCodeEdit-Core')];
				yourself.
			spec
				group: 'default' with: #('CollabCodeEdit-Core');
				group: 'tests' with: #('CollabCodeEdit-Tests')];
				yourself