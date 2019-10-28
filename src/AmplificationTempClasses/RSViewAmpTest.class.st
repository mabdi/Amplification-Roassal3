Class {
	#name : #RSViewAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSViewAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> setUp [
	super setUp.
	view := RSView new.
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSViewAmpTest >> testElementFromModel [
	<madeBySmallAmp>
	| els |
	els := RSShapeBuilder box elementsOn: (1 to: 3).
	self
		assert: els class
		equals: TSGroup
		description: 'testElementFromModel:1.1'.
	self
		assert: els size
		equals: 3
		description: 'testElementFromModel:1.2'.
	view addAll: els.
	self
		assert: view class
		equals: RSView
		description: 'testElementFromModel:2.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testElementFromModel:2.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testElementFromModel:2.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testElementFromModel:2.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testElementFromModel:2.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testElementFromModel:2.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testElementFromModel:2.7'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementFromModel:2.8'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testElementFromModel:2.9'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testElementFromModel:2.10'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testElementFromModel:2.11'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementFromModel:2.12'.
	self
		assert: view canvas numberOfShapes
		equals: 3
		description: 'testElementFromModel:2.13'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testElementFromModel:2.14'.
	self
		assert: view elements size
		equals: 3
		description: 'testElementFromModel:2.15'
]
