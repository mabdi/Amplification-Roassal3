Class {
	#name : #RSEdgeAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'el1',
		'el2',
		'edge'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> setUp [
	super setUp.
	el1 := RSShapeBuilder box element.
	el2 := RSShapeBuilder box element.
	el1 translateTo: 20 @ 20.
	el2 translateTo: 60 @ 80.
	edge := RSEdge new
		attachPoint: TSCenteredAttachPoint new;
		shape: TSLine new;
		from: el1;
		to: el2;
		yourself. 

]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeAmpTest >> testAddingEdgeAndGroup [
	<madeBySmallAmp>
	| v g tmp_BYCnQaQ24t1 tmp_hByHefENmc2 |
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testAddingEdgeAndGroup:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup:1.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAddingEdgeAndGroup:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAddingEdgeAndGroup:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup:1.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAddingEdgeAndGroup:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAddingEdgeAndGroup:1.7'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup:1.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAddingEdgeAndGroup:1.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAddingEdgeAndGroup:1.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAddingEdgeAndGroup:1.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup:1.12'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testAddingEdgeAndGroup:1.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup:1.14'.
	self
		assert: v elements size
		equals: 0
		description: 'testAddingEdgeAndGroup:1.15'.
	g := TSGroup new.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup:2.1'.
	self
		assert: g size
		equals: 0
		description: 'testAddingEdgeAndGroup:2.2'.
	tmp_hByHefENmc2 := g add: el1.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup:3.1'.
	self
		assert: g size
		equals: 1
		description: 'testAddingEdgeAndGroup:3.2'.
	self
		assert: tmp_hByHefENmc2 class
		equals: RSElement
		description: 'testAddingEdgeAndGroup:3.1'.
	v addAll: g.
	self
		assert: v class
		equals: RSView
		description: 'testAddingEdgeAndGroup:4.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup:4.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAddingEdgeAndGroup:4.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAddingEdgeAndGroup:4.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup:4.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAddingEdgeAndGroup:4.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAddingEdgeAndGroup:4.7'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup:4.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAddingEdgeAndGroup:4.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAddingEdgeAndGroup:4.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAddingEdgeAndGroup:4.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup:4.12'.
	self
		assert: v canvas numberOfShapes
		equals: 1
		description: 'testAddingEdgeAndGroup:4.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup:4.14'.
	self
		assert: v elements size
		equals: 1
		description: 'testAddingEdgeAndGroup:4.15'.
	tmp_BYCnQaQ24t1 := g add: edge.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup:5.1'.
	self
		assert: g size
		equals: 2
		description: 'testAddingEdgeAndGroup:5.2'.
	self
		assert: tmp_BYCnQaQ24t1 class
		equals: RSEdge
		description: 'testAddingEdgeAndGroup:5.1'.
	self
		assert: tmp_BYCnQaQ24t1 attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testAddingEdgeAndGroup:5.2'.
	self
		assert: tmp_BYCnQaQ24t1 from class
		equals: RSElement
		description: 'testAddingEdgeAndGroup:5.3'.
	self
		assert: tmp_BYCnQaQ24t1 to class
		equals: RSElement
		description: 'testAddingEdgeAndGroup:5.4'.
	self
		assert: tmp_BYCnQaQ24t1 controlPoints class
		equals: UndefinedObject
		description: 'testAddingEdgeAndGroup:5.5'.
	self
		assert: tmp_BYCnQaQ24t1 controlPoints
		equals: nil
		description: 'testAddingEdgeAndGroup:5.6'.
	v addAll: g
]
