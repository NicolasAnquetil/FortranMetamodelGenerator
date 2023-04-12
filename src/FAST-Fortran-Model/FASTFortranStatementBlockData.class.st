"
I represent Fortran BlockData statement
"
Class {
	#name : #FASTFortranStatementBlockData,
	#superclass : #FASTFortranSubprogram,
	#traits : 'FASTFortranTFortranNotExecutableStatement + FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait + FASTFortranTFortranWithSymbolicName classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementBlockData class >> annotation [

	<FMClass: #StatementBlockData super: #FASTFortranSubprogram>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
