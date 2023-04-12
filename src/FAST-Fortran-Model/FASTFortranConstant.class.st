"
I represent Fortran Constant statement
"
Class {
	#name : #FASTFortranConstant,
	#superclass : #FASTFortranEntity,
	#instVars : [
		'#type => FMProperty',
		'#value => FMProperty'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranConstant class >> annotation [

	<FMClass: #Constant super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranConstant >> type [

	<FMProperty: #type type: #String>
	<generated>
	<FMComment: 'Determines the constant type'>
	^ type
]

{ #category : #accessing }
FASTFortranConstant >> type: anObject [
	<generated>
	type := anObject
]

{ #category : #accessing }
FASTFortranConstant >> value [

	<FMProperty: #value type: #String>
	<generated>
	<FMComment: 'Determines the constant value'>
	^ value
]

{ #category : #accessing }
FASTFortranConstant >> value: anObject [
	<generated>
	value := anObject
]
