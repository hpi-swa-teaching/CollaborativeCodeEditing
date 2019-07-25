request handling
handleUpdate: aWebRequest
	self authenticate: aWebRequest action: [
		self parseURL: aWebRequest with: {
			1 -> [ :tokens |
				self updateCCE.
				aWebRequest send200Response:
					'Update from ', self class updateBranch, ' completed.' ] .
			2 -> [ :tokens |
				self updateCCEToCommit: tokens last.
				aWebRequest send200Response:
					'Update from ', tokens last, ' completed.' ]
		} ]