"
I have parameters
"
Trait {
	#name : #FASTFortranTWithParameters,
	#instVars : [
		'#parameters => FMMany type: #FASTFortranTParameter opposite: #parameterOwner'
	],
	#category : #'FAST-Fortran-Model-Traits'
}

{ #category : #meta }
FASTFortranTWithParameters classSide >> annotation [

	<FMClass: #TWithParameters super: #Object>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTFortranTWithParameters >> addParameter: anObject [
	<generated>
	^ self parameters add: anObject
]

{ #category : #accessing }
FASTFortranTWithParameters >> parameters [
	"Relation named: #parameters type: #FASTFortranTParameter opposite: #parameterOwner"

	<generated>
	<FMComment: 'My parameters'>
	<derived>
	^ parameters
]

{ #category : #accessing }
FASTFortranTWithParameters >> parameters: anObject [

	<generated>
	parameters value: anObject
]

{ #category : #navigation }
FASTFortranTWithParameters >> parametersGroup [
	<generated>
	<navigation: 'Parameters'>
	^ MooseSpecializedGroup withAll: self parameters asSet
]
