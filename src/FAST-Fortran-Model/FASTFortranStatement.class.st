"
An abstract subclass which represents a source code statemnet 
"
Class {
	#name : #FASTFortranStatement,
	#superclass : #FASTFortranScopableEntity,
	#instVars : [
		'#statementContainer => FMOne type: #FASTFortranStatementBlock opposite: #statements'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranStatement class >> annotation [

	<FMClass: #Statement super: #FASTFortranScopableEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranStatement >> statementContainer [
	"Relation named: #statementContainer type: #FASTFortranStatementBlock opposite: #statements"

	<generated>
	<FMComment: 'Block containing this statement.'>
	<container>
	^ statementContainer
]

{ #category : #accessing }
FASTFortranStatement >> statementContainer: anObject [

	<generated>
	statementContainer := anObject
]

{ #category : #navigation }
FASTFortranStatement >> statementContainerGroup [
	<generated>
	<navigation: 'StatementContainer'>
	^ MooseSpecializedGroup with: self statementContainer
]
