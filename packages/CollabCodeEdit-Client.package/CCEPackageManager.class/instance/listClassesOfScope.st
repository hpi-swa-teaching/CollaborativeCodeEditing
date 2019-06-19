accessing
listClassesOfScope
	| classes |
	
	classes := OrderedCollection new.
	self scope do: [ :package | classes addAll: (self listClassesOfPackage: package) ].
	^ classes