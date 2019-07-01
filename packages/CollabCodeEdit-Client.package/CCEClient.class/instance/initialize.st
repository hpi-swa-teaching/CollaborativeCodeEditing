initialize-release
initialize 
	self ui: ( CCEClientUI new client: self ).
	self connected: false