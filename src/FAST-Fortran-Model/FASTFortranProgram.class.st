"
A fortran program consists of one or more program units.
"
Class {
	#name : #FASTFortranProgram,
	#superclass : #FASTFortranEntity,
	#instVars : [
		'#name => FMMany type: #FASTFortranProgramUnit opposite: #parentProgramName'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranProgram class >> annotation [

	<FMClass: #Program super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTFortranProgram >> addName: anObject [
	<generated>
	^ self name add: anObject
]

{ #category : #accessing }
FASTFortranProgram >> name [
	"Relation named: #name type: #FASTFortranProgramUnit opposite: #parentProgramName"

	<generated>
	<FMComment: 'Program name'>
	<derived>
	^ name
]

{ #category : #accessing }
FASTFortranProgram >> name: anObject [

	<generated>
	name value: anObject
]

{ #category : #navigation }
FASTFortranProgram >> nameGroup [
	<generated>
	<navigation: 'Name'>
	^ MooseSpecializedGroup withAll: self name asSet
]
