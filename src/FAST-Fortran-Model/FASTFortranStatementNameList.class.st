"
I represent Fortran NameList statement
"
Class {
	#name : #FASTFortranStatementNameList,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranNotExecutableStatement + FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranNotExecutableStatement classTrait + FASTFortranTFortranWithSymbolicName classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatementNameList class >> annotation [

	<FMClass: #StatementNameList super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
