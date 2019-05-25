running
setUp
	model:= CCEModel new.
	toolbuilder:= ToolBuilder default.
	server := CCEServer new start.
	toolbuilder open: model.
	