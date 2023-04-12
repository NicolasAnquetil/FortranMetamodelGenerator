"
I represent Fortran Variable
"
Class {
	#name : #FASTFortranVariable,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTFortranWithSymbolicName',
	#classTraits : 'FASTFortranTFortranWithSymbolicName classTrait',
	#instVars : [
		'#name => FMProperty',
		'#type => FMProperty',
		'#value => FMProperty',
		'#defined => FMProperty'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranVariable class >> annotation [

	<FMClass: #Variable super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranVariable >> defined [

	<FMProperty: #defined type: #Boolean>
	<generated>
	<FMComment: 'Determines if the variableis defined (stores a value)'>
	^ defined
]

{ #category : #accessing }
FASTFortranVariable >> defined: anObject [
	<generated>
	defined := anObject
]

{ #category : #accessing }
FASTFortranVariable >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Determines the variable name'>
	^ name
]

{ #category : #accessing }
FASTFortranVariable >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FASTFortranVariable >> type [

	<FMProperty: #type type: #String>
	<generated>
	<FMComment: 'Determines the variable type'>
	^ type
]

{ #category : #accessing }
FASTFortranVariable >> type: anObject [
	<generated>
	type := anObject
]

{ #category : #accessing }
FASTFortranVariable >> value [

	<FMProperty: #value type: #String>
	<generated>
	<FMComment: 'Determines the variable value'>
	^ value
]

{ #category : #accessing }
FASTFortranVariable >> value: anObject [
	<generated>
	value := anObject
]
