startup
registerServices
	self
		registerServiceAt: '/' action: [ :req | self handleStatus: req ];
		registerServiceAt: '/deploy' action: [ :req | self handleDeploy: req ];
		registerServiceAt: '/restart' action: [ :req | self handleRestart: req ];
		registerServiceAt: '/stop' action: [ :req | self handleStop: req ];
		registerServiceAt: '/update' action: [ :req | self handleUpdate: req ]