"
I represent Fortran Type statement
"
Class {
	#name : #FASTFortranStatementType,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranNotExecutableStatement',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementType class >> annotation [

	<FMClass: #StatementType super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
