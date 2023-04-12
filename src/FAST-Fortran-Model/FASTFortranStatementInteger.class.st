"
I represent Fortran Integer statement. The integer data type, INTEGER, holds a signed integer.
The default size for INTEGER with no size specified is 4, and is aligned on 4-byte boundaries. However, these defaults can be
changed by compiling with certain special options.
"
Class {
	#name : #FASTFortranStatementInteger,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranNotExecutableStatement',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementInteger class >> annotation [

	<FMClass: #StatementInteger super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
