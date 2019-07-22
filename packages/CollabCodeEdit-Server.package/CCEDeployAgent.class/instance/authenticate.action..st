helpers
authenticate: aWebRequest action: aBlock
	self server 
		authenticate: aWebRequest
		realm: self class authRealm
		methods: #(digest basic) 
		do: aBlock