"
A return statement node. Contains a reference to the expression which is returned.  
"
Class {
	#name : #FASTFortranReturnStatement,
	#superclass : #FASTFortranStatement,
	#instVars : [
		'#expression => FMOne type: #FASTFortranExpression opposite: #returnOwner'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranReturnStatement class >> annotation [

	<FMClass: #ReturnStatement super: #FASTFortranStatement>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranReturnStatement >> expression [
	"Relation named: #expression type: #FASTFortranExpression opposite: #returnOwner"

	<generated>
	<FMComment: 'The expression returned'>
	^ expression
]

{ #category : #accessing }
FASTFortranReturnStatement >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTFortranReturnStatement >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
