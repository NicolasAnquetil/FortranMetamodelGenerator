"
I represent Fortran Array dimension declaration
"
Class {
	#name : #FASTFortranArrayDimensionDeclarator,
	#superclass : #FASTFortranEntity,
	#instVars : [
		'#dl => FMProperty',
		'#du => FMProperty'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranArrayDimensionDeclarator class >> annotation [

	<FMClass: #ArrayDimensionDeclarator super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranArrayDimensionDeclarator >> dl [

	<FMProperty: #dl type: #Number>
	<generated>
	<FMComment: 'Determines the array dimension declaration lower bound'>
	^ dl
]

{ #category : #accessing }
FASTFortranArrayDimensionDeclarator >> dl: anObject [
	<generated>
	dl := anObject
]

{ #category : #accessing }
FASTFortranArrayDimensionDeclarator >> du [

	<FMProperty: #du type: #Number>
	<generated>
	<FMComment: 'Determines the array dimension declaration upper bound'>
	^ du
]

{ #category : #accessing }
FASTFortranArrayDimensionDeclarator >> du: anObject [
	<generated>
	du := anObject
]
