request handling
handleDeploy: aWebRequest
	self authenticate: aWebRequest action: [
		self parseURL: aWebRequest with: {
			1 -> [ :tokens |
				self deployCCE.
				aWebRequest send200Response:
					'Deployed ' , self class updateBranch , ' successfully.' ] .
			2 -> [ :tokens |
				self deployCCECommit: tokens last.
				aWebRequest send200Response:
					'Deployed ' , tokens last , ' successfully.' ]
		} ]