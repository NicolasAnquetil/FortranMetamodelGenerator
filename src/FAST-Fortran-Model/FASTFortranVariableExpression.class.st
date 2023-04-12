"
A node that wraps around structural entity
"
Class {
	#name : #FASTFortranVariableExpression,
	#superclass : #FASTFortranExpression,
	#traits : 'FASTFortranTParameter + FamixTNamedEntity',
	#classTraits : 'FASTFortranTParameter classTrait + FamixTNamedEntity classTrait',
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranVariableExpression class >> annotation [

	<FMClass: #VariableExpression super: #FASTFortranExpression>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
