"
# F77 Metamodel generator

```txt
    Instance Variables
	access:		<Object>
	argument:		<Object>
	body:		<Object>
	fType:		<Object>
	include:		<Object>
	indexedFileAnchor:		<Object>
	invocation:		<Object>
	parameter:		<Object>
	programFile:		<Object>
	programUnit:		<Object>
	puBlockdata:		<Object>
	puComment:		<Object>
	puFunction:		<Object>
	puMain:		<Object>
	puProcedure:		<Object>
	puSubroutine:		<Object>
	tStaticInvocable:		<Object>
	tStaticInvocation:		<Object>
	tWithBody:		<Object>
	tWithStaticInvocations:		<Object>
	variable:		<Object>
```

### NEED TO BE FIXED

will move the `namedEntity` from `programUnit` to its children which are `namedEntity` (this is not the case for `puComment`). However, this does not add the `FamixTNamedEntity` trait to the children.

"
Class {
	#name : #FamixFortran77Generator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'argument',
		'body',
		'invocation',
		'parameter',
		'programUnit',
		'puBlockdata',
		'puComment',
		'puFunction',
		'puMain',
		'puProcedure',
		'puSubroutine',
		'variable',
		'include',
		'tWithBody',
		'tStaticInvocable',
		'tStaticInvocation',
		'tWithStaticInvocations',
		'indexedFileAnchor',
		'fType',
		'programFile'
	],
	#category : #'Famix-Fortran77-Generator'
}

{ #category : #accessing }
FamixFortran77Generator class >> packageName [

	^ #'Famix-Fortran77-Entities'
]

{ #category : #accessing }
FamixFortran77Generator class >> prefix [

	^ #'FamixFortran77'
]

{ #category : #accessing }
FamixFortran77Generator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #'class comment' }
FamixFortran77Generator >> accessEntityComment [

	^ 'an access of a variable'
]

{ #category : #'class comment' }
FamixFortran77Generator >> argumentEntityComment [

	^ 'an actual parameter'
]

{ #category : #'class comment' }
FamixFortran77Generator >> bodyEntityComment [

	^ 'an executable code of a program unit'
]

{ #category : #definition }
FamixFortran77Generator >> defineClasses [

	super defineClasses.

	access := builder
		          newClassNamed: #Access
		          comment: self accessEntityComment.

	"body := builder newClassNamed: #Body comment: self bodyEntityComment."
	comment comment: self fCommentEntityComment.

	fType := builder newClassNamed: #FType comment: self fTypeComment.

	programFile := builder newClassNamed: #ProgramFile comment: self fileEntityComment.

	indexedFileAnchor := builder
		                     newClassNamed: #IndexedFileAnchor
		                     comment: self indexedFileAnchorComment.

	invocation := builder
		              newClassNamed: #Invocation
		              comment: self invocationEntityComment.

	"include := builder newClassNamed: #Include comment: ''."

	parameter := builder
		             newClassNamed: #Parameter
		             comment: self parameterEntityComment.

	programUnit := builder
		               newClassNamed: #ProgramUnit
		               comment: self programUnitEntityComment.

	puBlockdata := builder
		               newClassNamed: #PUBlockdata
		               comment: self puBlockdataEntityComment.

	puComment := builder
		             newClassNamed: #PUComment
		             comment: self puCommentEntityComment.

	puFunction := builder
		              newClassNamed: #PUFunction
		              comment: self puFunctionEntityComment.

	puMain := builder
		          newClassNamed: #PUMain
		          comment: self puMainEntityComment.

	puProcedure := builder
		               newClassNamed: #PUProcedure
		               comment: self puProcedureEntityComment.

	puSubroutine := builder
		                newClassNamed: #PUSubroutine
		                comment: self puSubroutineEntityComment.

	variable := builder
		            newClassNamed: #Variable
		            comment: self variableEntityComment
]

{ #category : #definition }
FamixFortran77Generator >> defineHierarchy [

	super defineHierarchy.

	access --|> #TAccess.
	access --|> #TEntityMetaLevelDependency.

	fType --|> #TType.

	programFile --|> namedEntity.
	programFile --|> #TCompilationUnit.
	programFile --|> #TEntityMetaLevelDependency.
	programFile --|> #TSourceEntity.

	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TFileNavigation.

	invocation --|> #TInvocation.
	invocation --|> #TEntityMetaLevelDependency.

	parameter --|> #TParameter.

	programUnit --|> #TSourceEntity.
	programUnit --|> #TEntityMetaLevelDependency.
	programUnit --|> #TWithComments.


	programUnit --|> namedEntity.
	puBlockdata --|> programUnit.
	puBlockdata --|> #TWithAccesses.
	puBlockdata --|> #TWithLocalVariables.
	
	puComment --|> programUnit.
	puComment --|> #TComment.

	puFunction --|> puProcedure.

	puMain --|> programUnit.
	puMain --|> #TWithAccesses.
	puMain --|> #TWithInvocations.
	puMain --|> #TWithLocalVariables.

	puProcedure --|> programUnit.
	puProcedure --|> #THasSignature.
	puProcedure --|> #TInvocable.
	puProcedure --|> #TWithAccesses.
	puProcedure --|> #TWithInvocations.
	puProcedure --|> #TWithLocalVariables.
	puProcedure --|> #TWithParameters.

	puSubroutine --|> puProcedure.

	variable --|> #TLocalVariable.
]

{ #category : #definition }
FamixFortran77Generator >> defineProperties [

	super defineProperties.

	(comment property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is esope comment ?'.

	(fType property: #length type: #Number) comment: 'length attribute'.
	(fType property: #kind type: #Number) comment: 'kind attribute'.

	"(parameter property: #variable type: #Object) comment:
		'variable declaration related to this parameter'."

	(programFile property: #version type: #String) comment:
		'Fortran version of the file'.

	(programFile property: #filename type: #String) comment:
		'Fortran name of the file'.

	(programFile
		 property: #symbolTable
		 type: #Object
		 defaultValue: 'Dictionary new') comment:
		'Table of symbols for programFile'.

	(puBlockdata
		 property: #symbolTable
		 type: #Object
		 defaultValue: 'Dictionary new') comment:
		'Table of symbols for blockdata'.

	(puFunction property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is kind of esope function ?'.

	(puFunction
		 property: #symbolTable
		 type: #Object
		 defaultValue: 'Dictionary new') comment:
		'Table of symbols for function'.

	(puMain
		 property: #symbolTable
		 type: #Object
		 defaultValue: 'Dictionary new') comment:
		'Table of symbols for program'.

	(puSubroutine
		 property: #symbolTable
		 type: #Object
		 defaultValue: 'Dictionary new') comment:
		'Table of symbols for subroutine'.

	(variable property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is esope attribute variable from segment definition ?'.

	(variable property: #segment type: #String) comment:
		'variable belong to this segment'
]

{ #category : #definition }
FamixFortran77Generator >> defineRelations [

	super defineRelations.

	programFile <>-* programUnit.

	(puFunction property: #returnType) - fType.

	variable - fType
]

{ #category : #definition }
FamixFortran77Generator >> defineTraits [

	super defineTraits.

	"tWithBody := builder newTraitNamed: #TWithBody."

	"By default, the basic infrastructure of Famix implements 'dynamic' invocation.
	 Here, we implement 'static' invocation using so it can be extracted for re-use later."
	"tStaticInvocable := builder newTraitNamed: #TStaticInvocable.
	tStaticInvocation := builder newTraitNamed: #TStaticInvocation.
	tWithStaticInvocations := builder newTraitNamed:
		                          #TWithStaticInvocations"
]

{ #category : #'class comment' }
FamixFortran77Generator >> fCommentEntityComment [

	^ 'a fortran comment'
]

{ #category : #definition }
FamixFortran77Generator >> fTypeComment [

	^ 'Im a Fortran Type'
]

{ #category : #'class comment' }
FamixFortran77Generator >> fileEntityComment [

	^ 'a fortran file'
]

{ #category : #definition }
FamixFortran77Generator >> indexedFileAnchorComment [

	self flag: #TODO. "complete comment"
	^ 'Its the sourceAnchor (position of the token) in the source file (startLine@startColumn)-(endLine@endColumn).'
]

{ #category : #'class comment' }
FamixFortran77Generator >> invocationEntityComment [

	self flag: #FIXME. "on invoque avec des arguments qui matchent les parametres
	donc les arguments doivent être dans invocations ?"
	^ 'an invocation of procedure inside a procedure or main program'
]

{ #category : #definition }
FamixFortran77Generator >> newBuilder [

	^ super newBuilder
		  withImportingContext;
		  yourself
]

{ #category : #'class comment' }
FamixFortran77Generator >> parameterEntityComment [

	^ 'a formal parameter'
]

{ #category : #'class comment' }
FamixFortran77Generator >> programUnitEntityComment [

	^ 'a program unit'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puBlockdataEntityComment [

	^ 'a block data for common variable'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puCommentEntityComment [

	^ 'a comment belongs to fortran file'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puFunctionEntityComment [

	^ 'a function procedure'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puMainEntityComment [

	^ 'a main program'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puProcedureEntityComment [

	^ 'a procedure'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puSubroutineEntityComment [

	^ 'a subroutine procedure'
]

{ #category : #'class comment' }
FamixFortran77Generator >> variableEntityComment [

	self flag: #FIXME. "a variable can be a constant(fortran keyword parameter)
	 or have other attributes.
	 a variable can have alose a default value in case of paramter (must have a value at declaration), ... can have a type (exclipicitly declared or kind of infered)"
	^ 'a local variable of a program unit'
]
