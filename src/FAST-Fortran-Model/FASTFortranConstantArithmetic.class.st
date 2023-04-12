"
I represent Fortran Arithmetic Constant statement
"
Class {
	#name : #FASTFortranConstantArithmetic,
	#superclass : #FASTFortranConstant,
	#instVars : [
		'#isTyped => FMProperty',
		'#isSigned => FMProperty',
		'#sign => FMProperty'
	],
	#category : #'FAST-Fortran-Model-Entities'
}

{ #category : #meta }
FASTFortranConstantArithmetic class >> annotation [

	<FMClass: #ConstantArithmetic super: #FASTFortranConstant>
	<package: #'FAST-Fortran-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTFortranConstantArithmetic >> isSigned [

	<FMProperty: #isSigned type: #Boolean>
	<generated>
	<FMComment: 'Determines if the constant signed or not'>
	^ isSigned
]

{ #category : #accessing }
FASTFortranConstantArithmetic >> isSigned: anObject [
	<generated>
	isSigned := anObject
]

{ #category : #accessing }
FASTFortranConstantArithmetic >> isTyped [

	<FMProperty: #isTyped type: #Boolean>
	<generated>
	<FMComment: 'Determines if the constant typed or typeless'>
	^ isTyped
]

{ #category : #accessing }
FASTFortranConstantArithmetic >> isTyped: anObject [
	<generated>
	isTyped := anObject
]

{ #category : #accessing }
FASTFortranConstantArithmetic >> sign [

	<FMProperty: #sign type: #Number>
	<generated>
	<FMComment: 'Determines the arithmetic constant sign'>
	^ sign
]

{ #category : #accessing }
FASTFortranConstantArithmetic >> sign: anObject [
	<generated>
	sign := anObject
]
