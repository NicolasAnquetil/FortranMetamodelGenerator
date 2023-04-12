"
I represent Fortran Function statement
"
Class {
	#name : #FASTFortranStatementFunction,
	#superclass : #FASTFortranProcedure,
	#traits : 'FASTFortranTFortranNotExecutableStatement + FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait + FASTFortranTFortranWithSymbolicName classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementFunction class >> annotation [

	<FMClass: #StatementFunction super: #FASTFortranProcedure>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
