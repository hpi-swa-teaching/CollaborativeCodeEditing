startup
registerServices
	self
		registerStatusService;
		registerDeployService;
		registerRestartService;
		registerStopService;
		registerUpdateService