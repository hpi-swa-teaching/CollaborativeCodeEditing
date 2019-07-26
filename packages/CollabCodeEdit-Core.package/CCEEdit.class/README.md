I am an edit that was created by some client, to be applied by some other client.

I hold all the information necessary to apply myself, and I'm the one responsible for applying myself.

I am an abstract class.
Since there are different kinds of edits my subclasses need to overwrite my apply method.
Some of my subclasses might need more information than others.
Instead of adding variables to the class they should add fields to the editContent, so that all CCEEdits share the same API.

Instance Variables
	editContent:		anItem
	package:		aPackageInfo

editContent
	- An abstract variable holding the Information necessary for applying myself. It is specified by the subclasses.
	
package
	- An object used to identify the corresponding package.