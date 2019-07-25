startup
registerServices
	self
		registerServiceAt: '/' action: [ :request | self handleStatus: request ];
		registerServiceAt: '/deploy' action: [ :request | self handleDeploy: request ];
		registerServiceAt: '/restart' action: [ :request | self handleRestart: request ];
		registerServiceAt: '/stop' action: [ :request | self handleStop: request ];
		registerServiceAt: '/update' action: [ :request | self handleUpdate: request ]