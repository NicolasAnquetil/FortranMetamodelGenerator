"
I represent Fortran Double Precision statement. A double-precision datum is an approximation of a real number. The double-precision data type, DOUBLE PRECISION, which has the synonym, REAL*8, holds one double-precision datum.The default size for DOUBLE PRECISION with no size specified is 8 bytes.A DOUBLE PRECISION element has a sign bit, an 11-bit exponent, and a 52-bit fraction. These DOUBLE PRECISION elements in f77 conform to the IEEE standard for double-precision floating-point data.
"
Class {
	#name : #FASTFortranStatementDoublePrecision,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranNotExecutableStatement',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementDoublePrecision class >> annotation [

	<FMClass: #StatementDoublePrecision super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
