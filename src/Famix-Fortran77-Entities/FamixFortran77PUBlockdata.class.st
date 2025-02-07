"
a block data for common variable
"
Class {
	#name : #FamixFortran77PUBlockdata,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixTWithAccesses + FamixTWithLocalVariables',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#symbolTable => FMProperty defaultValue: ((Dictionary new))'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUBlockdata class >> annotation [

	<FMClass: #PUBlockdata super: #FamixFortran77ProgramUnit>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #initialization }
FamixFortran77PUBlockdata >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	symbolTable := Dictionary new.

]

{ #category : #accessing }
FamixFortran77PUBlockdata >> symbolTable [
	
	^ symbolTable
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]
