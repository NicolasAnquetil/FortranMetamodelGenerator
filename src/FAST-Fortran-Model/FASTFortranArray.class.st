"
I represent Fortran Array
"
Class {
	#name : #FASTFortranArray,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranWithSymbolicName classTrait',
	#instVars : [
		'#name => FMProperty',
		'#dimensions => FMProperty'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranArray class >> annotation [

	<FMClass: #Array super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranArray >> dimensions [

	<FMProperty: #dimensions type: #String>
	<generated>
	<FMComment: 'Determines the array dimensions'>
	^ dimensions
]

{ #category : #accessing }
FASTFortranArray >> dimensions: anObject [
	<generated>
	dimensions := anObject
]

{ #category : #accessing }
FASTFortranArray >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Determines the array name'>
	^ name
]

{ #category : #accessing }
FASTFortranArray >> name: anObject [
	<generated>
	name := anObject
]
