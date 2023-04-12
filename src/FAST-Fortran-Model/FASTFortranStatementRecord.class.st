"
I represent Fortran Record statement
"
Class {
	#name : #FASTFortranStatementRecord,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranNotExecutableStatement + FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait + FASTFortranTFortranWithSymbolicName classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementRecord class >> annotation [

	<FMClass: #StatementRecord super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
