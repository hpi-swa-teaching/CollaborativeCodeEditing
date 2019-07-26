I am the model for the dialog which appears upon creating a session. I let the user choose which packages to work on. Afterwards I let my parentmodel create the session with the selected problems.

Instance Variables
	packagesList:		anOrderedCollection
	parentModel:		aCCEModel
	selectedPackagesList:		anOrderedCollection

packagesList
	- A list of packages available to select.

parentModel
	- The CCEModel which created my.

selectedPackagesList
	- A list of packages selected by the user. This will be given to my parentmodel.
