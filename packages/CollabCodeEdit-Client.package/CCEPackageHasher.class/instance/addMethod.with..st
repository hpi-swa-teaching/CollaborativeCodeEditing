hashing
addMethod: aMethodSymbol with: aCompiledMethod
			| methodHash |
			
			methodHash := self calculateHashOfMethodSourceCode: aCompiledMethod.
			self methodsWithHashes add: (aMethodSymbol -> methodHash).
			self classHash: self classHash + methodHash