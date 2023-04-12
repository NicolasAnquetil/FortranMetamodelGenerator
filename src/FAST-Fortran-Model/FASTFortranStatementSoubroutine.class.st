"
I represent Fortran Soubroutine statement
"
Class {
	#name : #FASTFortranStatementSoubroutine,
	#superclass : #FASTFortranProcedure,
	#traits : 'FASTFortranTFortranNotExecutableStatement + FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait + FASTFortranTFortranWithSymbolicName classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementSoubroutine class >> annotation [

	<FMClass: #StatementSoubroutine super: #FASTFortranProcedure>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
