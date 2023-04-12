"
A fortran program unit is a sequence of statements, terminated by an END statement. Every program unit is either a main program or a subprogram. If a program is to be executable, it must have a main program
"
Class {
	#name : #FASTFortranProgramUnit,
	#superclass : #FASTFortranEntity,
	#instVars : [
		'#parentProgramName => FMOne type: #FASTFortranProgram opposite: #name',
		'#statements => FMMany type: #FASTFortranFortranStatement opposite: #parentUnitName'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranProgramUnit class >> annotation [

	<FMClass: #ProgramUnit super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTFortranProgramUnit >> addStatement: anObject [
	<generated>
	^ self statements add: anObject
]

{ #category : #accessing }
FASTFortranProgramUnit >> parentProgramName [
	"Relation named: #parentProgramName type: #FASTFortranProgram opposite: #name"

	<generated>
	<FMComment: 'Name of the parent program'>
	<container>
	^ parentProgramName
]

{ #category : #accessing }
FASTFortranProgramUnit >> parentProgramName: anObject [

	<generated>
	parentProgramName := anObject
]

{ #category : #navigation }
FASTFortranProgramUnit >> parentProgramNameGroup [
	<generated>
	<navigation: 'ParentProgramName'>
	^ MooseSpecializedGroup with: self parentProgramName
]

{ #category : #accessing }
FASTFortranProgramUnit >> statements [
	"Relation named: #statements type: #FASTFortranFortranStatement opposite: #parentUnitName"

	<generated>
	<FMComment: 'Statements of the PU '>
	<derived>
	^ statements
]

{ #category : #accessing }
FASTFortranProgramUnit >> statements: anObject [

	<generated>
	statements value: anObject
]

{ #category : #navigation }
FASTFortranProgramUnit >> statementsGroup [
	<generated>
	<navigation: 'Statements'>
	^ MooseSpecializedGroup withAll: self statements asSet
]
