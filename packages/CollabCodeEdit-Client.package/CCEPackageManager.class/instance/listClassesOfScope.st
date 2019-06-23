accessing
listClassesOfScope
	| classes |
	
	classes := OrderedCollection new.
	session scope do: [ :package | classes addAll: (self listClassesOfPackage: package) ].
	^ classes