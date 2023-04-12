"
I represent Fortran Character statement. The character data type, CHARACTER, which has the synonym, CHARACTER*1, holds one character. The character is enclosed in apostrophes (') or quotes (""). @ Allowing quotes ("") is nonstandard; if you compile with the -xl option, quotes mean something else, and you must use apostrophes to enclose a string. The data of type CHARACTER is always unsigned. A CHARACTER item occupies 1 byte (8 bits) of storage and is aligned on 1-byte boundaries.
"
Class {
	#name : #FASTFortranStatementCharacter,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranNotExecutableStatement',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementCharacter class >> annotation [

	<FMClass: #StatementCharacter super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
