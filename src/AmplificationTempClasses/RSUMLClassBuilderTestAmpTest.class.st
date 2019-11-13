Class {
	#name : #RSUMLClassBuilderTestAmpTest,
	#superclass : #TSTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> testBasic_amp [
	<madeBySmallAmp>
	| builder classes tmp_3gV5NPq5qP2 |
	classes := TSAttachPoint withAllSubclasses.
	self
		assert: classes class
		equals: OrderedCollection
		description: 'testBasic_amp:1.1'.
	self assert: classes size equals: 6 description: 'testBasic_amp:1.2'.
	builder := RSUMLClassBuilder new.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testBasic_amp:2.1'.
	self
		assert: builder classes class
		equals: UndefinedObject
		description: 'testBasic_amp:2.2'.
	self
		assert: builder classes
		equals: nil
		description: 'testBasic_amp:2.3'.
	builder classes: classes.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testBasic_amp:3.1'.
	self
		assert: builder classes class
		equals: OrderedCollection
		description: 'testBasic_amp:3.2'.
	self
		assert: builder classes size
		equals: 6
		description: 'testBasic_amp:3.3'.
	tmp_3gV5NPq5qP2 := builder build.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testBasic_amp:4.1'.
	self
		assert: builder classes class
		equals: OrderedCollection
		description: 'testBasic_amp:4.2'.
	self
		assert: builder classes size
		equals: 6
		description: 'testBasic_amp:4.3'.
	self
		assert: tmp_3gV5NPq5qP2 class
		equals: TSGroup
		description: 'testBasic_amp:4.1'.
	self
		assert: tmp_3gV5NPq5qP2 size
		equals: 6
		description: 'testBasic_amp:4.2'
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestAmpTest >> testJustClassName_amp [
	<madeBySmallAmp>
	| builder element tmp_uXtUECwxSn6 |
	builder := RSUMLClassBuilder new.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testJustClassName_amp:1.1'.
	self
		assert: builder classes class
		equals: UndefinedObject
		description: 'testJustClassName_amp:1.2'.
	self
		assert: builder classes
		equals: nil
		description: 'testJustClassName_amp:1.3'.
	builder classes: {TSMouseMove}.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testJustClassName_amp:2.1'.
	self
		assert: builder classes class
		equals: Array
		description: 'testJustClassName_amp:2.2'.
	self
		assert: builder classes size
		equals: 1
		description: 'testJustClassName_amp:2.3'.
	tmp_uXtUECwxSn6 := builder build.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testJustClassName_amp:3.1'.
	self
		assert: builder classes class
		equals: Array
		description: 'testJustClassName_amp:3.2'.
	self
		assert: builder classes size
		equals: 1
		description: 'testJustClassName_amp:3.3'.
	self
		assert: tmp_uXtUECwxSn6 class
		equals: TSGroup
		description: 'testJustClassName_amp:3.1'.
	self
		assert: tmp_uXtUECwxSn6 size
		equals: 1
		description: 'testJustClassName_amp:3.2'.
	element := builder elements first.
	self
		assert: builder elements class
		equals: TSGroup
		description: 'testJustClassName_amp:4.1'.
	self
		assert: builder elements size
		equals: 1
		description: 'testJustClassName_amp:4.2'.
	self
		assert: element class
		equals: RSComposite
		description: 'testJustClassName_amp:4.1'.
	self
		assert: element hasChildren class
		equals: True
		description: 'testJustClassName_amp:4.2'.
	self
		assert: element hasChildren
		equals: true
		description: 'testJustClassName_amp:4.3'.
	builder := RSUMLClassBuilder new.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testJustClassName_amp:5.1'.
	self
		assert: builder classes class
		equals: UndefinedObject
		description: 'testJustClassName_amp:5.2'.
	self
		assert: builder classes
		equals: nil
		description: 'testJustClassName_amp:5.3'.
	builder classes: {TSMouseMove}.
	builder renderer: RSTorchUMLClassRenderer new.
	self
		assert: builder class
		equals: RSUMLClassBuilder
		description: 'testJustClassName_amp:7.1'.
	self
		assert: builder classes class
		equals: Array
		description: 'testJustClassName_amp:7.2'.
	self
		assert: builder classes size
		equals: 1
		description: 'testJustClassName_amp:7.3'.
	builder build.
	element := builder elements first.
	self
		assert: builder elements class
		equals: TSGroup
		description: 'testJustClassName_amp:9.1'.
	self
		assert: builder elements size
		equals: 1
		description: 'testJustClassName_amp:9.2'.
	self
		assert: element class
		equals: RSComposite
		description: 'testJustClassName_amp:9.1'.
	self
		assert: element hasChildren class
		equals: True
		description: 'testJustClassName_amp:9.2'.
	self
		assert: element hasChildren
		equals: true
		description: 'testJustClassName_amp:9.3'
]
