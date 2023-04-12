"
I represent Fortran RecordField
"
Class {
	#name : #FASTFortranRecordField,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranWithSymbolicName classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranRecordField class >> annotation [

	<FMClass: #RecordField super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
