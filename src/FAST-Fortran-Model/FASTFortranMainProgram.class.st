"
A fortran main program. If a program is to be executable, it must have a main program
"
Class {
	#name : #FASTFortranMainProgram,
	#superclass : #FASTFortranProgramUnit,
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranMainProgram class >> annotation [

	<FMClass: #MainProgram super: #FASTFortranProgramUnit>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]
