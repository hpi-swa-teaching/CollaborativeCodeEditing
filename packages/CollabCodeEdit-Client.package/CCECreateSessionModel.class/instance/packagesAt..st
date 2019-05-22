accessing-packages
packagesAt: anIndex

	^ self selectedPackagesList includes: (self packagesList at: anIndex ifAbsent: [^ false])