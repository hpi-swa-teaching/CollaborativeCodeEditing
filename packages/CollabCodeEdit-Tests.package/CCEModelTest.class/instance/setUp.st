running
setUp
	toolbuilder:= ToolBuilder default.
	preTestWindows := World submorphs.
	model := self modelUnderTestClass new.
	ToolBuilder open: model.