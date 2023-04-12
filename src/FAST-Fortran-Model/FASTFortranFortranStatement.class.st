Class {
	#name : #FASTFortranFortranStatement,
	#superclass : #FASTFortranEntity,
	#instVars : [
		'#label => FMProperty',
		'#parentUnitName => FMOne type: #FASTFortranProgramUnit opposite: #statements'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranFortranStatement class >> annotation [

	<FMClass: #FortranStatement super: #FASTFortranEntity>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranFortranStatement >> label [

	<FMProperty: #label type: #String>
	<generated>
	<FMComment: 'Determines the statement label which consists of 1 to 5 digits, with at least one nonzero'>
	^ label
]

{ #category : #accessing }
FASTFortranFortranStatement >> label: anObject [
	<generated>
	label := anObject
]

{ #category : #accessing }
FASTFortranFortranStatement >> parentUnitName [
	"Relation named: #parentUnitName type: #FASTFortranProgramUnit opposite: #statements"

	<generated>
	<FMComment: 'Name of the parent unit'>
	<container>
	^ parentUnitName
]

{ #category : #accessing }
FASTFortranFortranStatement >> parentUnitName: anObject [

	<generated>
	parentUnitName := anObject
]

{ #category : #navigation }
FASTFortranFortranStatement >> parentUnitNameGroup [
	<generated>
	<navigation: 'ParentUnitName'>
	^ MooseSpecializedGroup with: self parentUnitName
]
