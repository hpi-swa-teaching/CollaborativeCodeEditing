hashing
calculateHashOfMethodSourceCode: aCompiledMethod

	^ aCompiledMethod sourceCode asString hash

	