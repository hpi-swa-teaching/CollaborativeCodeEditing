hashing
calculateHashOfMethodSourceCode: aCompiledMethod
	^ aCompiledMethod getSource asString hash

	