I am a wrapper around classes so that they can be serialised.

I am necessary because STON can't serialise classes: The serialisation is incomplete.
I'm responsible to build myself, but I'm not responsible to turn back into an ordinary class.
That responsibilit lies with CCEClassEdits.

All my instance variables map directly onto class variables, and thus don't need further documentation.

Instance Variables
	category:		aCategoryString
	classVarNames:		aClassVarString
	comment:		aCommentString
	instVarNames:		aInstVarString
	poolDictionaries:		aPoolDictionaryString
	subclass:		aCategoryString
	superclass:		aClass