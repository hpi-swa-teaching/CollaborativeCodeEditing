applying
apply
	| classDefinition | 
	
	classDefinition := self editContent.
	
	self applySmalltalkClassDefinitionFrom: classDefinition;
		applyCommentFrom: classDefinition.