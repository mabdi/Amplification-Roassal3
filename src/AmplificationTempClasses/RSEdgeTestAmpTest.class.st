Class {
	#name : #RSEdgeTestAmpTest,
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
RSEdgeTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSEdgeTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSEdgeTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSEdgeTestAmpTest >> setUp [
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
RSEdgeTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeTestAmpTest >> testAddingEdgeAndGroup_amp [
	<madeBySmallAmp>
	| v g tmp_caRzCHuRpY1 tmp_bgzU7XkwId2 |
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testAddingEdgeAndGroup_amp:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup_amp:1.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAddingEdgeAndGroup_amp:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup_amp:1.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAddingEdgeAndGroup_amp:1.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testAddingEdgeAndGroup_amp:1.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testAddingEdgeAndGroup_amp:1.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup_amp:1.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:1.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAddingEdgeAndGroup_amp:1.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAddingEdgeAndGroup_amp:1.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testAddingEdgeAndGroup_amp:1.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testAddingEdgeAndGroup_amp:1.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup_amp:1.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:1.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testAddingEdgeAndGroup_amp:1.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testAddingEdgeAndGroup_amp:1.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup_amp:1.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:1.21'.
	g := TSGroup new.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup_amp:2.1'.
	self
		assert: g size
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:2.2'.
	tmp_bgzU7XkwId2 := g add: el1.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup_amp:3.1'.
	self
		assert: g size
		equals: 1
		description: 'testAddingEdgeAndGroup_amp:3.2'.
	self
		assert: tmp_bgzU7XkwId2 class
		equals: RSElement
		description: 'testAddingEdgeAndGroup_amp:3.1'.
	self
		assert: tmp_bgzU7XkwId2 hasChildren class
		equals: False
		description: 'testAddingEdgeAndGroup_amp:3.2'.
	self
		assert: tmp_bgzU7XkwId2 hasChildren
		equals: false
		description: 'testAddingEdgeAndGroup_amp:3.3'.
	v addAll: g.
	self
		assert: v class
		equals: RSView
		description: 'testAddingEdgeAndGroup_amp:4.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup_amp:4.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:4.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAddingEdgeAndGroup_amp:4.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup_amp:4.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:4.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAddingEdgeAndGroup_amp:4.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testAddingEdgeAndGroup_amp:4.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testAddingEdgeAndGroup_amp:4.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup_amp:4.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAddingEdgeAndGroup_amp:4.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAddingEdgeAndGroup_amp:4.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAddingEdgeAndGroup_amp:4.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testAddingEdgeAndGroup_amp:4.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testAddingEdgeAndGroup_amp:4.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddingEdgeAndGroup_amp:4.16'.
	self
		assert: v canvas numberOfShapes
		equals: 1
		description: 'testAddingEdgeAndGroup_amp:4.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testAddingEdgeAndGroup_amp:4.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testAddingEdgeAndGroup_amp:4.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup_amp:4.20'.
	self
		assert: v elements size
		equals: 1
		description: 'testAddingEdgeAndGroup_amp:4.21'.
	tmp_caRzCHuRpY1 := g add: edge.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddingEdgeAndGroup_amp:5.1'.
	self
		assert: g size
		equals: 2
		description: 'testAddingEdgeAndGroup_amp:5.2'.
	self
		assert: tmp_caRzCHuRpY1 class
		equals: RSEdge
		description: 'testAddingEdgeAndGroup_amp:5.1'.
	self
		assert: tmp_caRzCHuRpY1 isEdge class
		equals: True
		description: 'testAddingEdgeAndGroup_amp:5.2'.
	self
		assert: tmp_caRzCHuRpY1 isEdge
		equals: true
		description: 'testAddingEdgeAndGroup_amp:5.3'.
	self
		assert: tmp_caRzCHuRpY1 controlPoints class
		equals: UndefinedObject
		description: 'testAddingEdgeAndGroup_amp:5.4'.
	self
		assert: tmp_caRzCHuRpY1 controlPoints
		equals: nil
		description: 'testAddingEdgeAndGroup_amp:5.5'.
	self
		assert: tmp_caRzCHuRpY1 to class
		equals: RSElement
		description: 'testAddingEdgeAndGroup_amp:5.6'.
	self
		assert: tmp_caRzCHuRpY1 to hasChildren class
		equals: False
		description: 'testAddingEdgeAndGroup_amp:5.7'.
	self
		assert: tmp_caRzCHuRpY1 to hasChildren
		equals: false
		description: 'testAddingEdgeAndGroup_amp:5.8'.
	self
		assert: tmp_caRzCHuRpY1 from class
		equals: RSElement
		description: 'testAddingEdgeAndGroup_amp:5.9'.
	self
		assert: tmp_caRzCHuRpY1 from hasChildren class
		equals: False
		description: 'testAddingEdgeAndGroup_amp:5.10'.
	self
		assert: tmp_caRzCHuRpY1 from hasChildren
		equals: false
		description: 'testAddingEdgeAndGroup_amp:5.11'.
	self
		assert: tmp_caRzCHuRpY1 attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testAddingEdgeAndGroup_amp:5.12'.
	v addAll: g
]
