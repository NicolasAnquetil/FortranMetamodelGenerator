"
I represent Fortran Real statement. A real datum is an approximation of a real number. The real data type, REAL, which usually has the synonym, REAL*4, holds one real datum.The usual default size for a REAL item with no size specified is 4 bytes, and is aligned on 4-byte boundaries. However, these defaults can be changed by compiling with certain special options.A REAL element has a sign bit, an 8-bit exponent, and a 23-bit fraction. These REAL elements in f77 conform to the IEEE standard.
"
Class {
	#name : #FASTFortranStatementReal,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranNotExecutableStatement',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementReal class >> annotation [

	<FMClass: #StatementReal super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
