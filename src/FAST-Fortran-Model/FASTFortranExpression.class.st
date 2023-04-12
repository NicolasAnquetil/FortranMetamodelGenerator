"
An abstract superclass representing an expression node of a source code.
"
Class {
	#name : #FASTFortranExpression,
	#superclass : #FASTFortranEntity,
	#traits : 'FASTFortranTArgument',
	#classTraits : 'FASTFortranTArgument classTrait',
	#instVars : [
		'#expressionStatementOwner => FMOne type: #FASTFortranExpressionStatement opposite: #expression',
		'#returnOwner => FMOne type: #FASTFortranReturnStatement opposite: #expression'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranExpression class >> annotation [

	<FMClass: #Expression super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranExpression >> expressionStatementOwner [
	"Relation named: #expressionStatementOwner type: #FASTFortranExpressionStatement opposite: #expression"

	<generated>
	<FMComment: 'The expression statement that own me (if it''s the case'>
	<container>
	<derived>
	^ expressionStatementOwner
]

{ #category : #accessing }
FASTFortranExpression >> expressionStatementOwner: anObject [

	<generated>
	expressionStatementOwner := anObject
]

{ #category : #navigation }
FASTFortranExpression >> expressionStatementOwnerGroup [
	<generated>
	<navigation: 'ExpressionStatementOwner'>
	^ MooseSpecializedGroup with: self expressionStatementOwner
]

{ #category : #accessing }
FASTFortranExpression >> returnOwner [
	"Relation named: #returnOwner type: #FASTFortranReturnStatement opposite: #expression"

	<generated>
	<FMComment: 'The return statement that own the expression (if it''s the case)'>
	<container>
	<derived>
	^ returnOwner
]

{ #category : #accessing }
FASTFortranExpression >> returnOwner: anObject [

	<generated>
	returnOwner := anObject
]

{ #category : #navigation }
FASTFortranExpression >> returnOwnerGroup [
	<generated>
	<navigation: 'ReturnOwner'>
	^ MooseSpecializedGroup with: self returnOwner
]
