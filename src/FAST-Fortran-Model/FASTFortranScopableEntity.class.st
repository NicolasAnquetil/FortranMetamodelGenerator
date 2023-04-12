"
A Entity with an optional scope

Statements are scopable because many statements allow to introduce local variables (e.g. for statement in Java)
"
Class {
	#name : #FASTFortranScopableEntity,
	#superclass : #FASTFortranEntity,
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranScopableEntity class >> annotation [

	<FMClass: #ScopableEntity super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
