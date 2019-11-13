Class {
	#name : #RSEdgeBuilderTestAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view',
		'elements',
		'b'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RSEdgeBuilder line.
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testAllowRepetitionAndUseAssociations_amp [
	<madeBySmallAmp>
	| v eb tmp_YovJF7oads5 tmp_p1G9j8Bazg6 |
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations_amp:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:1.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAllowRepetitionAndUseAssociations_amp:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:1.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAllowRepetitionAndUseAssociations_amp:1.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations_amp:1.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testAllowRepetitionAndUseAssociations_amp:1.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:1.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:1.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:1.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:1.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations_amp:1.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testAllowRepetitionAndUseAssociations_amp:1.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:1.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:1.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations_amp:1.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testAllowRepetitionAndUseAssociations_amp:1.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:1.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:1.21'.
	v addAll: (RSShapeBuilder box elementsOn: (1 to: 3)).
	self
		assert: v class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations_amp:2.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:2.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:2.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAllowRepetitionAndUseAssociations_amp:2.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:2.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:2.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAllowRepetitionAndUseAssociations_amp:2.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations_amp:2.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testAllowRepetitionAndUseAssociations_amp:2.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:2.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:2.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:2.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:2.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations_amp:2.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testAllowRepetitionAndUseAssociations_amp:2.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:2.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:2.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations_amp:2.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testAllowRepetitionAndUseAssociations_amp:2.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:2.20'.
	self
		assert: v elements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:2.21'.
	eb := RSEdgeBuilder line.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations_amp:3.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations_amp:3.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations_amp:3.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations_amp:3.4'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:3.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:3.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:3.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations_amp:3.8'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:3.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:3.10'.
	self
		assert: eb view
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:3.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations_amp:3.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:3.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations_amp:3.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:3.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations_amp:3.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:3.17'.
	eb view: v.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations_amp:4.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations_amp:4.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations_amp:4.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:4.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:4.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:4.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:4.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:4.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:4.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations_amp:4.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:4.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:4.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:4.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:4.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:4.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:4.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:4.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:4.18'.
	eb color: (Color red alpha: 0.5).
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations_amp:5.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations_amp:5.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations_amp:5.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:5.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:5.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:5.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:5.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:5.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:5.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations_amp:5.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:5.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:5.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:5.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:5.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:5.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:5.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:5.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:5.18'.
	eb noRepetition.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations_amp:6.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations_amp:6.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations_amp:6.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:6.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:6.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:6.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:6.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:6.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:6.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations_amp:6.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:6.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations_amp:6.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:6.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:6.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:6.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:6.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:6.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:6.18'.
	tmp_YovJF7oads5 := eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations_amp:7.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations_amp:7.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations_amp:7.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:7.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:7.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations_amp:7.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations_amp:7.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:7.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:7.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations_amp:7.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations_amp:7.11'.
	self
		assert: eb view numberOfEdges
		equals: 2
		description: 'testAllowRepetitionAndUseAssociations_amp:7.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:7.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:7.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:7.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:7.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:7.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:7.18'.
	self
		assert: tmp_YovJF7oads5 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:7.1'.
	self
		assert: tmp_YovJF7oads5 size
		equals: 2
		description: 'testAllowRepetitionAndUseAssociations_amp:7.2'.
	tmp_p1G9j8Bazg6 := TSGridLayout on: v elements.
	self
		assert: tmp_p1G9j8Bazg6 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:8.1'.
	self
		assert: tmp_p1G9j8Bazg6 size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testConnectFrom_amp [
	<madeBySmallAmp>
	| e tmp_gvKJXALbUL3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectFrom_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectFrom_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectFrom_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectFrom_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectFrom_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectFrom_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectFrom_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom_amp:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectFrom_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectFrom_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom_amp:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectFrom_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectFrom_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectFrom_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectFrom_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectFrom_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom_amp:2.18'.
	tmp_gvKJXALbUL3 := b connectFrom: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectFrom_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectFrom_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom_amp:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectFrom_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectFrom_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testConnectFrom_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectFrom_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectFrom_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom_amp:3.18'.
	self
		assert: tmp_gvKJXALbUL3 class
		equals: TSGroup
		description: 'testConnectFrom_amp:3.1'.
	self
		assert: tmp_gvKJXALbUL3 size
		equals: 1
		description: 'testConnectFrom_amp:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testConnectFrom_amp:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testConnectFrom_amp:4.2'.
	self
		assert: e class
		equals: RSEdge
		description: 'testConnectFrom_amp:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testConnectFrom_amp:4.2'.
	self
		assert: e isEdge
		equals: true
		description: 'testConnectFrom_amp:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom_amp:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testConnectFrom_amp:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testConnectFrom_amp:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testConnectFrom_amp:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testConnectFrom_amp:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testConnectFrom_amp:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testConnectFrom_amp:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testConnectFrom_amp:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testConnectFrom_amp:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testConnectToAll_amp [
	<madeBySmallAmp>
	| eFrom eTo tmp_ng2sDHs5133 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectToAll_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectToAll_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectToAll_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectToAll_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectToAll_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectToAll_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectToAll_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll_amp:1.18'.
	b objects: #(1 2 3).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectToAll_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectToAll_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll_amp:2.4'.
	self
		assert: b toObjects size
		equals: 3
		description: 'testConnectToAll_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:2.8'.
	self
		assert: b toElements size
		equals: 3
		description: 'testConnectToAll_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectToAll_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:2.13'.
	self
		assert: b fromElements size
		equals: 3
		description: 'testConnectToAll_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 3
		description: 'testConnectToAll_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll_amp:2.18'.
	tmp_ng2sDHs5133 := b
		connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectToAll_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectToAll_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll_amp:3.4'.
	self
		assert: b toObjects size
		equals: 3
		description: 'testConnectToAll_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:3.8'.
	self
		assert: b toElements size
		equals: 3
		description: 'testConnectToAll_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 3
		description: 'testConnectToAll_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:3.13'.
	self
		assert: b fromElements size
		equals: 3
		description: 'testConnectToAll_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 3
		description: 'testConnectToAll_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll_amp:3.18'.
	self
		assert: tmp_ng2sDHs5133 class
		equals: TSGroup
		description: 'testConnectToAll_amp:3.1'.
	self
		assert: tmp_ng2sDHs5133 size
		equals: 3
		description: 'testConnectToAll_amp:3.2'.
	eFrom := (view edges collect: [ :edge | edge from model ]) sorted
		asArray.
	self
		assert: (view edges collect: [ :edge | edge from model ]) sorted class
		equals: TSGroup
		description: 'testConnectToAll_amp:4.1'.
	self
		assert: (view edges collect: [ :edge | edge from model ]) sorted size
		equals: 3
		description: 'testConnectToAll_amp:4.2'.
	self
		assert: eFrom class
		equals: Array
		description: 'testConnectToAll_amp:4.1'.
	self
		assert: eFrom size
		equals: 3
		description: 'testConnectToAll_amp:4.2'.
	eTo := (view edges collect: [ :edge | edge to model ]) sorted asArray.
	self
		assert: (view edges collect: [ :edge | edge to model ]) sorted class
		equals: TSGroup
		description: 'testConnectToAll_amp:5.1'.
	self
		assert: (view edges collect: [ :edge | edge to model ]) sorted size
		equals: 3
		description: 'testConnectToAll_amp:5.2'.
	self
		assert: eTo class
		equals: Array
		description: 'testConnectToAll_amp:5.1'.
	self
		assert: eTo size
		equals: 3
		description: 'testConnectToAll_amp:5.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testConnectTo_amp [
	<madeBySmallAmp>
	| e tmp_UL3xK3i3Vi3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectTo_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectTo_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectTo_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectTo_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectTo_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectTo_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectTo_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo_amp:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectTo_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectTo_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo_amp:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectTo_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo_amp:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectTo_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectTo_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo_amp:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectTo_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectTo_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo_amp:2.18'.
	tmp_UL3xK3i3Vi3 := b connectTo: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectTo_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectTo_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo_amp:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectTo_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo_amp:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectTo_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testConnectTo_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo_amp:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectTo_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectTo_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo_amp:3.18'.
	self
		assert: tmp_UL3xK3i3Vi3 class
		equals: TSGroup
		description: 'testConnectTo_amp:3.1'.
	self
		assert: tmp_UL3xK3i3Vi3 size
		equals: 1
		description: 'testConnectTo_amp:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testConnectTo_amp:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testConnectTo_amp:4.2'.
	self
		assert: e class
		equals: RSEdge
		description: 'testConnectTo_amp:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testConnectTo_amp:4.2'.
	self
		assert: e isEdge
		equals: true
		description: 'testConnectTo_amp:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo_amp:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testConnectTo_amp:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testConnectTo_amp:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testConnectTo_amp:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testConnectTo_amp:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testConnectTo_amp:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testConnectTo_amp:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testConnectTo_amp:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testConnectTo_amp:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testDefault_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testElementsToLookup_amp [
	<madeBySmallAmp>
	| es1 es2 edges v |
	es1 := RSShapeBuilder circle elementsOn: #(1 2 3).
	self
		assert: es1 class
		equals: TSGroup
		description: 'testElementsToLookup_amp:1.1'.
	self
		assert: es1 size
		equals: 3
		description: 'testElementsToLookup_amp:1.2'.
	es2 := RSShapeBuilder box elementsOn: #(1 2 3).
	self
		assert: es2 class
		equals: TSGroup
		description: 'testElementsToLookup_amp:2.1'.
	self
		assert: es2 size
		equals: 3
		description: 'testElementsToLookup_amp:2.2'.
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testElementsToLookup_amp:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:3.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testElementsToLookup_amp:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testElementsToLookup_amp:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testElementsToLookup_amp:3.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testElementsToLookup_amp:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testElementsToLookup_amp:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testElementsToLookup_amp:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testElementsToLookup_amp:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup_amp:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup_amp:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup_amp:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testElementsToLookup_amp:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testElementsToLookup_amp:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testElementsToLookup_amp:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testElementsToLookup_amp:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testElementsToLookup_amp:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup_amp:3.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testElementsToLookup_amp:3.21'.
	v addAll: es1.
	self
		assert: v class
		equals: RSView
		description: 'testElementsToLookup_amp:4.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:4.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testElementsToLookup_amp:4.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testElementsToLookup_amp:4.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testElementsToLookup_amp:4.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testElementsToLookup_amp:4.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testElementsToLookup_amp:4.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testElementsToLookup_amp:4.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testElementsToLookup_amp:4.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:4.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup_amp:4.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup_amp:4.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup_amp:4.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testElementsToLookup_amp:4.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testElementsToLookup_amp:4.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:4.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testElementsToLookup_amp:4.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testElementsToLookup_amp:4.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testElementsToLookup_amp:4.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup_amp:4.20'.
	self
		assert: v elements size
		equals: 3
		description: 'testElementsToLookup_amp:4.21'.
	v addAll: es2.
	self
		assert: v class
		equals: RSView
		description: 'testElementsToLookup_amp:5.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:5.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testElementsToLookup_amp:5.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testElementsToLookup_amp:5.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testElementsToLookup_amp:5.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testElementsToLookup_amp:5.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testElementsToLookup_amp:5.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testElementsToLookup_amp:5.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testElementsToLookup_amp:5.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:5.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup_amp:5.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup_amp:5.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup_amp:5.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testElementsToLookup_amp:5.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testElementsToLookup_amp:5.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup_amp:5.16'.
	self
		assert: v canvas numberOfShapes
		equals: 6
		description: 'testElementsToLookup_amp:5.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testElementsToLookup_amp:5.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testElementsToLookup_amp:5.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup_amp:5.20'.
	self
		assert: v elements size
		equals: 6
		description: 'testElementsToLookup_amp:5.21'.
	edges := RSEdgeBuilder line
		view: v;
		fromElements: es1;
		toElements: es2;
		connectTo: #yourself.
	self
		assert: edges class
		equals: TSGroup
		description: 'testElementsToLookup_amp:6.1'.
	self
		assert: edges size
		equals: 3
		description: 'testElementsToLookup_amp:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testElements_amp [
	<madeBySmallAmp>
	| es |
	b := RSEdgeBuilder new.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testElements_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testElements_amp:1.3'.
	self
		assert: b toObjects class
		equals: Array
		description: 'testElements_amp:1.4'.
	self
		assert: b toObjects size
		equals: 0
		description: 'testElements_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements_amp:1.7'.
	self
		assert: b toElements class
		equals: Array
		description: 'testElements_amp:1.8'.
	self
		assert: b toElements size
		equals: 0
		description: 'testElements_amp:1.9'.
	self
		assert: b view class
		equals: UndefinedObject
		description: 'testElements_amp:1.10'.
	self assert: b view equals: nil description: 'testElements_amp:1.11'.
	self
		assert: b fromElements class
		equals: Array
		description: 'testElements_amp:1.12'.
	self
		assert: b fromElements size
		equals: 0
		description: 'testElements_amp:1.13'.
	self
		assert: b fromObjects class
		equals: Array
		description: 'testElements_amp:1.14'.
	self
		assert: b fromObjects size
		equals: 0
		description: 'testElements_amp:1.15'.
	self
		assert: b viewElements class
		equals: Array
		description: 'testElements_amp:1.16'.
	self
		assert: b viewElements size
		equals: 0
		description: 'testElements_amp:1.17'.
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testElements_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testElements_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testElements_amp:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testElements_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testElements_amp:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testElements_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testElements_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testElements_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testElements_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testElements_amp:2.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testElements_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testElements_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testElements_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testElements_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testElements_amp:2.18'.
	es := RSShapeBuilder box elementsOn: (1 to: 4).
	self
		assert: es class
		equals: TSGroup
		description: 'testElements_amp:3.1'.
	self assert: es size equals: 4 description: 'testElements_amp:3.2'.
	b elements: es.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements_amp:4.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testElements_amp:4.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testElements_amp:4.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testElements_amp:4.4'.
	self
		assert: b toObjects size
		equals: 4
		description: 'testElements_amp:4.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements_amp:4.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements_amp:4.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testElements_amp:4.8'.
	self
		assert: b toElements size
		equals: 4
		description: 'testElements_amp:4.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testElements_amp:4.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testElements_amp:4.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testElements_amp:4.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testElements_amp:4.13'.
	self
		assert: b fromElements size
		equals: 4
		description: 'testElements_amp:4.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testElements_amp:4.15'.
	self
		assert: b fromObjects size
		equals: 4
		description: 'testElements_amp:4.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testElements_amp:4.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testElements_amp:4.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromAll_amp [
	<madeBySmallAmp>
	| v es tmp_MAkLlVRCnI4 tmp_HSGNGVtBeI6 tmp_UF0iQjg0zJ8 tmp_nJf6EL8QAW9 tmp_Pli53kceem10 |
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testFromAll_amp:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testFromAll_amp:1.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testFromAll_amp:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testFromAll_amp:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testFromAll_amp:1.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testFromAll_amp:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testFromAll_amp:1.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testFromAll_amp:1.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testFromAll_amp:1.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromAll_amp:1.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testFromAll_amp:1.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testFromAll_amp:1.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testFromAll_amp:1.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testFromAll_amp:1.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testFromAll_amp:1.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromAll_amp:1.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testFromAll_amp:1.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testFromAll_amp:1.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testFromAll_amp:1.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testFromAll_amp:1.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testFromAll_amp:1.21'.
	es := (RSShapeBuilder circle size: 20) elementsOn: (1 to: 2).
	self
		assert: (RSShapeBuilder circle size: 20) class
		equals: RSShapeBuilder
		description: 'testFromAll_amp:2.1'.
	self
		assert: (RSShapeBuilder circle size: 20) shapeClass class
		equals: TSEllipse class
		description: 'testFromAll_amp:2.2'.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromAll_amp:2.1'.
	self assert: es size equals: 2 description: 'testFromAll_amp:2.2'.
	v addAll: es.
	self
		assert: v class
		equals: RSView
		description: 'testFromAll_amp:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testFromAll_amp:3.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testFromAll_amp:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testFromAll_amp:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testFromAll_amp:3.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testFromAll_amp:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testFromAll_amp:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testFromAll_amp:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testFromAll_amp:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromAll_amp:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testFromAll_amp:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testFromAll_amp:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testFromAll_amp:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testFromAll_amp:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testFromAll_amp:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromAll_amp:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 2
		description: 'testFromAll_amp:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testFromAll_amp:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testFromAll_amp:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testFromAll_amp:3.20'.
	self
		assert: v elements size
		equals: 2
		description: 'testFromAll_amp:3.21'.
	tmp_HSGNGVtBeI6 := RSEdgeBuilder new.
	self
		assert: tmp_HSGNGVtBeI6 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:4.1'.
	self
		assert: tmp_HSGNGVtBeI6 isBidirectional class
		equals: True
		description: 'testFromAll_amp:4.2'.
	self
		assert: tmp_HSGNGVtBeI6 isBidirectional
		equals: true
		description: 'testFromAll_amp:4.3'.
	self
		assert: tmp_HSGNGVtBeI6 toObjects class
		equals: Array
		description: 'testFromAll_amp:4.4'.
	self
		assert: tmp_HSGNGVtBeI6 toObjects size
		equals: 0
		description: 'testFromAll_amp:4.5'.
	self
		assert: tmp_HSGNGVtBeI6 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:4.6'.
	self
		assert: tmp_HSGNGVtBeI6 controlPoints
		equals: nil
		description: 'testFromAll_amp:4.7'.
	self
		assert: tmp_HSGNGVtBeI6 toElements class
		equals: Array
		description: 'testFromAll_amp:4.8'.
	self
		assert: tmp_HSGNGVtBeI6 toElements size
		equals: 0
		description: 'testFromAll_amp:4.9'.
	self
		assert: tmp_HSGNGVtBeI6 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:4.10'.
	self
		assert: tmp_HSGNGVtBeI6 view
		equals: nil
		description: 'testFromAll_amp:4.11'.
	self
		assert: tmp_HSGNGVtBeI6 fromElements class
		equals: Array
		description: 'testFromAll_amp:4.12'.
	self
		assert: tmp_HSGNGVtBeI6 fromElements size
		equals: 0
		description: 'testFromAll_amp:4.13'.
	self
		assert: tmp_HSGNGVtBeI6 fromObjects class
		equals: Array
		description: 'testFromAll_amp:4.14'.
	self
		assert: tmp_HSGNGVtBeI6 fromObjects size
		equals: 0
		description: 'testFromAll_amp:4.15'.
	self
		assert: tmp_HSGNGVtBeI6 viewElements class
		equals: Array
		description: 'testFromAll_amp:4.16'.
	self
		assert: tmp_HSGNGVtBeI6 viewElements size
		equals: 0
		description: 'testFromAll_amp:4.17'.
	tmp_Pli53kceem10 := TSTreeLayout on: es.
	self
		assert: tmp_Pli53kceem10 class
		equals: TSGroup
		description: 'testFromAll_amp:5.1'.
	self
		assert: tmp_Pli53kceem10 size
		equals: 2
		description: 'testFromAll_amp:5.2'.
	tmp_UF0iQjg0zJ8 := RSEdgeBuilder new.
	self
		assert: tmp_UF0iQjg0zJ8 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:6.1'.
	self
		assert: tmp_UF0iQjg0zJ8 isBidirectional class
		equals: True
		description: 'testFromAll_amp:6.2'.
	self
		assert: tmp_UF0iQjg0zJ8 isBidirectional
		equals: true
		description: 'testFromAll_amp:6.3'.
	self
		assert: tmp_UF0iQjg0zJ8 toObjects class
		equals: Array
		description: 'testFromAll_amp:6.4'.
	self
		assert: tmp_UF0iQjg0zJ8 toObjects size
		equals: 0
		description: 'testFromAll_amp:6.5'.
	self
		assert: tmp_UF0iQjg0zJ8 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:6.6'.
	self
		assert: tmp_UF0iQjg0zJ8 controlPoints
		equals: nil
		description: 'testFromAll_amp:6.7'.
	self
		assert: tmp_UF0iQjg0zJ8 toElements class
		equals: Array
		description: 'testFromAll_amp:6.8'.
	self
		assert: tmp_UF0iQjg0zJ8 toElements size
		equals: 0
		description: 'testFromAll_amp:6.9'.
	self
		assert: tmp_UF0iQjg0zJ8 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:6.10'.
	self
		assert: tmp_UF0iQjg0zJ8 view
		equals: nil
		description: 'testFromAll_amp:6.11'.
	self
		assert: tmp_UF0iQjg0zJ8 fromElements class
		equals: Array
		description: 'testFromAll_amp:6.12'.
	self
		assert: tmp_UF0iQjg0zJ8 fromElements size
		equals: 0
		description: 'testFromAll_amp:6.13'.
	self
		assert: tmp_UF0iQjg0zJ8 fromObjects class
		equals: Array
		description: 'testFromAll_amp:6.14'.
	self
		assert: tmp_UF0iQjg0zJ8 fromObjects size
		equals: 0
		description: 'testFromAll_amp:6.15'.
	self
		assert: tmp_UF0iQjg0zJ8 viewElements class
		equals: Array
		description: 'testFromAll_amp:6.16'.
	self
		assert: tmp_UF0iQjg0zJ8 viewElements size
		equals: 0
		description: 'testFromAll_amp:6.17'.
	self
		should: [ tmp_UF0iQjg0zJ8 objects: (1 to: 2) ]
		raise: AssertionFailure
		description: 'testFromAll_amp:7.1'.
	tmp_nJf6EL8QAW9 := RSEdgeBuilder new.
	self
		assert: tmp_nJf6EL8QAW9 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:8.1'.
	self
		assert: tmp_nJf6EL8QAW9 isBidirectional class
		equals: True
		description: 'testFromAll_amp:8.2'.
	self
		assert: tmp_nJf6EL8QAW9 isBidirectional
		equals: true
		description: 'testFromAll_amp:8.3'.
	self
		assert: tmp_nJf6EL8QAW9 toObjects class
		equals: Array
		description: 'testFromAll_amp:8.4'.
	self
		assert: tmp_nJf6EL8QAW9 toObjects size
		equals: 0
		description: 'testFromAll_amp:8.5'.
	self
		assert: tmp_nJf6EL8QAW9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:8.6'.
	self
		assert: tmp_nJf6EL8QAW9 controlPoints
		equals: nil
		description: 'testFromAll_amp:8.7'.
	self
		assert: tmp_nJf6EL8QAW9 toElements class
		equals: Array
		description: 'testFromAll_amp:8.8'.
	self
		assert: tmp_nJf6EL8QAW9 toElements size
		equals: 0
		description: 'testFromAll_amp:8.9'.
	self
		assert: tmp_nJf6EL8QAW9 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:8.10'.
	self
		assert: tmp_nJf6EL8QAW9 view
		equals: nil
		description: 'testFromAll_amp:8.11'.
	self
		assert: tmp_nJf6EL8QAW9 fromElements class
		equals: Array
		description: 'testFromAll_amp:8.12'.
	self
		assert: tmp_nJf6EL8QAW9 fromElements size
		equals: 0
		description: 'testFromAll_amp:8.13'.
	self
		assert: tmp_nJf6EL8QAW9 fromObjects class
		equals: Array
		description: 'testFromAll_amp:8.14'.
	self
		assert: tmp_nJf6EL8QAW9 fromObjects size
		equals: 0
		description: 'testFromAll_amp:8.15'.
	self
		assert: tmp_nJf6EL8QAW9 viewElements class
		equals: Array
		description: 'testFromAll_amp:8.16'.
	self
		assert: tmp_nJf6EL8QAW9 viewElements size
		equals: 0
		description: 'testFromAll_amp:8.17'.
	tmp_MAkLlVRCnI4 := tmp_nJf6EL8QAW9
		connectFromAll: (Array with: 1)
		to: 2.
	self
		assert: tmp_nJf6EL8QAW9 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:9.1'.
	self
		assert: tmp_nJf6EL8QAW9 isBidirectional class
		equals: True
		description: 'testFromAll_amp:9.2'.
	self
		assert: tmp_nJf6EL8QAW9 isBidirectional
		equals: true
		description: 'testFromAll_amp:9.3'.
	self
		assert: tmp_nJf6EL8QAW9 toObjects class
		equals: Array
		description: 'testFromAll_amp:9.4'.
	self
		assert: tmp_nJf6EL8QAW9 toObjects size
		equals: 0
		description: 'testFromAll_amp:9.5'.
	self
		assert: tmp_nJf6EL8QAW9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:9.6'.
	self
		assert: tmp_nJf6EL8QAW9 controlPoints
		equals: nil
		description: 'testFromAll_amp:9.7'.
	self
		assert: tmp_nJf6EL8QAW9 toElements class
		equals: Array
		description: 'testFromAll_amp:9.8'.
	self
		assert: tmp_nJf6EL8QAW9 toElements size
		equals: 0
		description: 'testFromAll_amp:9.9'.
	self
		assert: tmp_nJf6EL8QAW9 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:9.10'.
	self
		assert: tmp_nJf6EL8QAW9 view
		equals: nil
		description: 'testFromAll_amp:9.11'.
	self
		assert: tmp_nJf6EL8QAW9 fromElements class
		equals: Array
		description: 'testFromAll_amp:9.12'.
	self
		assert: tmp_nJf6EL8QAW9 fromElements size
		equals: 0
		description: 'testFromAll_amp:9.13'.
	self
		assert: tmp_nJf6EL8QAW9 fromObjects class
		equals: Array
		description: 'testFromAll_amp:9.14'.
	self
		assert: tmp_nJf6EL8QAW9 fromObjects size
		equals: 0
		description: 'testFromAll_amp:9.15'.
	self
		assert: tmp_nJf6EL8QAW9 viewElements class
		equals: Array
		description: 'testFromAll_amp:9.16'.
	self
		assert: tmp_nJf6EL8QAW9 viewElements size
		equals: 0
		description: 'testFromAll_amp:9.17'.
	self
		assert: tmp_MAkLlVRCnI4 class
		equals: TSGroup
		description: 'testFromAll_amp:9.1'.
	self
		assert: tmp_MAkLlVRCnI4 size
		equals: 0
		description: 'testFromAll_amp:9.2'.
	TSTreeLayout on: es
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjects02_amp [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| tmp_fOqmMlAO763 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects02_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects02_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects02_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjects02_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjects02_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02_amp:1.18'.
	b fromObjects: #(1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects02_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects02_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02_amp:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects02_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:2.13'.
	self
		assert: b fromElements size
		equals: 1
		description: 'testFromObjects02_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 1
		description: 'testFromObjects02_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02_amp:2.18'.
	tmp_fOqmMlAO763 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects02_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects02_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02_amp:3.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:3.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testFromObjects02_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:3.13'.
	self
		assert: b fromElements size
		equals: 1
		description: 'testFromObjects02_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 1
		description: 'testFromObjects02_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02_amp:3.18'.
	self
		assert: tmp_fOqmMlAO763 class
		equals: TSGroup
		description: 'testFromObjects02_amp:3.1'.
	self
		assert: tmp_fOqmMlAO763 size
		equals: 1
		description: 'testFromObjects02_amp:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjectsError_amp [
	"
view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjectsToElements_amp [
	<madeBySmallAmp>
	| edges |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjectsToElements_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjectsToElements_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjectsToElements_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjectsToElements_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjectsToElements_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjectsToElements_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjectsToElements_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjectsToElements_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjectsToElements_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjectsToElements_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjectsToElements_amp:1.18'.
	edges := b
		fromObjects: #(1 2);
		toElements: (elements copyFrom: 10 to: 10);
		connectTo: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjectsToElements_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjectsToElements_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:2.4'.
	self
		assert: b toObjects size
		equals: 1
		description: 'testFromObjectsToElements_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjectsToElements_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:2.8'.
	self
		assert: b toElements size
		equals: 1
		description: 'testFromObjectsToElements_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjectsToElements_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjectsToElements_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testFromObjectsToElements_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjectsToElements_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjectsToElements_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjectsToElements_amp:2.18'.
	self
		assert: edges class
		equals: TSGroup
		description: 'testFromObjectsToElements_amp:2.1'.
	self
		assert: edges size
		equals: 2
		description: 'testFromObjectsToElements_amp:2.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjects_amp [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| edges tmp_jdhiRSLzQl3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjects_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjects_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects_amp:1.18'.
	b fromObjects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects_amp:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects_amp:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects_amp:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjects_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjects_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects_amp:2.18'.
	tmp_jdhiRSLzQl3 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects_amp:3.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects_amp:3.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testFromObjects_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects_amp:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjects_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjects_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects_amp:3.18'.
	self
		assert: tmp_jdhiRSLzQl3 class
		equals: TSGroup
		description: 'testFromObjects_amp:3.1'.
	self
		assert: tmp_jdhiRSLzQl3 size
		equals: 2
		description: 'testFromObjects_amp:3.2'.
	edges := view edges.
	self
		assert: view class
		equals: RSView
		description: 'testFromObjects_amp:4.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects_amp:4.2'.
	self
		assert: view numberOfEdges
		equals: 2
		description: 'testFromObjects_amp:4.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testFromObjects_amp:4.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testFromObjects_amp:4.5'.
	self
		assert: view edges size
		equals: 2
		description: 'testFromObjects_amp:4.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testFromObjects_amp:4.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testFromObjects_amp:4.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testFromObjects_amp:4.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromObjects_amp:4.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testFromObjects_amp:4.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testFromObjects_amp:4.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testFromObjects_amp:4.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testFromObjects_amp:4.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testFromObjects_amp:4.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromObjects_amp:4.16'.
	self
		assert: view canvas numberOfShapes
		equals: 12
		description: 'testFromObjects_amp:4.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testFromObjects_amp:4.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testFromObjects_amp:4.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testFromObjects_amp:4.20'.
	self
		assert: view elements size
		equals: 10
		description: 'testFromObjects_amp:4.21'.
	self
		assert: edges class
		equals: TSGroup
		description: 'testFromObjects_amp:4.1'.
	self
		assert: edges size
		equals: 2
		description: 'testFromObjects_amp:4.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testInit_amp [
	<madeBySmallAmp>
	| eb |
	eb := RSEdgeBuilder new.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testInit_amp:1.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testInit_amp:1.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testInit_amp:1.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testInit_amp:1.4'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testInit_amp:1.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testInit_amp:1.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testInit_amp:1.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testInit_amp:1.8'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testInit_amp:1.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testInit_amp:1.10'.
	self assert: eb view equals: nil description: 'testInit_amp:1.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testInit_amp:1.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testInit_amp:1.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testInit_amp:1.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testInit_amp:1.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testInit_amp:1.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testInit_amp:1.17'.
	eb allowRepetition.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testInit_amp:2.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testInit_amp:2.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testInit_amp:2.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testInit_amp:2.4'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testInit_amp:2.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testInit_amp:2.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testInit_amp:2.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testInit_amp:2.8'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testInit_amp:2.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testInit_amp:2.10'.
	self assert: eb view equals: nil description: 'testInit_amp:2.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testInit_amp:2.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testInit_amp:2.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testInit_amp:2.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testInit_amp:2.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testInit_amp:2.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testInit_amp:2.17'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testNoMoveBehind_amp [
	<madeBySmallAmp>
	| tmp_NAIm9C4BOK3 tmp_Le5UhzeCbD4 |
	tmp_NAIm9C4BOK3 := RSEdgeBuilder line.
	self
		assert: tmp_NAIm9C4BOK3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind_amp:1.1'.
	self
		assert: tmp_NAIm9C4BOK3 isBidirectional class
		equals: True
		description: 'testNoMoveBehind_amp:1.2'.
	self
		assert: tmp_NAIm9C4BOK3 isBidirectional
		equals: true
		description: 'testNoMoveBehind_amp:1.3'.
	self
		assert: tmp_NAIm9C4BOK3 toObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:1.4'.
	self
		assert: tmp_NAIm9C4BOK3 toObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:1.5'.
	self
		assert: tmp_NAIm9C4BOK3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:1.6'.
	self
		assert: tmp_NAIm9C4BOK3 controlPoints
		equals: nil
		description: 'testNoMoveBehind_amp:1.7'.
	self
		assert: tmp_NAIm9C4BOK3 toElements class
		equals: Array
		description: 'testNoMoveBehind_amp:1.8'.
	self
		assert: tmp_NAIm9C4BOK3 toElements size
		equals: 0
		description: 'testNoMoveBehind_amp:1.9'.
	self
		assert: tmp_NAIm9C4BOK3 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:1.10'.
	self
		assert: tmp_NAIm9C4BOK3 view
		equals: nil
		description: 'testNoMoveBehind_amp:1.11'.
	self
		assert: tmp_NAIm9C4BOK3 fromElements class
		equals: Array
		description: 'testNoMoveBehind_amp:1.12'.
	self
		assert: tmp_NAIm9C4BOK3 fromElements size
		equals: 0
		description: 'testNoMoveBehind_amp:1.13'.
	self
		assert: tmp_NAIm9C4BOK3 fromObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:1.14'.
	self
		assert: tmp_NAIm9C4BOK3 fromObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:1.15'.
	self
		assert: tmp_NAIm9C4BOK3 viewElements class
		equals: Array
		description: 'testNoMoveBehind_amp:1.16'.
	self
		assert: tmp_NAIm9C4BOK3 viewElements size
		equals: 0
		description: 'testNoMoveBehind_amp:1.17'.
	tmp_NAIm9C4BOK3 view: view.
	self
		assert: tmp_NAIm9C4BOK3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind_amp:2.1'.
	self
		assert: tmp_NAIm9C4BOK3 isBidirectional class
		equals: True
		description: 'testNoMoveBehind_amp:2.2'.
	self
		assert: tmp_NAIm9C4BOK3 isBidirectional
		equals: true
		description: 'testNoMoveBehind_amp:2.3'.
	self
		assert: tmp_NAIm9C4BOK3 toObjects class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.4'.
	self
		assert: tmp_NAIm9C4BOK3 toObjects size
		equals: 10
		description: 'testNoMoveBehind_amp:2.5'.
	self
		assert: tmp_NAIm9C4BOK3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:2.6'.
	self
		assert: tmp_NAIm9C4BOK3 controlPoints
		equals: nil
		description: 'testNoMoveBehind_amp:2.7'.
	self
		assert: tmp_NAIm9C4BOK3 toElements class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.8'.
	self
		assert: tmp_NAIm9C4BOK3 toElements size
		equals: 10
		description: 'testNoMoveBehind_amp:2.9'.
	self
		assert: tmp_NAIm9C4BOK3 view class
		equals: RSView
		description: 'testNoMoveBehind_amp:2.10'.
	self
		assert: tmp_NAIm9C4BOK3 view numberOfEdges class
		equals: SmallInteger
		description: 'testNoMoveBehind_amp:2.11'.
	self
		assert: tmp_NAIm9C4BOK3 view numberOfEdges
		equals: 0
		description: 'testNoMoveBehind_amp:2.12'.
	self
		assert: tmp_NAIm9C4BOK3 fromElements class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.13'.
	self
		assert: tmp_NAIm9C4BOK3 fromElements size
		equals: 10
		description: 'testNoMoveBehind_amp:2.14'.
	self
		assert: tmp_NAIm9C4BOK3 fromObjects class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.15'.
	self
		assert: tmp_NAIm9C4BOK3 fromObjects size
		equals: 10
		description: 'testNoMoveBehind_amp:2.16'.
	self
		assert: tmp_NAIm9C4BOK3 viewElements class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.17'.
	self
		assert: tmp_NAIm9C4BOK3 viewElements size
		equals: 10
		description: 'testNoMoveBehind_amp:2.18'.
	tmp_Le5UhzeCbD4 := RSEdgeBuilder line.
	self
		assert: tmp_Le5UhzeCbD4 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind_amp:3.1'.
	self
		assert: tmp_Le5UhzeCbD4 isBidirectional class
		equals: True
		description: 'testNoMoveBehind_amp:3.2'.
	self
		assert: tmp_Le5UhzeCbD4 isBidirectional
		equals: true
		description: 'testNoMoveBehind_amp:3.3'.
	self
		assert: tmp_Le5UhzeCbD4 toObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:3.4'.
	self
		assert: tmp_Le5UhzeCbD4 toObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:3.5'.
	self
		assert: tmp_Le5UhzeCbD4 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:3.6'.
	self
		assert: tmp_Le5UhzeCbD4 controlPoints
		equals: nil
		description: 'testNoMoveBehind_amp:3.7'.
	self
		assert: tmp_Le5UhzeCbD4 toElements class
		equals: Array
		description: 'testNoMoveBehind_amp:3.8'.
	self
		assert: tmp_Le5UhzeCbD4 toElements size
		equals: 0
		description: 'testNoMoveBehind_amp:3.9'.
	self
		assert: tmp_Le5UhzeCbD4 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:3.10'.
	self
		assert: tmp_Le5UhzeCbD4 view
		equals: nil
		description: 'testNoMoveBehind_amp:3.11'.
	self
		assert: tmp_Le5UhzeCbD4 fromElements class
		equals: Array
		description: 'testNoMoveBehind_amp:3.12'.
	self
		assert: tmp_Le5UhzeCbD4 fromElements size
		equals: 0
		description: 'testNoMoveBehind_amp:3.13'.
	self
		assert: tmp_Le5UhzeCbD4 fromObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:3.14'.
	self
		assert: tmp_Le5UhzeCbD4 fromObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:3.15'.
	self
		assert: tmp_Le5UhzeCbD4 viewElements class
		equals: Array
		description: 'testNoMoveBehind_amp:3.16'.
	self
		assert: tmp_Le5UhzeCbD4 viewElements size
		equals: 0
		description: 'testNoMoveBehind_amp:3.17'.
	self
		should: [ tmp_Le5UhzeCbD4
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testNoMoveBehind_amp:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjectFrom_amp [
	<madeBySmallAmp>
	| e tmp_QhD6Fr1uog2 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectFrom_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectFrom_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjectFrom_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjectFrom_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectFrom_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjectFrom_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjectFrom_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom_amp:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectFrom_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectFrom_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom_amp:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectFrom_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectFrom_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectFrom_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectFrom_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectFrom_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom_amp:2.18'.
	tmp_QhD6Fr1uog2 := b connectFrom: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectFrom_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectFrom_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom_amp:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectFrom_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectFrom_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testObjectFrom_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectFrom_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectFrom_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom_amp:3.18'.
	self
		assert: tmp_QhD6Fr1uog2 class
		equals: TSGroup
		description: 'testObjectFrom_amp:3.1'.
	self
		assert: tmp_QhD6Fr1uog2 size
		equals: 1
		description: 'testObjectFrom_amp:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testObjectFrom_amp:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testObjectFrom_amp:4.2'.
	self
		assert: e class
		equals: RSEdge
		description: 'testObjectFrom_amp:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testObjectFrom_amp:4.2'.
	self
		assert: e isEdge
		equals: true
		description: 'testObjectFrom_amp:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom_amp:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testObjectFrom_amp:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testObjectFrom_amp:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testObjectFrom_amp:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testObjectFrom_amp:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testObjectFrom_amp:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testObjectFrom_amp:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testObjectFrom_amp:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testObjectFrom_amp:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjectTo_amp [
	<madeBySmallAmp>
	| e tmp_sYN2dZ6HvD2 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectTo_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectTo_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjectTo_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjectTo_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectTo_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjectTo_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjectTo_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo_amp:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectTo_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectTo_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo_amp:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectTo_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo_amp:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectTo_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectTo_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo_amp:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectTo_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectTo_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo_amp:2.18'.
	tmp_sYN2dZ6HvD2 := b connectTo: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectTo_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectTo_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo_amp:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectTo_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo_amp:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectTo_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testObjectTo_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo_amp:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectTo_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectTo_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo_amp:3.18'.
	self
		assert: tmp_sYN2dZ6HvD2 class
		equals: TSGroup
		description: 'testObjectTo_amp:3.1'.
	self
		assert: tmp_sYN2dZ6HvD2 size
		equals: 1
		description: 'testObjectTo_amp:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testObjectTo_amp:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testObjectTo_amp:4.2'.
	self
		assert: e class
		equals: RSEdge
		description: 'testObjectTo_amp:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testObjectTo_amp:4.2'.
	self
		assert: e isEdge
		equals: true
		description: 'testObjectTo_amp:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo_amp:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testObjectTo_amp:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testObjectTo_amp:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testObjectTo_amp:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testObjectTo_amp:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testObjectTo_amp:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testObjectTo_amp:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testObjectTo_amp:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testObjectTo_amp:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjects02_amp [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects02_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects02_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects02_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects02_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects02_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects02_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects02_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects02_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects02_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects02_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects02_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects02_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects02_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects02_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects02_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects02_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects02_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects02_amp:1.18'.
	b objects: #even.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects02_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects02_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects02_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects02_amp:2.4'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects02_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects02_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects02_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects02_amp:2.8'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects02_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects02_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects02_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects02_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects02_amp:2.13'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects02_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects02_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects02_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects02_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects02_amp:2.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjects03_amp [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects03_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects03_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects03_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects03_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects03_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects03_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects03_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects03_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects03_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects03_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects03_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects03_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects03_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects03_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects03_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects03_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects03_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects03_amp:1.18'.
	b objects: #odd.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects03_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects03_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects03_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects03_amp:2.4'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects03_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects03_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects03_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects03_amp:2.8'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects03_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects03_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects03_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects03_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects03_amp:2.13'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects03_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects03_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects03_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects03_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects03_amp:2.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjects_amp [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects_amp:1.18'.
	b objects: (1 to: 5).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects_amp:2.4'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects_amp:2.8'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects_amp:2.13'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects_amp:2.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testShouldAllowBidirection_amp [
	<madeBySmallAmp>
	| tmp_MoUgspPvsn4 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldAllowBidirection_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldAllowBidirection_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldAllowBidirection_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldAllowBidirection_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:1.18'.
	b noBidirectional.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: False
		description: 'testShouldAllowBidirection_amp:2.2'.
	self
		assert: b isBidirectional
		equals: false
		description: 'testShouldAllowBidirection_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldAllowBidirection_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:2.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldAllowBidirection_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:2.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: False
		description: 'testShouldAllowBidirection_amp:3.2'.
	self
		assert: b isBidirectional
		equals: false
		description: 'testShouldAllowBidirection_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldAllowBidirection_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldAllowBidirection_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldAllowBidirection_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldAllowBidirection_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:3.18'.
	tmp_MoUgspPvsn4 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection_amp:4.1'.
	self
		assert: b isBidirectional class
		equals: False
		description: 'testShouldAllowBidirection_amp:4.2'.
	self
		assert: b isBidirectional
		equals: false
		description: 'testShouldAllowBidirection_amp:4.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:4.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldAllowBidirection_amp:4.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection_amp:4.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection_amp:4.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:4.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldAllowBidirection_amp:4.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection_amp:4.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection_amp:4.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testShouldAllowBidirection_amp:4.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:4.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldAllowBidirection_amp:4.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:4.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldAllowBidirection_amp:4.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:4.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:4.18'.
	self
		assert: tmp_MoUgspPvsn4 class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:4.1'.
	self
		assert: tmp_MoUgspPvsn4 size
		equals: 1
		description: 'testShouldAllowBidirection_amp:4.2'.
	elements := view elementsFromModels: #(1 2).
	self
		assert: view class
		equals: RSView
		description: 'testShouldAllowBidirection_amp:5.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection_amp:5.2'.
	self
		assert: view numberOfEdges
		equals: 1
		description: 'testShouldAllowBidirection_amp:5.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testShouldAllowBidirection_amp:5.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:5.5'.
	self
		assert: view edges size
		equals: 1
		description: 'testShouldAllowBidirection_amp:5.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testShouldAllowBidirection_amp:5.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testShouldAllowBidirection_amp:5.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testShouldAllowBidirection_amp:5.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testShouldAllowBidirection_amp:5.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testShouldAllowBidirection_amp:5.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection_amp:5.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testShouldAllowBidirection_amp:5.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testShouldAllowBidirection_amp:5.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testShouldAllowBidirection_amp:5.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testShouldAllowBidirection_amp:5.16'.
	self
		assert: view canvas numberOfShapes
		equals: 11
		description: 'testShouldAllowBidirection_amp:5.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testShouldAllowBidirection_amp:5.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testShouldAllowBidirection_amp:5.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:5.20'.
	self
		assert: view elements size
		equals: 10
		description: 'testShouldAllowBidirection_amp:5.21'.
	self
		assert: elements class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:5.1'.
	self
		assert: elements size
		equals: 2
		description: 'testShouldAllowBidirection_amp:5.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testShouldNotAllowBidirection_amp [
	<madeBySmallAmp>
	| tmp_WPCYVb0Fdo3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldNotAllowBidirection_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldNotAllowBidirection_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldNotAllowBidirection_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldNotAllowBidirection_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldNotAllowBidirection_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldNotAllowBidirection_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldNotAllowBidirection_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection_amp:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldNotAllowBidirection_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldNotAllowBidirection_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldNotAllowBidirection_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection_amp:2.18'.
	tmp_WPCYVb0Fdo3 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldNotAllowBidirection_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldNotAllowBidirection_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection_amp:3.18'.
	self
		assert: tmp_WPCYVb0Fdo3 class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:3.1'.
	self
		assert: tmp_WPCYVb0Fdo3 size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple2_amp [
	<madeBySmallAmp>
	| tmp_7s0VuB2cxJ3 tmp_a9IUZu8LJL4 |
	tmp_7s0VuB2cxJ3 := RSEdgeBuilder line.
	self
		assert: tmp_7s0VuB2cxJ3 class
		equals: RSEdgeBuilder
		description: 'testSimple2_amp:1.1'.
	self
		assert: tmp_7s0VuB2cxJ3 isBidirectional class
		equals: True
		description: 'testSimple2_amp:1.2'.
	self
		assert: tmp_7s0VuB2cxJ3 isBidirectional
		equals: true
		description: 'testSimple2_amp:1.3'.
	self
		assert: tmp_7s0VuB2cxJ3 toObjects class
		equals: Array
		description: 'testSimple2_amp:1.4'.
	self
		assert: tmp_7s0VuB2cxJ3 toObjects size
		equals: 0
		description: 'testSimple2_amp:1.5'.
	self
		assert: tmp_7s0VuB2cxJ3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2_amp:1.6'.
	self
		assert: tmp_7s0VuB2cxJ3 controlPoints
		equals: nil
		description: 'testSimple2_amp:1.7'.
	self
		assert: tmp_7s0VuB2cxJ3 toElements class
		equals: Array
		description: 'testSimple2_amp:1.8'.
	self
		assert: tmp_7s0VuB2cxJ3 toElements size
		equals: 0
		description: 'testSimple2_amp:1.9'.
	self
		assert: tmp_7s0VuB2cxJ3 view class
		equals: UndefinedObject
		description: 'testSimple2_amp:1.10'.
	self
		assert: tmp_7s0VuB2cxJ3 view
		equals: nil
		description: 'testSimple2_amp:1.11'.
	self
		assert: tmp_7s0VuB2cxJ3 fromElements class
		equals: Array
		description: 'testSimple2_amp:1.12'.
	self
		assert: tmp_7s0VuB2cxJ3 fromElements size
		equals: 0
		description: 'testSimple2_amp:1.13'.
	self
		assert: tmp_7s0VuB2cxJ3 fromObjects class
		equals: Array
		description: 'testSimple2_amp:1.14'.
	self
		assert: tmp_7s0VuB2cxJ3 fromObjects size
		equals: 0
		description: 'testSimple2_amp:1.15'.
	self
		assert: tmp_7s0VuB2cxJ3 viewElements class
		equals: Array
		description: 'testSimple2_amp:1.16'.
	self
		assert: tmp_7s0VuB2cxJ3 viewElements size
		equals: 0
		description: 'testSimple2_amp:1.17'.
	tmp_7s0VuB2cxJ3 view: view.
	self
		assert: tmp_7s0VuB2cxJ3 class
		equals: RSEdgeBuilder
		description: 'testSimple2_amp:2.1'.
	self
		assert: tmp_7s0VuB2cxJ3 isBidirectional class
		equals: True
		description: 'testSimple2_amp:2.2'.
	self
		assert: tmp_7s0VuB2cxJ3 isBidirectional
		equals: true
		description: 'testSimple2_amp:2.3'.
	self
		assert: tmp_7s0VuB2cxJ3 toObjects class
		equals: TSGroup
		description: 'testSimple2_amp:2.4'.
	self
		assert: tmp_7s0VuB2cxJ3 toObjects size
		equals: 10
		description: 'testSimple2_amp:2.5'.
	self
		assert: tmp_7s0VuB2cxJ3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2_amp:2.6'.
	self
		assert: tmp_7s0VuB2cxJ3 controlPoints
		equals: nil
		description: 'testSimple2_amp:2.7'.
	self
		assert: tmp_7s0VuB2cxJ3 toElements class
		equals: TSGroup
		description: 'testSimple2_amp:2.8'.
	self
		assert: tmp_7s0VuB2cxJ3 toElements size
		equals: 10
		description: 'testSimple2_amp:2.9'.
	self
		assert: tmp_7s0VuB2cxJ3 view class
		equals: RSView
		description: 'testSimple2_amp:2.10'.
	self
		assert: tmp_7s0VuB2cxJ3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple2_amp:2.11'.
	self
		assert: tmp_7s0VuB2cxJ3 view numberOfEdges
		equals: 0
		description: 'testSimple2_amp:2.12'.
	self
		assert: tmp_7s0VuB2cxJ3 fromElements class
		equals: TSGroup
		description: 'testSimple2_amp:2.13'.
	self
		assert: tmp_7s0VuB2cxJ3 fromElements size
		equals: 10
		description: 'testSimple2_amp:2.14'.
	self
		assert: tmp_7s0VuB2cxJ3 fromObjects class
		equals: TSGroup
		description: 'testSimple2_amp:2.15'.
	self
		assert: tmp_7s0VuB2cxJ3 fromObjects size
		equals: 10
		description: 'testSimple2_amp:2.16'.
	self
		assert: tmp_7s0VuB2cxJ3 viewElements class
		equals: TSGroup
		description: 'testSimple2_amp:2.17'.
	self
		assert: tmp_7s0VuB2cxJ3 viewElements size
		equals: 10
		description: 'testSimple2_amp:2.18'.
	tmp_a9IUZu8LJL4 := RSEdgeBuilder line.
	self
		assert: tmp_a9IUZu8LJL4 class
		equals: RSEdgeBuilder
		description: 'testSimple2_amp:3.1'.
	self
		assert: tmp_a9IUZu8LJL4 isBidirectional class
		equals: True
		description: 'testSimple2_amp:3.2'.
	self
		assert: tmp_a9IUZu8LJL4 isBidirectional
		equals: true
		description: 'testSimple2_amp:3.3'.
	self
		assert: tmp_a9IUZu8LJL4 toObjects class
		equals: Array
		description: 'testSimple2_amp:3.4'.
	self
		assert: tmp_a9IUZu8LJL4 toObjects size
		equals: 0
		description: 'testSimple2_amp:3.5'.
	self
		assert: tmp_a9IUZu8LJL4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2_amp:3.6'.
	self
		assert: tmp_a9IUZu8LJL4 controlPoints
		equals: nil
		description: 'testSimple2_amp:3.7'.
	self
		assert: tmp_a9IUZu8LJL4 toElements class
		equals: Array
		description: 'testSimple2_amp:3.8'.
	self
		assert: tmp_a9IUZu8LJL4 toElements size
		equals: 0
		description: 'testSimple2_amp:3.9'.
	self
		assert: tmp_a9IUZu8LJL4 view class
		equals: UndefinedObject
		description: 'testSimple2_amp:3.10'.
	self
		assert: tmp_a9IUZu8LJL4 view
		equals: nil
		description: 'testSimple2_amp:3.11'.
	self
		assert: tmp_a9IUZu8LJL4 fromElements class
		equals: Array
		description: 'testSimple2_amp:3.12'.
	self
		assert: tmp_a9IUZu8LJL4 fromElements size
		equals: 0
		description: 'testSimple2_amp:3.13'.
	self
		assert: tmp_a9IUZu8LJL4 fromObjects class
		equals: Array
		description: 'testSimple2_amp:3.14'.
	self
		assert: tmp_a9IUZu8LJL4 fromObjects size
		equals: 0
		description: 'testSimple2_amp:3.15'.
	self
		assert: tmp_a9IUZu8LJL4 viewElements class
		equals: Array
		description: 'testSimple2_amp:3.16'.
	self
		assert: tmp_a9IUZu8LJL4 viewElements size
		equals: 0
		description: 'testSimple2_amp:3.17'.
	self
		should: [ tmp_a9IUZu8LJL4
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testSimple2_amp:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple3_amp [
	<madeBySmallAmp>
	| tmp_nusO52D00c1 tmp_UL7ThEDCPy3 tmp_jApSCTZ8jM5 tmp_1Lalv0owOT7 tmp_zI5UpcG26C8 |
	tmp_UL7ThEDCPy3 := RSEdgeBuilder line.
	self
		assert: tmp_UL7ThEDCPy3 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:1.1'.
	self
		assert: tmp_UL7ThEDCPy3 isBidirectional class
		equals: True
		description: 'testSimple3_amp:1.2'.
	self
		assert: tmp_UL7ThEDCPy3 isBidirectional
		equals: true
		description: 'testSimple3_amp:1.3'.
	self
		assert: tmp_UL7ThEDCPy3 toObjects class
		equals: Array
		description: 'testSimple3_amp:1.4'.
	self
		assert: tmp_UL7ThEDCPy3 toObjects size
		equals: 0
		description: 'testSimple3_amp:1.5'.
	self
		assert: tmp_UL7ThEDCPy3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:1.6'.
	self
		assert: tmp_UL7ThEDCPy3 controlPoints
		equals: nil
		description: 'testSimple3_amp:1.7'.
	self
		assert: tmp_UL7ThEDCPy3 toElements class
		equals: Array
		description: 'testSimple3_amp:1.8'.
	self
		assert: tmp_UL7ThEDCPy3 toElements size
		equals: 0
		description: 'testSimple3_amp:1.9'.
	self
		assert: tmp_UL7ThEDCPy3 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:1.10'.
	self
		assert: tmp_UL7ThEDCPy3 view
		equals: nil
		description: 'testSimple3_amp:1.11'.
	self
		assert: tmp_UL7ThEDCPy3 fromElements class
		equals: Array
		description: 'testSimple3_amp:1.12'.
	self
		assert: tmp_UL7ThEDCPy3 fromElements size
		equals: 0
		description: 'testSimple3_amp:1.13'.
	self
		assert: tmp_UL7ThEDCPy3 fromObjects class
		equals: Array
		description: 'testSimple3_amp:1.14'.
	self
		assert: tmp_UL7ThEDCPy3 fromObjects size
		equals: 0
		description: 'testSimple3_amp:1.15'.
	self
		assert: tmp_UL7ThEDCPy3 viewElements class
		equals: Array
		description: 'testSimple3_amp:1.16'.
	self
		assert: tmp_UL7ThEDCPy3 viewElements size
		equals: 0
		description: 'testSimple3_amp:1.17'.
	tmp_UL7ThEDCPy3 view: view.
	self
		assert: tmp_UL7ThEDCPy3 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:2.1'.
	self
		assert: tmp_UL7ThEDCPy3 isBidirectional class
		equals: True
		description: 'testSimple3_amp:2.2'.
	self
		assert: tmp_UL7ThEDCPy3 isBidirectional
		equals: true
		description: 'testSimple3_amp:2.3'.
	self
		assert: tmp_UL7ThEDCPy3 toObjects class
		equals: TSGroup
		description: 'testSimple3_amp:2.4'.
	self
		assert: tmp_UL7ThEDCPy3 toObjects size
		equals: 10
		description: 'testSimple3_amp:2.5'.
	self
		assert: tmp_UL7ThEDCPy3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:2.6'.
	self
		assert: tmp_UL7ThEDCPy3 controlPoints
		equals: nil
		description: 'testSimple3_amp:2.7'.
	self
		assert: tmp_UL7ThEDCPy3 toElements class
		equals: TSGroup
		description: 'testSimple3_amp:2.8'.
	self
		assert: tmp_UL7ThEDCPy3 toElements size
		equals: 10
		description: 'testSimple3_amp:2.9'.
	self
		assert: tmp_UL7ThEDCPy3 view class
		equals: RSView
		description: 'testSimple3_amp:2.10'.
	self
		assert: tmp_UL7ThEDCPy3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple3_amp:2.11'.
	self
		assert: tmp_UL7ThEDCPy3 view numberOfEdges
		equals: 0
		description: 'testSimple3_amp:2.12'.
	self
		assert: tmp_UL7ThEDCPy3 fromElements class
		equals: TSGroup
		description: 'testSimple3_amp:2.13'.
	self
		assert: tmp_UL7ThEDCPy3 fromElements size
		equals: 10
		description: 'testSimple3_amp:2.14'.
	self
		assert: tmp_UL7ThEDCPy3 fromObjects class
		equals: TSGroup
		description: 'testSimple3_amp:2.15'.
	self
		assert: tmp_UL7ThEDCPy3 fromObjects size
		equals: 10
		description: 'testSimple3_amp:2.16'.
	self
		assert: tmp_UL7ThEDCPy3 viewElements class
		equals: TSGroup
		description: 'testSimple3_amp:2.17'.
	self
		assert: tmp_UL7ThEDCPy3 viewElements size
		equals: 10
		description: 'testSimple3_amp:2.18'.
	tmp_jApSCTZ8jM5 := RSEdgeBuilder line.
	self
		assert: tmp_jApSCTZ8jM5 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:3.1'.
	self
		assert: tmp_jApSCTZ8jM5 isBidirectional class
		equals: True
		description: 'testSimple3_amp:3.2'.
	self
		assert: tmp_jApSCTZ8jM5 isBidirectional
		equals: true
		description: 'testSimple3_amp:3.3'.
	self
		assert: tmp_jApSCTZ8jM5 toObjects class
		equals: Array
		description: 'testSimple3_amp:3.4'.
	self
		assert: tmp_jApSCTZ8jM5 toObjects size
		equals: 0
		description: 'testSimple3_amp:3.5'.
	self
		assert: tmp_jApSCTZ8jM5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:3.6'.
	self
		assert: tmp_jApSCTZ8jM5 controlPoints
		equals: nil
		description: 'testSimple3_amp:3.7'.
	self
		assert: tmp_jApSCTZ8jM5 toElements class
		equals: Array
		description: 'testSimple3_amp:3.8'.
	self
		assert: tmp_jApSCTZ8jM5 toElements size
		equals: 0
		description: 'testSimple3_amp:3.9'.
	self
		assert: tmp_jApSCTZ8jM5 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:3.10'.
	self
		assert: tmp_jApSCTZ8jM5 view
		equals: nil
		description: 'testSimple3_amp:3.11'.
	self
		assert: tmp_jApSCTZ8jM5 fromElements class
		equals: Array
		description: 'testSimple3_amp:3.12'.
	self
		assert: tmp_jApSCTZ8jM5 fromElements size
		equals: 0
		description: 'testSimple3_amp:3.13'.
	self
		assert: tmp_jApSCTZ8jM5 fromObjects class
		equals: Array
		description: 'testSimple3_amp:3.14'.
	self
		assert: tmp_jApSCTZ8jM5 fromObjects size
		equals: 0
		description: 'testSimple3_amp:3.15'.
	self
		assert: tmp_jApSCTZ8jM5 viewElements class
		equals: Array
		description: 'testSimple3_amp:3.16'.
	self
		assert: tmp_jApSCTZ8jM5 viewElements size
		equals: 0
		description: 'testSimple3_amp:3.17'.
	self
		should: [ tmp_jApSCTZ8jM5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple3_amp:4.1'.
	tmp_1Lalv0owOT7 := RSEdgeBuilder line.
	self
		assert: tmp_1Lalv0owOT7 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:5.1'.
	self
		assert: tmp_1Lalv0owOT7 isBidirectional class
		equals: True
		description: 'testSimple3_amp:5.2'.
	self
		assert: tmp_1Lalv0owOT7 isBidirectional
		equals: true
		description: 'testSimple3_amp:5.3'.
	self
		assert: tmp_1Lalv0owOT7 toObjects class
		equals: Array
		description: 'testSimple3_amp:5.4'.
	self
		assert: tmp_1Lalv0owOT7 toObjects size
		equals: 0
		description: 'testSimple3_amp:5.5'.
	self
		assert: tmp_1Lalv0owOT7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:5.6'.
	self
		assert: tmp_1Lalv0owOT7 controlPoints
		equals: nil
		description: 'testSimple3_amp:5.7'.
	self
		assert: tmp_1Lalv0owOT7 toElements class
		equals: Array
		description: 'testSimple3_amp:5.8'.
	self
		assert: tmp_1Lalv0owOT7 toElements size
		equals: 0
		description: 'testSimple3_amp:5.9'.
	self
		assert: tmp_1Lalv0owOT7 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:5.10'.
	self
		assert: tmp_1Lalv0owOT7 view
		equals: nil
		description: 'testSimple3_amp:5.11'.
	self
		assert: tmp_1Lalv0owOT7 fromElements class
		equals: Array
		description: 'testSimple3_amp:5.12'.
	self
		assert: tmp_1Lalv0owOT7 fromElements size
		equals: 0
		description: 'testSimple3_amp:5.13'.
	self
		assert: tmp_1Lalv0owOT7 fromObjects class
		equals: Array
		description: 'testSimple3_amp:5.14'.
	self
		assert: tmp_1Lalv0owOT7 fromObjects size
		equals: 0
		description: 'testSimple3_amp:5.15'.
	self
		assert: tmp_1Lalv0owOT7 viewElements class
		equals: Array
		description: 'testSimple3_amp:5.16'.
	self
		assert: tmp_1Lalv0owOT7 viewElements size
		equals: 0
		description: 'testSimple3_amp:5.17'.
	self
		should: [ tmp_1Lalv0owOT7 toObjects: (1 to: 10) ]
		raise: AssertionFailure
		description: 'testSimple3_amp:6.1'.
	tmp_zI5UpcG26C8 := RSEdgeBuilder line.
	self
		assert: tmp_zI5UpcG26C8 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:7.1'.
	self
		assert: tmp_zI5UpcG26C8 isBidirectional class
		equals: True
		description: 'testSimple3_amp:7.2'.
	self
		assert: tmp_zI5UpcG26C8 isBidirectional
		equals: true
		description: 'testSimple3_amp:7.3'.
	self
		assert: tmp_zI5UpcG26C8 toObjects class
		equals: Array
		description: 'testSimple3_amp:7.4'.
	self
		assert: tmp_zI5UpcG26C8 toObjects size
		equals: 0
		description: 'testSimple3_amp:7.5'.
	self
		assert: tmp_zI5UpcG26C8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:7.6'.
	self
		assert: tmp_zI5UpcG26C8 controlPoints
		equals: nil
		description: 'testSimple3_amp:7.7'.
	self
		assert: tmp_zI5UpcG26C8 toElements class
		equals: Array
		description: 'testSimple3_amp:7.8'.
	self
		assert: tmp_zI5UpcG26C8 toElements size
		equals: 0
		description: 'testSimple3_amp:7.9'.
	self
		assert: tmp_zI5UpcG26C8 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:7.10'.
	self
		assert: tmp_zI5UpcG26C8 view
		equals: nil
		description: 'testSimple3_amp:7.11'.
	self
		assert: tmp_zI5UpcG26C8 fromElements class
		equals: Array
		description: 'testSimple3_amp:7.12'.
	self
		assert: tmp_zI5UpcG26C8 fromElements size
		equals: 0
		description: 'testSimple3_amp:7.13'.
	self
		assert: tmp_zI5UpcG26C8 fromObjects class
		equals: Array
		description: 'testSimple3_amp:7.14'.
	self
		assert: tmp_zI5UpcG26C8 fromObjects size
		equals: 0
		description: 'testSimple3_amp:7.15'.
	self
		assert: tmp_zI5UpcG26C8 viewElements class
		equals: Array
		description: 'testSimple3_amp:7.16'.
	self
		assert: tmp_zI5UpcG26C8 viewElements size
		equals: 0
		description: 'testSimple3_amp:7.17'.
	tmp_nusO52D00c1 := tmp_zI5UpcG26C8
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_zI5UpcG26C8 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:8.1'.
	self
		assert: tmp_zI5UpcG26C8 isBidirectional class
		equals: True
		description: 'testSimple3_amp:8.2'.
	self
		assert: tmp_zI5UpcG26C8 isBidirectional
		equals: true
		description: 'testSimple3_amp:8.3'.
	self
		assert: tmp_zI5UpcG26C8 toObjects class
		equals: Array
		description: 'testSimple3_amp:8.4'.
	self
		assert: tmp_zI5UpcG26C8 toObjects size
		equals: 0
		description: 'testSimple3_amp:8.5'.
	self
		assert: tmp_zI5UpcG26C8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:8.6'.
	self
		assert: tmp_zI5UpcG26C8 controlPoints
		equals: nil
		description: 'testSimple3_amp:8.7'.
	self
		assert: tmp_zI5UpcG26C8 toElements class
		equals: Array
		description: 'testSimple3_amp:8.8'.
	self
		assert: tmp_zI5UpcG26C8 toElements size
		equals: 0
		description: 'testSimple3_amp:8.9'.
	self
		assert: tmp_zI5UpcG26C8 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:8.10'.
	self
		assert: tmp_zI5UpcG26C8 view
		equals: nil
		description: 'testSimple3_amp:8.11'.
	self
		assert: tmp_zI5UpcG26C8 fromElements class
		equals: Array
		description: 'testSimple3_amp:8.12'.
	self
		assert: tmp_zI5UpcG26C8 fromElements size
		equals: 0
		description: 'testSimple3_amp:8.13'.
	self
		assert: tmp_zI5UpcG26C8 fromObjects class
		equals: Array
		description: 'testSimple3_amp:8.14'.
	self
		assert: tmp_zI5UpcG26C8 fromObjects size
		equals: 0
		description: 'testSimple3_amp:8.15'.
	self
		assert: tmp_zI5UpcG26C8 viewElements class
		equals: Array
		description: 'testSimple3_amp:8.16'.
	self
		assert: tmp_zI5UpcG26C8 viewElements size
		equals: 0
		description: 'testSimple3_amp:8.17'.
	self
		assert: tmp_nusO52D00c1 class
		equals: TSGroup
		description: 'testSimple3_amp:8.1'.
	self
		assert: tmp_nusO52D00c1 size
		equals: 0
		description: 'testSimple3_amp:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple4_amp [
	<madeBySmallAmp>
	| tmp_jY2Adj0zIm1 tmp_FvWxr0ee7e3 tmp_Uffjg8HodU5 tmp_3JUujpvyv27 tmp_wxykp88GgM8 |
	tmp_FvWxr0ee7e3 := RSEdgeBuilder line.
	self
		assert: tmp_FvWxr0ee7e3 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:1.1'.
	self
		assert: tmp_FvWxr0ee7e3 isBidirectional class
		equals: True
		description: 'testSimple4_amp:1.2'.
	self
		assert: tmp_FvWxr0ee7e3 isBidirectional
		equals: true
		description: 'testSimple4_amp:1.3'.
	self
		assert: tmp_FvWxr0ee7e3 toObjects class
		equals: Array
		description: 'testSimple4_amp:1.4'.
	self
		assert: tmp_FvWxr0ee7e3 toObjects size
		equals: 0
		description: 'testSimple4_amp:1.5'.
	self
		assert: tmp_FvWxr0ee7e3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:1.6'.
	self
		assert: tmp_FvWxr0ee7e3 controlPoints
		equals: nil
		description: 'testSimple4_amp:1.7'.
	self
		assert: tmp_FvWxr0ee7e3 toElements class
		equals: Array
		description: 'testSimple4_amp:1.8'.
	self
		assert: tmp_FvWxr0ee7e3 toElements size
		equals: 0
		description: 'testSimple4_amp:1.9'.
	self
		assert: tmp_FvWxr0ee7e3 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:1.10'.
	self
		assert: tmp_FvWxr0ee7e3 view
		equals: nil
		description: 'testSimple4_amp:1.11'.
	self
		assert: tmp_FvWxr0ee7e3 fromElements class
		equals: Array
		description: 'testSimple4_amp:1.12'.
	self
		assert: tmp_FvWxr0ee7e3 fromElements size
		equals: 0
		description: 'testSimple4_amp:1.13'.
	self
		assert: tmp_FvWxr0ee7e3 fromObjects class
		equals: Array
		description: 'testSimple4_amp:1.14'.
	self
		assert: tmp_FvWxr0ee7e3 fromObjects size
		equals: 0
		description: 'testSimple4_amp:1.15'.
	self
		assert: tmp_FvWxr0ee7e3 viewElements class
		equals: Array
		description: 'testSimple4_amp:1.16'.
	self
		assert: tmp_FvWxr0ee7e3 viewElements size
		equals: 0
		description: 'testSimple4_amp:1.17'.
	tmp_FvWxr0ee7e3 view: view.
	self
		assert: tmp_FvWxr0ee7e3 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:2.1'.
	self
		assert: tmp_FvWxr0ee7e3 isBidirectional class
		equals: True
		description: 'testSimple4_amp:2.2'.
	self
		assert: tmp_FvWxr0ee7e3 isBidirectional
		equals: true
		description: 'testSimple4_amp:2.3'.
	self
		assert: tmp_FvWxr0ee7e3 toObjects class
		equals: TSGroup
		description: 'testSimple4_amp:2.4'.
	self
		assert: tmp_FvWxr0ee7e3 toObjects size
		equals: 10
		description: 'testSimple4_amp:2.5'.
	self
		assert: tmp_FvWxr0ee7e3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:2.6'.
	self
		assert: tmp_FvWxr0ee7e3 controlPoints
		equals: nil
		description: 'testSimple4_amp:2.7'.
	self
		assert: tmp_FvWxr0ee7e3 toElements class
		equals: TSGroup
		description: 'testSimple4_amp:2.8'.
	self
		assert: tmp_FvWxr0ee7e3 toElements size
		equals: 10
		description: 'testSimple4_amp:2.9'.
	self
		assert: tmp_FvWxr0ee7e3 view class
		equals: RSView
		description: 'testSimple4_amp:2.10'.
	self
		assert: tmp_FvWxr0ee7e3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple4_amp:2.11'.
	self
		assert: tmp_FvWxr0ee7e3 view numberOfEdges
		equals: 0
		description: 'testSimple4_amp:2.12'.
	self
		assert: tmp_FvWxr0ee7e3 fromElements class
		equals: TSGroup
		description: 'testSimple4_amp:2.13'.
	self
		assert: tmp_FvWxr0ee7e3 fromElements size
		equals: 10
		description: 'testSimple4_amp:2.14'.
	self
		assert: tmp_FvWxr0ee7e3 fromObjects class
		equals: TSGroup
		description: 'testSimple4_amp:2.15'.
	self
		assert: tmp_FvWxr0ee7e3 fromObjects size
		equals: 10
		description: 'testSimple4_amp:2.16'.
	self
		assert: tmp_FvWxr0ee7e3 viewElements class
		equals: TSGroup
		description: 'testSimple4_amp:2.17'.
	self
		assert: tmp_FvWxr0ee7e3 viewElements size
		equals: 10
		description: 'testSimple4_amp:2.18'.
	tmp_Uffjg8HodU5 := RSEdgeBuilder line.
	self
		assert: tmp_Uffjg8HodU5 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:3.1'.
	self
		assert: tmp_Uffjg8HodU5 isBidirectional class
		equals: True
		description: 'testSimple4_amp:3.2'.
	self
		assert: tmp_Uffjg8HodU5 isBidirectional
		equals: true
		description: 'testSimple4_amp:3.3'.
	self
		assert: tmp_Uffjg8HodU5 toObjects class
		equals: Array
		description: 'testSimple4_amp:3.4'.
	self
		assert: tmp_Uffjg8HodU5 toObjects size
		equals: 0
		description: 'testSimple4_amp:3.5'.
	self
		assert: tmp_Uffjg8HodU5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:3.6'.
	self
		assert: tmp_Uffjg8HodU5 controlPoints
		equals: nil
		description: 'testSimple4_amp:3.7'.
	self
		assert: tmp_Uffjg8HodU5 toElements class
		equals: Array
		description: 'testSimple4_amp:3.8'.
	self
		assert: tmp_Uffjg8HodU5 toElements size
		equals: 0
		description: 'testSimple4_amp:3.9'.
	self
		assert: tmp_Uffjg8HodU5 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:3.10'.
	self
		assert: tmp_Uffjg8HodU5 view
		equals: nil
		description: 'testSimple4_amp:3.11'.
	self
		assert: tmp_Uffjg8HodU5 fromElements class
		equals: Array
		description: 'testSimple4_amp:3.12'.
	self
		assert: tmp_Uffjg8HodU5 fromElements size
		equals: 0
		description: 'testSimple4_amp:3.13'.
	self
		assert: tmp_Uffjg8HodU5 fromObjects class
		equals: Array
		description: 'testSimple4_amp:3.14'.
	self
		assert: tmp_Uffjg8HodU5 fromObjects size
		equals: 0
		description: 'testSimple4_amp:3.15'.
	self
		assert: tmp_Uffjg8HodU5 viewElements class
		equals: Array
		description: 'testSimple4_amp:3.16'.
	self
		assert: tmp_Uffjg8HodU5 viewElements size
		equals: 0
		description: 'testSimple4_amp:3.17'.
	self
		should: [ tmp_Uffjg8HodU5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4_amp:4.1'.
	tmp_3JUujpvyv27 := RSEdgeBuilder line.
	self
		assert: tmp_3JUujpvyv27 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:5.1'.
	self
		assert: tmp_3JUujpvyv27 isBidirectional class
		equals: True
		description: 'testSimple4_amp:5.2'.
	self
		assert: tmp_3JUujpvyv27 isBidirectional
		equals: true
		description: 'testSimple4_amp:5.3'.
	self
		assert: tmp_3JUujpvyv27 toObjects class
		equals: Array
		description: 'testSimple4_amp:5.4'.
	self
		assert: tmp_3JUujpvyv27 toObjects size
		equals: 0
		description: 'testSimple4_amp:5.5'.
	self
		assert: tmp_3JUujpvyv27 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:5.6'.
	self
		assert: tmp_3JUujpvyv27 controlPoints
		equals: nil
		description: 'testSimple4_amp:5.7'.
	self
		assert: tmp_3JUujpvyv27 toElements class
		equals: Array
		description: 'testSimple4_amp:5.8'.
	self
		assert: tmp_3JUujpvyv27 toElements size
		equals: 0
		description: 'testSimple4_amp:5.9'.
	self
		assert: tmp_3JUujpvyv27 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:5.10'.
	self
		assert: tmp_3JUujpvyv27 view
		equals: nil
		description: 'testSimple4_amp:5.11'.
	self
		assert: tmp_3JUujpvyv27 fromElements class
		equals: Array
		description: 'testSimple4_amp:5.12'.
	self
		assert: tmp_3JUujpvyv27 fromElements size
		equals: 0
		description: 'testSimple4_amp:5.13'.
	self
		assert: tmp_3JUujpvyv27 fromObjects class
		equals: Array
		description: 'testSimple4_amp:5.14'.
	self
		assert: tmp_3JUujpvyv27 fromObjects size
		equals: 0
		description: 'testSimple4_amp:5.15'.
	self
		assert: tmp_3JUujpvyv27 viewElements class
		equals: Array
		description: 'testSimple4_amp:5.16'.
	self
		assert: tmp_3JUujpvyv27 viewElements size
		equals: 0
		description: 'testSimple4_amp:5.17'.
	self
		should: [ tmp_3JUujpvyv27 toObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4_amp:6.1'.
	tmp_wxykp88GgM8 := RSEdgeBuilder line.
	self
		assert: tmp_wxykp88GgM8 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:7.1'.
	self
		assert: tmp_wxykp88GgM8 isBidirectional class
		equals: True
		description: 'testSimple4_amp:7.2'.
	self
		assert: tmp_wxykp88GgM8 isBidirectional
		equals: true
		description: 'testSimple4_amp:7.3'.
	self
		assert: tmp_wxykp88GgM8 toObjects class
		equals: Array
		description: 'testSimple4_amp:7.4'.
	self
		assert: tmp_wxykp88GgM8 toObjects size
		equals: 0
		description: 'testSimple4_amp:7.5'.
	self
		assert: tmp_wxykp88GgM8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:7.6'.
	self
		assert: tmp_wxykp88GgM8 controlPoints
		equals: nil
		description: 'testSimple4_amp:7.7'.
	self
		assert: tmp_wxykp88GgM8 toElements class
		equals: Array
		description: 'testSimple4_amp:7.8'.
	self
		assert: tmp_wxykp88GgM8 toElements size
		equals: 0
		description: 'testSimple4_amp:7.9'.
	self
		assert: tmp_wxykp88GgM8 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:7.10'.
	self
		assert: tmp_wxykp88GgM8 view
		equals: nil
		description: 'testSimple4_amp:7.11'.
	self
		assert: tmp_wxykp88GgM8 fromElements class
		equals: Array
		description: 'testSimple4_amp:7.12'.
	self
		assert: tmp_wxykp88GgM8 fromElements size
		equals: 0
		description: 'testSimple4_amp:7.13'.
	self
		assert: tmp_wxykp88GgM8 fromObjects class
		equals: Array
		description: 'testSimple4_amp:7.14'.
	self
		assert: tmp_wxykp88GgM8 fromObjects size
		equals: 0
		description: 'testSimple4_amp:7.15'.
	self
		assert: tmp_wxykp88GgM8 viewElements class
		equals: Array
		description: 'testSimple4_amp:7.16'.
	self
		assert: tmp_wxykp88GgM8 viewElements size
		equals: 0
		description: 'testSimple4_amp:7.17'.
	tmp_jY2Adj0zIm1 := tmp_wxykp88GgM8
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_wxykp88GgM8 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:8.1'.
	self
		assert: tmp_wxykp88GgM8 isBidirectional class
		equals: True
		description: 'testSimple4_amp:8.2'.
	self
		assert: tmp_wxykp88GgM8 isBidirectional
		equals: true
		description: 'testSimple4_amp:8.3'.
	self
		assert: tmp_wxykp88GgM8 toObjects class
		equals: Array
		description: 'testSimple4_amp:8.4'.
	self
		assert: tmp_wxykp88GgM8 toObjects size
		equals: 0
		description: 'testSimple4_amp:8.5'.
	self
		assert: tmp_wxykp88GgM8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:8.6'.
	self
		assert: tmp_wxykp88GgM8 controlPoints
		equals: nil
		description: 'testSimple4_amp:8.7'.
	self
		assert: tmp_wxykp88GgM8 toElements class
		equals: Array
		description: 'testSimple4_amp:8.8'.
	self
		assert: tmp_wxykp88GgM8 toElements size
		equals: 0
		description: 'testSimple4_amp:8.9'.
	self
		assert: tmp_wxykp88GgM8 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:8.10'.
	self
		assert: tmp_wxykp88GgM8 view
		equals: nil
		description: 'testSimple4_amp:8.11'.
	self
		assert: tmp_wxykp88GgM8 fromElements class
		equals: Array
		description: 'testSimple4_amp:8.12'.
	self
		assert: tmp_wxykp88GgM8 fromElements size
		equals: 0
		description: 'testSimple4_amp:8.13'.
	self
		assert: tmp_wxykp88GgM8 fromObjects class
		equals: Array
		description: 'testSimple4_amp:8.14'.
	self
		assert: tmp_wxykp88GgM8 fromObjects size
		equals: 0
		description: 'testSimple4_amp:8.15'.
	self
		assert: tmp_wxykp88GgM8 viewElements class
		equals: Array
		description: 'testSimple4_amp:8.16'.
	self
		assert: tmp_wxykp88GgM8 viewElements size
		equals: 0
		description: 'testSimple4_amp:8.17'.
	self
		assert: tmp_jY2Adj0zIm1 class
		equals: TSGroup
		description: 'testSimple4_amp:8.1'.
	self
		assert: tmp_jY2Adj0zIm1 size
		equals: 0
		description: 'testSimple4_amp:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple5_amp [
	<madeBySmallAmp>
	| tmp_4bxiPnh2z11 tmp_yLSoCOHTuY3 tmp_EvHZFgNPIP5 tmp_VPZ9w5oi8L6 |
	tmp_yLSoCOHTuY3 := RSEdgeBuilder line.
	self
		assert: tmp_yLSoCOHTuY3 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:1.1'.
	self
		assert: tmp_yLSoCOHTuY3 isBidirectional class
		equals: True
		description: 'testSimple5_amp:1.2'.
	self
		assert: tmp_yLSoCOHTuY3 isBidirectional
		equals: true
		description: 'testSimple5_amp:1.3'.
	self
		assert: tmp_yLSoCOHTuY3 toObjects class
		equals: Array
		description: 'testSimple5_amp:1.4'.
	self
		assert: tmp_yLSoCOHTuY3 toObjects size
		equals: 0
		description: 'testSimple5_amp:1.5'.
	self
		assert: tmp_yLSoCOHTuY3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:1.6'.
	self
		assert: tmp_yLSoCOHTuY3 controlPoints
		equals: nil
		description: 'testSimple5_amp:1.7'.
	self
		assert: tmp_yLSoCOHTuY3 toElements class
		equals: Array
		description: 'testSimple5_amp:1.8'.
	self
		assert: tmp_yLSoCOHTuY3 toElements size
		equals: 0
		description: 'testSimple5_amp:1.9'.
	self
		assert: tmp_yLSoCOHTuY3 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:1.10'.
	self
		assert: tmp_yLSoCOHTuY3 view
		equals: nil
		description: 'testSimple5_amp:1.11'.
	self
		assert: tmp_yLSoCOHTuY3 fromElements class
		equals: Array
		description: 'testSimple5_amp:1.12'.
	self
		assert: tmp_yLSoCOHTuY3 fromElements size
		equals: 0
		description: 'testSimple5_amp:1.13'.
	self
		assert: tmp_yLSoCOHTuY3 fromObjects class
		equals: Array
		description: 'testSimple5_amp:1.14'.
	self
		assert: tmp_yLSoCOHTuY3 fromObjects size
		equals: 0
		description: 'testSimple5_amp:1.15'.
	self
		assert: tmp_yLSoCOHTuY3 viewElements class
		equals: Array
		description: 'testSimple5_amp:1.16'.
	self
		assert: tmp_yLSoCOHTuY3 viewElements size
		equals: 0
		description: 'testSimple5_amp:1.17'.
	tmp_yLSoCOHTuY3 view: view.
	self
		assert: tmp_yLSoCOHTuY3 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:2.1'.
	self
		assert: tmp_yLSoCOHTuY3 isBidirectional class
		equals: True
		description: 'testSimple5_amp:2.2'.
	self
		assert: tmp_yLSoCOHTuY3 isBidirectional
		equals: true
		description: 'testSimple5_amp:2.3'.
	self
		assert: tmp_yLSoCOHTuY3 toObjects class
		equals: TSGroup
		description: 'testSimple5_amp:2.4'.
	self
		assert: tmp_yLSoCOHTuY3 toObjects size
		equals: 10
		description: 'testSimple5_amp:2.5'.
	self
		assert: tmp_yLSoCOHTuY3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:2.6'.
	self
		assert: tmp_yLSoCOHTuY3 controlPoints
		equals: nil
		description: 'testSimple5_amp:2.7'.
	self
		assert: tmp_yLSoCOHTuY3 toElements class
		equals: TSGroup
		description: 'testSimple5_amp:2.8'.
	self
		assert: tmp_yLSoCOHTuY3 toElements size
		equals: 10
		description: 'testSimple5_amp:2.9'.
	self
		assert: tmp_yLSoCOHTuY3 view class
		equals: RSView
		description: 'testSimple5_amp:2.10'.
	self
		assert: tmp_yLSoCOHTuY3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple5_amp:2.11'.
	self
		assert: tmp_yLSoCOHTuY3 view numberOfEdges
		equals: 0
		description: 'testSimple5_amp:2.12'.
	self
		assert: tmp_yLSoCOHTuY3 fromElements class
		equals: TSGroup
		description: 'testSimple5_amp:2.13'.
	self
		assert: tmp_yLSoCOHTuY3 fromElements size
		equals: 10
		description: 'testSimple5_amp:2.14'.
	self
		assert: tmp_yLSoCOHTuY3 fromObjects class
		equals: TSGroup
		description: 'testSimple5_amp:2.15'.
	self
		assert: tmp_yLSoCOHTuY3 fromObjects size
		equals: 10
		description: 'testSimple5_amp:2.16'.
	self
		assert: tmp_yLSoCOHTuY3 viewElements class
		equals: TSGroup
		description: 'testSimple5_amp:2.17'.
	self
		assert: tmp_yLSoCOHTuY3 viewElements size
		equals: 10
		description: 'testSimple5_amp:2.18'.
	tmp_EvHZFgNPIP5 := RSEdgeBuilder line.
	self
		assert: tmp_EvHZFgNPIP5 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:3.1'.
	self
		assert: tmp_EvHZFgNPIP5 isBidirectional class
		equals: True
		description: 'testSimple5_amp:3.2'.
	self
		assert: tmp_EvHZFgNPIP5 isBidirectional
		equals: true
		description: 'testSimple5_amp:3.3'.
	self
		assert: tmp_EvHZFgNPIP5 toObjects class
		equals: Array
		description: 'testSimple5_amp:3.4'.
	self
		assert: tmp_EvHZFgNPIP5 toObjects size
		equals: 0
		description: 'testSimple5_amp:3.5'.
	self
		assert: tmp_EvHZFgNPIP5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:3.6'.
	self
		assert: tmp_EvHZFgNPIP5 controlPoints
		equals: nil
		description: 'testSimple5_amp:3.7'.
	self
		assert: tmp_EvHZFgNPIP5 toElements class
		equals: Array
		description: 'testSimple5_amp:3.8'.
	self
		assert: tmp_EvHZFgNPIP5 toElements size
		equals: 0
		description: 'testSimple5_amp:3.9'.
	self
		assert: tmp_EvHZFgNPIP5 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:3.10'.
	self
		assert: tmp_EvHZFgNPIP5 view
		equals: nil
		description: 'testSimple5_amp:3.11'.
	self
		assert: tmp_EvHZFgNPIP5 fromElements class
		equals: Array
		description: 'testSimple5_amp:3.12'.
	self
		assert: tmp_EvHZFgNPIP5 fromElements size
		equals: 0
		description: 'testSimple5_amp:3.13'.
	self
		assert: tmp_EvHZFgNPIP5 fromObjects class
		equals: Array
		description: 'testSimple5_amp:3.14'.
	self
		assert: tmp_EvHZFgNPIP5 fromObjects size
		equals: 0
		description: 'testSimple5_amp:3.15'.
	self
		assert: tmp_EvHZFgNPIP5 viewElements class
		equals: Array
		description: 'testSimple5_amp:3.16'.
	self
		assert: tmp_EvHZFgNPIP5 viewElements size
		equals: 0
		description: 'testSimple5_amp:3.17'.
	self
		should: [ tmp_EvHZFgNPIP5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple5_amp:4.1'.
	tmp_VPZ9w5oi8L6 := RSEdgeBuilder line.
	self
		assert: tmp_VPZ9w5oi8L6 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:5.1'.
	self
		assert: tmp_VPZ9w5oi8L6 isBidirectional class
		equals: True
		description: 'testSimple5_amp:5.2'.
	self
		assert: tmp_VPZ9w5oi8L6 isBidirectional
		equals: true
		description: 'testSimple5_amp:5.3'.
	self
		assert: tmp_VPZ9w5oi8L6 toObjects class
		equals: Array
		description: 'testSimple5_amp:5.4'.
	self
		assert: tmp_VPZ9w5oi8L6 toObjects size
		equals: 0
		description: 'testSimple5_amp:5.5'.
	self
		assert: tmp_VPZ9w5oi8L6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:5.6'.
	self
		assert: tmp_VPZ9w5oi8L6 controlPoints
		equals: nil
		description: 'testSimple5_amp:5.7'.
	self
		assert: tmp_VPZ9w5oi8L6 toElements class
		equals: Array
		description: 'testSimple5_amp:5.8'.
	self
		assert: tmp_VPZ9w5oi8L6 toElements size
		equals: 0
		description: 'testSimple5_amp:5.9'.
	self
		assert: tmp_VPZ9w5oi8L6 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:5.10'.
	self
		assert: tmp_VPZ9w5oi8L6 view
		equals: nil
		description: 'testSimple5_amp:5.11'.
	self
		assert: tmp_VPZ9w5oi8L6 fromElements class
		equals: Array
		description: 'testSimple5_amp:5.12'.
	self
		assert: tmp_VPZ9w5oi8L6 fromElements size
		equals: 0
		description: 'testSimple5_amp:5.13'.
	self
		assert: tmp_VPZ9w5oi8L6 fromObjects class
		equals: Array
		description: 'testSimple5_amp:5.14'.
	self
		assert: tmp_VPZ9w5oi8L6 fromObjects size
		equals: 0
		description: 'testSimple5_amp:5.15'.
	self
		assert: tmp_VPZ9w5oi8L6 viewElements class
		equals: Array
		description: 'testSimple5_amp:5.16'.
	self
		assert: tmp_VPZ9w5oi8L6 viewElements size
		equals: 0
		description: 'testSimple5_amp:5.17'.
	tmp_4bxiPnh2z11 := tmp_VPZ9w5oi8L6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self
		assert: tmp_VPZ9w5oi8L6 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:6.1'.
	self
		assert: tmp_VPZ9w5oi8L6 isBidirectional class
		equals: True
		description: 'testSimple5_amp:6.2'.
	self
		assert: tmp_VPZ9w5oi8L6 isBidirectional
		equals: true
		description: 'testSimple5_amp:6.3'.
	self
		assert: tmp_VPZ9w5oi8L6 toObjects class
		equals: Array
		description: 'testSimple5_amp:6.4'.
	self
		assert: tmp_VPZ9w5oi8L6 toObjects size
		equals: 0
		description: 'testSimple5_amp:6.5'.
	self
		assert: tmp_VPZ9w5oi8L6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:6.6'.
	self
		assert: tmp_VPZ9w5oi8L6 controlPoints
		equals: nil
		description: 'testSimple5_amp:6.7'.
	self
		assert: tmp_VPZ9w5oi8L6 toElements class
		equals: Array
		description: 'testSimple5_amp:6.8'.
	self
		assert: tmp_VPZ9w5oi8L6 toElements size
		equals: 0
		description: 'testSimple5_amp:6.9'.
	self
		assert: tmp_VPZ9w5oi8L6 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:6.10'.
	self
		assert: tmp_VPZ9w5oi8L6 view
		equals: nil
		description: 'testSimple5_amp:6.11'.
	self
		assert: tmp_VPZ9w5oi8L6 fromElements class
		equals: Array
		description: 'testSimple5_amp:6.12'.
	self
		assert: tmp_VPZ9w5oi8L6 fromElements size
		equals: 0
		description: 'testSimple5_amp:6.13'.
	self
		assert: tmp_VPZ9w5oi8L6 fromObjects class
		equals: Array
		description: 'testSimple5_amp:6.14'.
	self
		assert: tmp_VPZ9w5oi8L6 fromObjects size
		equals: 0
		description: 'testSimple5_amp:6.15'.
	self
		assert: tmp_VPZ9w5oi8L6 viewElements class
		equals: Array
		description: 'testSimple5_amp:6.16'.
	self
		assert: tmp_VPZ9w5oi8L6 viewElements size
		equals: 0
		description: 'testSimple5_amp:6.17'.
	self
		assert: tmp_4bxiPnh2z11 class
		equals: TSGroup
		description: 'testSimple5_amp:6.1'.
	self
		assert: tmp_4bxiPnh2z11 size
		equals: 0
		description: 'testSimple5_amp:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple6_amp [
	<madeBySmallAmp>
	| tmp_4YagdRm4CS1 tmp_l6TUP2LWYC3 tmp_UNAUAllZQJ5 tmp_wmROgOcWzR6 |
	tmp_l6TUP2LWYC3 := RSEdgeBuilder line.
	self
		assert: tmp_l6TUP2LWYC3 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:1.1'.
	self
		assert: tmp_l6TUP2LWYC3 isBidirectional class
		equals: True
		description: 'testSimple6_amp:1.2'.
	self
		assert: tmp_l6TUP2LWYC3 isBidirectional
		equals: true
		description: 'testSimple6_amp:1.3'.
	self
		assert: tmp_l6TUP2LWYC3 toObjects class
		equals: Array
		description: 'testSimple6_amp:1.4'.
	self
		assert: tmp_l6TUP2LWYC3 toObjects size
		equals: 0
		description: 'testSimple6_amp:1.5'.
	self
		assert: tmp_l6TUP2LWYC3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:1.6'.
	self
		assert: tmp_l6TUP2LWYC3 controlPoints
		equals: nil
		description: 'testSimple6_amp:1.7'.
	self
		assert: tmp_l6TUP2LWYC3 toElements class
		equals: Array
		description: 'testSimple6_amp:1.8'.
	self
		assert: tmp_l6TUP2LWYC3 toElements size
		equals: 0
		description: 'testSimple6_amp:1.9'.
	self
		assert: tmp_l6TUP2LWYC3 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:1.10'.
	self
		assert: tmp_l6TUP2LWYC3 view
		equals: nil
		description: 'testSimple6_amp:1.11'.
	self
		assert: tmp_l6TUP2LWYC3 fromElements class
		equals: Array
		description: 'testSimple6_amp:1.12'.
	self
		assert: tmp_l6TUP2LWYC3 fromElements size
		equals: 0
		description: 'testSimple6_amp:1.13'.
	self
		assert: tmp_l6TUP2LWYC3 fromObjects class
		equals: Array
		description: 'testSimple6_amp:1.14'.
	self
		assert: tmp_l6TUP2LWYC3 fromObjects size
		equals: 0
		description: 'testSimple6_amp:1.15'.
	self
		assert: tmp_l6TUP2LWYC3 viewElements class
		equals: Array
		description: 'testSimple6_amp:1.16'.
	self
		assert: tmp_l6TUP2LWYC3 viewElements size
		equals: 0
		description: 'testSimple6_amp:1.17'.
	tmp_l6TUP2LWYC3 view: view.
	self
		assert: tmp_l6TUP2LWYC3 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:2.1'.
	self
		assert: tmp_l6TUP2LWYC3 isBidirectional class
		equals: True
		description: 'testSimple6_amp:2.2'.
	self
		assert: tmp_l6TUP2LWYC3 isBidirectional
		equals: true
		description: 'testSimple6_amp:2.3'.
	self
		assert: tmp_l6TUP2LWYC3 toObjects class
		equals: TSGroup
		description: 'testSimple6_amp:2.4'.
	self
		assert: tmp_l6TUP2LWYC3 toObjects size
		equals: 10
		description: 'testSimple6_amp:2.5'.
	self
		assert: tmp_l6TUP2LWYC3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:2.6'.
	self
		assert: tmp_l6TUP2LWYC3 controlPoints
		equals: nil
		description: 'testSimple6_amp:2.7'.
	self
		assert: tmp_l6TUP2LWYC3 toElements class
		equals: TSGroup
		description: 'testSimple6_amp:2.8'.
	self
		assert: tmp_l6TUP2LWYC3 toElements size
		equals: 10
		description: 'testSimple6_amp:2.9'.
	self
		assert: tmp_l6TUP2LWYC3 view class
		equals: RSView
		description: 'testSimple6_amp:2.10'.
	self
		assert: tmp_l6TUP2LWYC3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple6_amp:2.11'.
	self
		assert: tmp_l6TUP2LWYC3 view numberOfEdges
		equals: 0
		description: 'testSimple6_amp:2.12'.
	self
		assert: tmp_l6TUP2LWYC3 fromElements class
		equals: TSGroup
		description: 'testSimple6_amp:2.13'.
	self
		assert: tmp_l6TUP2LWYC3 fromElements size
		equals: 10
		description: 'testSimple6_amp:2.14'.
	self
		assert: tmp_l6TUP2LWYC3 fromObjects class
		equals: TSGroup
		description: 'testSimple6_amp:2.15'.
	self
		assert: tmp_l6TUP2LWYC3 fromObjects size
		equals: 10
		description: 'testSimple6_amp:2.16'.
	self
		assert: tmp_l6TUP2LWYC3 viewElements class
		equals: TSGroup
		description: 'testSimple6_amp:2.17'.
	self
		assert: tmp_l6TUP2LWYC3 viewElements size
		equals: 10
		description: 'testSimple6_amp:2.18'.
	tmp_UNAUAllZQJ5 := RSEdgeBuilder line.
	self
		assert: tmp_UNAUAllZQJ5 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:3.1'.
	self
		assert: tmp_UNAUAllZQJ5 isBidirectional class
		equals: True
		description: 'testSimple6_amp:3.2'.
	self
		assert: tmp_UNAUAllZQJ5 isBidirectional
		equals: true
		description: 'testSimple6_amp:3.3'.
	self
		assert: tmp_UNAUAllZQJ5 toObjects class
		equals: Array
		description: 'testSimple6_amp:3.4'.
	self
		assert: tmp_UNAUAllZQJ5 toObjects size
		equals: 0
		description: 'testSimple6_amp:3.5'.
	self
		assert: tmp_UNAUAllZQJ5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:3.6'.
	self
		assert: tmp_UNAUAllZQJ5 controlPoints
		equals: nil
		description: 'testSimple6_amp:3.7'.
	self
		assert: tmp_UNAUAllZQJ5 toElements class
		equals: Array
		description: 'testSimple6_amp:3.8'.
	self
		assert: tmp_UNAUAllZQJ5 toElements size
		equals: 0
		description: 'testSimple6_amp:3.9'.
	self
		assert: tmp_UNAUAllZQJ5 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:3.10'.
	self
		assert: tmp_UNAUAllZQJ5 view
		equals: nil
		description: 'testSimple6_amp:3.11'.
	self
		assert: tmp_UNAUAllZQJ5 fromElements class
		equals: Array
		description: 'testSimple6_amp:3.12'.
	self
		assert: tmp_UNAUAllZQJ5 fromElements size
		equals: 0
		description: 'testSimple6_amp:3.13'.
	self
		assert: tmp_UNAUAllZQJ5 fromObjects class
		equals: Array
		description: 'testSimple6_amp:3.14'.
	self
		assert: tmp_UNAUAllZQJ5 fromObjects size
		equals: 0
		description: 'testSimple6_amp:3.15'.
	self
		assert: tmp_UNAUAllZQJ5 viewElements class
		equals: Array
		description: 'testSimple6_amp:3.16'.
	self
		assert: tmp_UNAUAllZQJ5 viewElements size
		equals: 0
		description: 'testSimple6_amp:3.17'.
	self
		should: [ tmp_UNAUAllZQJ5 fromObjects: (Array with: 2) ]
		raise: AssertionFailure
		description: 'testSimple6_amp:4.1'.
	tmp_wmROgOcWzR6 := RSEdgeBuilder line.
	self
		assert: tmp_wmROgOcWzR6 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:5.1'.
	self
		assert: tmp_wmROgOcWzR6 isBidirectional class
		equals: True
		description: 'testSimple6_amp:5.2'.
	self
		assert: tmp_wmROgOcWzR6 isBidirectional
		equals: true
		description: 'testSimple6_amp:5.3'.
	self
		assert: tmp_wmROgOcWzR6 toObjects class
		equals: Array
		description: 'testSimple6_amp:5.4'.
	self
		assert: tmp_wmROgOcWzR6 toObjects size
		equals: 0
		description: 'testSimple6_amp:5.5'.
	self
		assert: tmp_wmROgOcWzR6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:5.6'.
	self
		assert: tmp_wmROgOcWzR6 controlPoints
		equals: nil
		description: 'testSimple6_amp:5.7'.
	self
		assert: tmp_wmROgOcWzR6 toElements class
		equals: Array
		description: 'testSimple6_amp:5.8'.
	self
		assert: tmp_wmROgOcWzR6 toElements size
		equals: 0
		description: 'testSimple6_amp:5.9'.
	self
		assert: tmp_wmROgOcWzR6 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:5.10'.
	self
		assert: tmp_wmROgOcWzR6 view
		equals: nil
		description: 'testSimple6_amp:5.11'.
	self
		assert: tmp_wmROgOcWzR6 fromElements class
		equals: Array
		description: 'testSimple6_amp:5.12'.
	self
		assert: tmp_wmROgOcWzR6 fromElements size
		equals: 0
		description: 'testSimple6_amp:5.13'.
	self
		assert: tmp_wmROgOcWzR6 fromObjects class
		equals: Array
		description: 'testSimple6_amp:5.14'.
	self
		assert: tmp_wmROgOcWzR6 fromObjects size
		equals: 0
		description: 'testSimple6_amp:5.15'.
	self
		assert: tmp_wmROgOcWzR6 viewElements class
		equals: Array
		description: 'testSimple6_amp:5.16'.
	self
		assert: tmp_wmROgOcWzR6 viewElements size
		equals: 0
		description: 'testSimple6_amp:5.17'.
	tmp_4YagdRm4CS1 := tmp_wmROgOcWzR6
		connectFromAll: (Array with: 2)
		to: 3.
	self
		assert: tmp_wmROgOcWzR6 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:6.1'.
	self
		assert: tmp_wmROgOcWzR6 isBidirectional class
		equals: True
		description: 'testSimple6_amp:6.2'.
	self
		assert: tmp_wmROgOcWzR6 isBidirectional
		equals: true
		description: 'testSimple6_amp:6.3'.
	self
		assert: tmp_wmROgOcWzR6 toObjects class
		equals: Array
		description: 'testSimple6_amp:6.4'.
	self
		assert: tmp_wmROgOcWzR6 toObjects size
		equals: 0
		description: 'testSimple6_amp:6.5'.
	self
		assert: tmp_wmROgOcWzR6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:6.6'.
	self
		assert: tmp_wmROgOcWzR6 controlPoints
		equals: nil
		description: 'testSimple6_amp:6.7'.
	self
		assert: tmp_wmROgOcWzR6 toElements class
		equals: Array
		description: 'testSimple6_amp:6.8'.
	self
		assert: tmp_wmROgOcWzR6 toElements size
		equals: 0
		description: 'testSimple6_amp:6.9'.
	self
		assert: tmp_wmROgOcWzR6 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:6.10'.
	self
		assert: tmp_wmROgOcWzR6 view
		equals: nil
		description: 'testSimple6_amp:6.11'.
	self
		assert: tmp_wmROgOcWzR6 fromElements class
		equals: Array
		description: 'testSimple6_amp:6.12'.
	self
		assert: tmp_wmROgOcWzR6 fromElements size
		equals: 0
		description: 'testSimple6_amp:6.13'.
	self
		assert: tmp_wmROgOcWzR6 fromObjects class
		equals: Array
		description: 'testSimple6_amp:6.14'.
	self
		assert: tmp_wmROgOcWzR6 fromObjects size
		equals: 0
		description: 'testSimple6_amp:6.15'.
	self
		assert: tmp_wmROgOcWzR6 viewElements class
		equals: Array
		description: 'testSimple6_amp:6.16'.
	self
		assert: tmp_wmROgOcWzR6 viewElements size
		equals: 0
		description: 'testSimple6_amp:6.17'.
	self
		assert: tmp_4YagdRm4CS1 class
		equals: TSGroup
		description: 'testSimple6_amp:6.1'.
	self
		assert: tmp_4YagdRm4CS1 size
		equals: 0
		description: 'testSimple6_amp:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple7_amp [
	<madeBySmallAmp>
	| tmp_D7BFbWahZ63 tmp_IOvaMcRHXu5 tmp_Z5iIrwAmuV7 tmp_7R9xPRwWHz8 |
	tmp_D7BFbWahZ63 := RSEdgeBuilder line.
	self
		assert: tmp_D7BFbWahZ63 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:1.1'.
	self
		assert: tmp_D7BFbWahZ63 isBidirectional class
		equals: True
		description: 'testSimple7_amp:1.2'.
	self
		assert: tmp_D7BFbWahZ63 isBidirectional
		equals: true
		description: 'testSimple7_amp:1.3'.
	self
		assert: tmp_D7BFbWahZ63 toObjects class
		equals: Array
		description: 'testSimple7_amp:1.4'.
	self
		assert: tmp_D7BFbWahZ63 toObjects size
		equals: 0
		description: 'testSimple7_amp:1.5'.
	self
		assert: tmp_D7BFbWahZ63 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:1.6'.
	self
		assert: tmp_D7BFbWahZ63 controlPoints
		equals: nil
		description: 'testSimple7_amp:1.7'.
	self
		assert: tmp_D7BFbWahZ63 toElements class
		equals: Array
		description: 'testSimple7_amp:1.8'.
	self
		assert: tmp_D7BFbWahZ63 toElements size
		equals: 0
		description: 'testSimple7_amp:1.9'.
	self
		assert: tmp_D7BFbWahZ63 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:1.10'.
	self
		assert: tmp_D7BFbWahZ63 view
		equals: nil
		description: 'testSimple7_amp:1.11'.
	self
		assert: tmp_D7BFbWahZ63 fromElements class
		equals: Array
		description: 'testSimple7_amp:1.12'.
	self
		assert: tmp_D7BFbWahZ63 fromElements size
		equals: 0
		description: 'testSimple7_amp:1.13'.
	self
		assert: tmp_D7BFbWahZ63 fromObjects class
		equals: Array
		description: 'testSimple7_amp:1.14'.
	self
		assert: tmp_D7BFbWahZ63 fromObjects size
		equals: 0
		description: 'testSimple7_amp:1.15'.
	self
		assert: tmp_D7BFbWahZ63 viewElements class
		equals: Array
		description: 'testSimple7_amp:1.16'.
	self
		assert: tmp_D7BFbWahZ63 viewElements size
		equals: 0
		description: 'testSimple7_amp:1.17'.
	tmp_D7BFbWahZ63 view: view.
	self
		assert: tmp_D7BFbWahZ63 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:2.1'.
	self
		assert: tmp_D7BFbWahZ63 isBidirectional class
		equals: True
		description: 'testSimple7_amp:2.2'.
	self
		assert: tmp_D7BFbWahZ63 isBidirectional
		equals: true
		description: 'testSimple7_amp:2.3'.
	self
		assert: tmp_D7BFbWahZ63 toObjects class
		equals: TSGroup
		description: 'testSimple7_amp:2.4'.
	self
		assert: tmp_D7BFbWahZ63 toObjects size
		equals: 10
		description: 'testSimple7_amp:2.5'.
	self
		assert: tmp_D7BFbWahZ63 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:2.6'.
	self
		assert: tmp_D7BFbWahZ63 controlPoints
		equals: nil
		description: 'testSimple7_amp:2.7'.
	self
		assert: tmp_D7BFbWahZ63 toElements class
		equals: TSGroup
		description: 'testSimple7_amp:2.8'.
	self
		assert: tmp_D7BFbWahZ63 toElements size
		equals: 10
		description: 'testSimple7_amp:2.9'.
	self
		assert: tmp_D7BFbWahZ63 view class
		equals: RSView
		description: 'testSimple7_amp:2.10'.
	self
		assert: tmp_D7BFbWahZ63 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple7_amp:2.11'.
	self
		assert: tmp_D7BFbWahZ63 view numberOfEdges
		equals: 0
		description: 'testSimple7_amp:2.12'.
	self
		assert: tmp_D7BFbWahZ63 fromElements class
		equals: TSGroup
		description: 'testSimple7_amp:2.13'.
	self
		assert: tmp_D7BFbWahZ63 fromElements size
		equals: 10
		description: 'testSimple7_amp:2.14'.
	self
		assert: tmp_D7BFbWahZ63 fromObjects class
		equals: TSGroup
		description: 'testSimple7_amp:2.15'.
	self
		assert: tmp_D7BFbWahZ63 fromObjects size
		equals: 10
		description: 'testSimple7_amp:2.16'.
	self
		assert: tmp_D7BFbWahZ63 viewElements class
		equals: TSGroup
		description: 'testSimple7_amp:2.17'.
	self
		assert: tmp_D7BFbWahZ63 viewElements size
		equals: 10
		description: 'testSimple7_amp:2.18'.
	tmp_IOvaMcRHXu5 := RSEdgeBuilder line.
	self
		assert: tmp_IOvaMcRHXu5 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:3.1'.
	self
		assert: tmp_IOvaMcRHXu5 isBidirectional class
		equals: True
		description: 'testSimple7_amp:3.2'.
	self
		assert: tmp_IOvaMcRHXu5 isBidirectional
		equals: true
		description: 'testSimple7_amp:3.3'.
	self
		assert: tmp_IOvaMcRHXu5 toObjects class
		equals: Array
		description: 'testSimple7_amp:3.4'.
	self
		assert: tmp_IOvaMcRHXu5 toObjects size
		equals: 0
		description: 'testSimple7_amp:3.5'.
	self
		assert: tmp_IOvaMcRHXu5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:3.6'.
	self
		assert: tmp_IOvaMcRHXu5 controlPoints
		equals: nil
		description: 'testSimple7_amp:3.7'.
	self
		assert: tmp_IOvaMcRHXu5 toElements class
		equals: Array
		description: 'testSimple7_amp:3.8'.
	self
		assert: tmp_IOvaMcRHXu5 toElements size
		equals: 0
		description: 'testSimple7_amp:3.9'.
	self
		assert: tmp_IOvaMcRHXu5 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:3.10'.
	self
		assert: tmp_IOvaMcRHXu5 view
		equals: nil
		description: 'testSimple7_amp:3.11'.
	self
		assert: tmp_IOvaMcRHXu5 fromElements class
		equals: Array
		description: 'testSimple7_amp:3.12'.
	self
		assert: tmp_IOvaMcRHXu5 fromElements size
		equals: 0
		description: 'testSimple7_amp:3.13'.
	self
		assert: tmp_IOvaMcRHXu5 fromObjects class
		equals: Array
		description: 'testSimple7_amp:3.14'.
	self
		assert: tmp_IOvaMcRHXu5 fromObjects size
		equals: 0
		description: 'testSimple7_amp:3.15'.
	self
		assert: tmp_IOvaMcRHXu5 viewElements class
		equals: Array
		description: 'testSimple7_amp:3.16'.
	self
		assert: tmp_IOvaMcRHXu5 viewElements size
		equals: 0
		description: 'testSimple7_amp:3.17'.
	self
		should: [ tmp_IOvaMcRHXu5 useAssociation: 1 -> 2 ]
		raise: MessageNotUnderstood
		description: 'testSimple7_amp:4.1'.
	tmp_Z5iIrwAmuV7 := RSEdgeBuilder line.
	self
		assert: tmp_Z5iIrwAmuV7 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:5.1'.
	self
		assert: tmp_Z5iIrwAmuV7 isBidirectional class
		equals: True
		description: 'testSimple7_amp:5.2'.
	self
		assert: tmp_Z5iIrwAmuV7 isBidirectional
		equals: true
		description: 'testSimple7_amp:5.3'.
	self
		assert: tmp_Z5iIrwAmuV7 toObjects class
		equals: Array
		description: 'testSimple7_amp:5.4'.
	self
		assert: tmp_Z5iIrwAmuV7 toObjects size
		equals: 0
		description: 'testSimple7_amp:5.5'.
	self
		assert: tmp_Z5iIrwAmuV7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:5.6'.
	self
		assert: tmp_Z5iIrwAmuV7 controlPoints
		equals: nil
		description: 'testSimple7_amp:5.7'.
	self
		assert: tmp_Z5iIrwAmuV7 toElements class
		equals: Array
		description: 'testSimple7_amp:5.8'.
	self
		assert: tmp_Z5iIrwAmuV7 toElements size
		equals: 0
		description: 'testSimple7_amp:5.9'.
	self
		assert: tmp_Z5iIrwAmuV7 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:5.10'.
	self
		assert: tmp_Z5iIrwAmuV7 view
		equals: nil
		description: 'testSimple7_amp:5.11'.
	self
		assert: tmp_Z5iIrwAmuV7 fromElements class
		equals: Array
		description: 'testSimple7_amp:5.12'.
	self
		assert: tmp_Z5iIrwAmuV7 fromElements size
		equals: 0
		description: 'testSimple7_amp:5.13'.
	self
		assert: tmp_Z5iIrwAmuV7 fromObjects class
		equals: Array
		description: 'testSimple7_amp:5.14'.
	self
		assert: tmp_Z5iIrwAmuV7 fromObjects size
		equals: 0
		description: 'testSimple7_amp:5.15'.
	self
		assert: tmp_Z5iIrwAmuV7 viewElements class
		equals: Array
		description: 'testSimple7_amp:5.16'.
	self
		assert: tmp_Z5iIrwAmuV7 viewElements size
		equals: 0
		description: 'testSimple7_amp:5.17'.
	self
		should: [ tmp_Z5iIrwAmuV7 useAssociation: 2 -> 3 ]
		raise: MessageNotUnderstood
		description: 'testSimple7_amp:6.1'.
	tmp_7R9xPRwWHz8 := RSEdgeBuilder line.
	self
		assert: tmp_7R9xPRwWHz8 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:7.1'.
	self
		assert: tmp_7R9xPRwWHz8 isBidirectional class
		equals: True
		description: 'testSimple7_amp:7.2'.
	self
		assert: tmp_7R9xPRwWHz8 isBidirectional
		equals: true
		description: 'testSimple7_amp:7.3'.
	self
		assert: tmp_7R9xPRwWHz8 toObjects class
		equals: Array
		description: 'testSimple7_amp:7.4'.
	self
		assert: tmp_7R9xPRwWHz8 toObjects size
		equals: 0
		description: 'testSimple7_amp:7.5'.
	self
		assert: tmp_7R9xPRwWHz8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:7.6'.
	self
		assert: tmp_7R9xPRwWHz8 controlPoints
		equals: nil
		description: 'testSimple7_amp:7.7'.
	self
		assert: tmp_7R9xPRwWHz8 toElements class
		equals: Array
		description: 'testSimple7_amp:7.8'.
	self
		assert: tmp_7R9xPRwWHz8 toElements size
		equals: 0
		description: 'testSimple7_amp:7.9'.
	self
		assert: tmp_7R9xPRwWHz8 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:7.10'.
	self
		assert: tmp_7R9xPRwWHz8 view
		equals: nil
		description: 'testSimple7_amp:7.11'.
	self
		assert: tmp_7R9xPRwWHz8 fromElements class
		equals: Array
		description: 'testSimple7_amp:7.12'.
	self
		assert: tmp_7R9xPRwWHz8 fromElements size
		equals: 0
		description: 'testSimple7_amp:7.13'.
	self
		assert: tmp_7R9xPRwWHz8 fromObjects class
		equals: Array
		description: 'testSimple7_amp:7.14'.
	self
		assert: tmp_7R9xPRwWHz8 fromObjects size
		equals: 0
		description: 'testSimple7_amp:7.15'.
	self
		assert: tmp_7R9xPRwWHz8 viewElements class
		equals: Array
		description: 'testSimple7_amp:7.16'.
	self
		assert: tmp_7R9xPRwWHz8 viewElements size
		equals: 0
		description: 'testSimple7_amp:7.17'.
	self
		should: [ tmp_7R9xPRwWHz8 useAssociation: 5 -> 6 ]
		raise: MessageNotUnderstood
		description: 'testSimple7_amp:8.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple_amp [
	<madeBySmallAmp>
	| tmp_rZJQ8232Pm3 tmp_2xOcd1Jemu4 |
	tmp_rZJQ8232Pm3 := RSEdgeBuilder line.
	self
		assert: tmp_rZJQ8232Pm3 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:1.1'.
	self
		assert: tmp_rZJQ8232Pm3 isBidirectional class
		equals: True
		description: 'testSimple_amp:1.2'.
	self
		assert: tmp_rZJQ8232Pm3 isBidirectional
		equals: true
		description: 'testSimple_amp:1.3'.
	self
		assert: tmp_rZJQ8232Pm3 toObjects class
		equals: Array
		description: 'testSimple_amp:1.4'.
	self
		assert: tmp_rZJQ8232Pm3 toObjects size
		equals: 0
		description: 'testSimple_amp:1.5'.
	self
		assert: tmp_rZJQ8232Pm3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:1.6'.
	self
		assert: tmp_rZJQ8232Pm3 controlPoints
		equals: nil
		description: 'testSimple_amp:1.7'.
	self
		assert: tmp_rZJQ8232Pm3 toElements class
		equals: Array
		description: 'testSimple_amp:1.8'.
	self
		assert: tmp_rZJQ8232Pm3 toElements size
		equals: 0
		description: 'testSimple_amp:1.9'.
	self
		assert: tmp_rZJQ8232Pm3 view class
		equals: UndefinedObject
		description: 'testSimple_amp:1.10'.
	self
		assert: tmp_rZJQ8232Pm3 view
		equals: nil
		description: 'testSimple_amp:1.11'.
	self
		assert: tmp_rZJQ8232Pm3 fromElements class
		equals: Array
		description: 'testSimple_amp:1.12'.
	self
		assert: tmp_rZJQ8232Pm3 fromElements size
		equals: 0
		description: 'testSimple_amp:1.13'.
	self
		assert: tmp_rZJQ8232Pm3 fromObjects class
		equals: Array
		description: 'testSimple_amp:1.14'.
	self
		assert: tmp_rZJQ8232Pm3 fromObjects size
		equals: 0
		description: 'testSimple_amp:1.15'.
	self
		assert: tmp_rZJQ8232Pm3 viewElements class
		equals: Array
		description: 'testSimple_amp:1.16'.
	self
		assert: tmp_rZJQ8232Pm3 viewElements size
		equals: 0
		description: 'testSimple_amp:1.17'.
	tmp_rZJQ8232Pm3 view: view.
	self
		assert: tmp_rZJQ8232Pm3 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:2.1'.
	self
		assert: tmp_rZJQ8232Pm3 isBidirectional class
		equals: True
		description: 'testSimple_amp:2.2'.
	self
		assert: tmp_rZJQ8232Pm3 isBidirectional
		equals: true
		description: 'testSimple_amp:2.3'.
	self
		assert: tmp_rZJQ8232Pm3 toObjects class
		equals: TSGroup
		description: 'testSimple_amp:2.4'.
	self
		assert: tmp_rZJQ8232Pm3 toObjects size
		equals: 10
		description: 'testSimple_amp:2.5'.
	self
		assert: tmp_rZJQ8232Pm3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:2.6'.
	self
		assert: tmp_rZJQ8232Pm3 controlPoints
		equals: nil
		description: 'testSimple_amp:2.7'.
	self
		assert: tmp_rZJQ8232Pm3 toElements class
		equals: TSGroup
		description: 'testSimple_amp:2.8'.
	self
		assert: tmp_rZJQ8232Pm3 toElements size
		equals: 10
		description: 'testSimple_amp:2.9'.
	self
		assert: tmp_rZJQ8232Pm3 view class
		equals: RSView
		description: 'testSimple_amp:2.10'.
	self
		assert: tmp_rZJQ8232Pm3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple_amp:2.11'.
	self
		assert: tmp_rZJQ8232Pm3 view numberOfEdges
		equals: 0
		description: 'testSimple_amp:2.12'.
	self
		assert: tmp_rZJQ8232Pm3 fromElements class
		equals: TSGroup
		description: 'testSimple_amp:2.13'.
	self
		assert: tmp_rZJQ8232Pm3 fromElements size
		equals: 10
		description: 'testSimple_amp:2.14'.
	self
		assert: tmp_rZJQ8232Pm3 fromObjects class
		equals: TSGroup
		description: 'testSimple_amp:2.15'.
	self
		assert: tmp_rZJQ8232Pm3 fromObjects size
		equals: 10
		description: 'testSimple_amp:2.16'.
	self
		assert: tmp_rZJQ8232Pm3 viewElements class
		equals: TSGroup
		description: 'testSimple_amp:2.17'.
	self
		assert: tmp_rZJQ8232Pm3 viewElements size
		equals: 10
		description: 'testSimple_amp:2.18'.
	tmp_2xOcd1Jemu4 := RSEdgeBuilder line.
	self
		assert: tmp_2xOcd1Jemu4 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:3.1'.
	self
		assert: tmp_2xOcd1Jemu4 isBidirectional class
		equals: True
		description: 'testSimple_amp:3.2'.
	self
		assert: tmp_2xOcd1Jemu4 isBidirectional
		equals: true
		description: 'testSimple_amp:3.3'.
	self
		assert: tmp_2xOcd1Jemu4 toObjects class
		equals: Array
		description: 'testSimple_amp:3.4'.
	self
		assert: tmp_2xOcd1Jemu4 toObjects size
		equals: 0
		description: 'testSimple_amp:3.5'.
	self
		assert: tmp_2xOcd1Jemu4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:3.6'.
	self
		assert: tmp_2xOcd1Jemu4 controlPoints
		equals: nil
		description: 'testSimple_amp:3.7'.
	self
		assert: tmp_2xOcd1Jemu4 toElements class
		equals: Array
		description: 'testSimple_amp:3.8'.
	self
		assert: tmp_2xOcd1Jemu4 toElements size
		equals: 0
		description: 'testSimple_amp:3.9'.
	self
		assert: tmp_2xOcd1Jemu4 view class
		equals: UndefinedObject
		description: 'testSimple_amp:3.10'.
	self
		assert: tmp_2xOcd1Jemu4 view
		equals: nil
		description: 'testSimple_amp:3.11'.
	self
		assert: tmp_2xOcd1Jemu4 fromElements class
		equals: Array
		description: 'testSimple_amp:3.12'.
	self
		assert: tmp_2xOcd1Jemu4 fromElements size
		equals: 0
		description: 'testSimple_amp:3.13'.
	self
		assert: tmp_2xOcd1Jemu4 fromObjects class
		equals: Array
		description: 'testSimple_amp:3.14'.
	self
		assert: tmp_2xOcd1Jemu4 fromObjects size
		equals: 0
		description: 'testSimple_amp:3.15'.
	self
		assert: tmp_2xOcd1Jemu4 viewElements class
		equals: Array
		description: 'testSimple_amp:3.16'.
	self
		assert: tmp_2xOcd1Jemu4 viewElements size
		equals: 0
		description: 'testSimple_amp:3.17'.
	tmp_2xOcd1Jemu4
		useElementAssociations:
			(Array
				with: elements first -> elements second
				with: elements second -> elements third).
	self
		assert: tmp_2xOcd1Jemu4 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:4.1'.
	self
		assert: tmp_2xOcd1Jemu4 isBidirectional class
		equals: True
		description: 'testSimple_amp:4.2'.
	self
		assert: tmp_2xOcd1Jemu4 isBidirectional
		equals: true
		description: 'testSimple_amp:4.3'.
	self
		assert: tmp_2xOcd1Jemu4 toObjects class
		equals: Array
		description: 'testSimple_amp:4.4'.
	self
		assert: tmp_2xOcd1Jemu4 toObjects size
		equals: 0
		description: 'testSimple_amp:4.5'.
	self
		assert: tmp_2xOcd1Jemu4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:4.6'.
	self
		assert: tmp_2xOcd1Jemu4 controlPoints
		equals: nil
		description: 'testSimple_amp:4.7'.
	self
		assert: tmp_2xOcd1Jemu4 toElements class
		equals: Array
		description: 'testSimple_amp:4.8'.
	self
		assert: tmp_2xOcd1Jemu4 toElements size
		equals: 0
		description: 'testSimple_amp:4.9'.
	self
		assert: tmp_2xOcd1Jemu4 view class
		equals: UndefinedObject
		description: 'testSimple_amp:4.10'.
	self
		assert: tmp_2xOcd1Jemu4 view
		equals: nil
		description: 'testSimple_amp:4.11'.
	self
		assert: tmp_2xOcd1Jemu4 fromElements class
		equals: Array
		description: 'testSimple_amp:4.12'.
	self
		assert: tmp_2xOcd1Jemu4 fromElements size
		equals: 0
		description: 'testSimple_amp:4.13'.
	self
		assert: tmp_2xOcd1Jemu4 fromObjects class
		equals: Array
		description: 'testSimple_amp:4.14'.
	self
		assert: tmp_2xOcd1Jemu4 fromObjects size
		equals: 0
		description: 'testSimple_amp:4.15'.
	self
		assert: tmp_2xOcd1Jemu4 viewElements class
		equals: Array
		description: 'testSimple_amp:4.16'.
	self
		assert: tmp_2xOcd1Jemu4 viewElements size
		equals: 0
		description: 'testSimple_amp:4.17'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSource_amp [
	<madeBySmallAmp>
	| v es eb c tmp_3ZxTA6axFL4 tmp_FzGhZk2bLb5 tmp_Y3rRT4Raa86 |
	v := RSView new.
	self assert: v class equals: RSView description: 'testSource_amp:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testSource_amp:1.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testSource_amp:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testSource_amp:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testSource_amp:1.5'.
	self assert: v edges size equals: 0 description: 'testSource_amp:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testSource_amp:1.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testSource_amp:1.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testSource_amp:1.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSource_amp:1.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testSource_amp:1.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testSource_amp:1.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testSource_amp:1.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testSource_amp:1.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testSource_amp:1.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSource_amp:1.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testSource_amp:1.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testSource_amp:1.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testSource_amp:1.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testSource_amp:1.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testSource_amp:1.21'.
	es := RSShapeBuilder box elementsOn: #(1 2 3).
	self
		assert: es class
		equals: TSGroup
		description: 'testSource_amp:2.1'.
	self assert: es size equals: 3 description: 'testSource_amp:2.2'.
	v addAll: es.
	self assert: v class equals: RSView description: 'testSource_amp:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testSource_amp:3.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testSource_amp:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testSource_amp:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testSource_amp:3.5'.
	self assert: v edges size equals: 0 description: 'testSource_amp:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testSource_amp:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testSource_amp:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testSource_amp:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSource_amp:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testSource_amp:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testSource_amp:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testSource_amp:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testSource_amp:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testSource_amp:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSource_amp:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testSource_amp:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testSource_amp:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testSource_amp:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testSource_amp:3.20'.
	self
		assert: v elements size
		equals: 3
		description: 'testSource_amp:3.21'.
	eb := RSEdgeBuilder line.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource_amp:4.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testSource_amp:4.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testSource_amp:4.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testSource_amp:4.4'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testSource_amp:4.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource_amp:4.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource_amp:4.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testSource_amp:4.8'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testSource_amp:4.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testSource_amp:4.10'.
	self assert: eb view equals: nil description: 'testSource_amp:4.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testSource_amp:4.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testSource_amp:4.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testSource_amp:4.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testSource_amp:4.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testSource_amp:4.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testSource_amp:4.17'.
	eb view: v.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource_amp:5.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testSource_amp:5.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testSource_amp:5.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testSource_amp:5.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testSource_amp:5.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource_amp:5.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource_amp:5.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testSource_amp:5.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testSource_amp:5.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testSource_amp:5.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testSource_amp:5.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testSource_amp:5.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testSource_amp:5.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testSource_amp:5.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testSource_amp:5.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testSource_amp:5.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testSource_amp:5.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testSource_amp:5.18'.
	c := OrderedCollection new.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource_amp:6.1'.
	self assert: c size equals: 0 description: 'testSource_amp:6.2'.
	tmp_3ZxTA6axFL4 := c add: 1 -> 2.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource_amp:7.1'.
	self assert: c size equals: 1 description: 'testSource_amp:7.2'.
	self
		assert: tmp_3ZxTA6axFL4 class
		equals: Association
		description: 'testSource_amp:7.1'.
	self
		assert: tmp_3ZxTA6axFL4 needsFullDefinition class
		equals: False
		description: 'testSource_amp:7.2'.
	self
		assert: tmp_3ZxTA6axFL4 needsFullDefinition
		equals: false
		description: 'testSource_amp:7.3'.
	tmp_FzGhZk2bLb5 := c add: 3 -> 1.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource_amp:8.1'.
	self assert: c size equals: 2 description: 'testSource_amp:8.2'.
	self
		assert: tmp_FzGhZk2bLb5 class
		equals: Association
		description: 'testSource_amp:8.1'.
	self
		assert: tmp_FzGhZk2bLb5 needsFullDefinition class
		equals: False
		description: 'testSource_amp:8.2'.
	self
		assert: tmp_FzGhZk2bLb5 needsFullDefinition
		equals: false
		description: 'testSource_amp:8.3'.
	tmp_Y3rRT4Raa86 := eb source: c connectFrom: #key to: #value.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource_amp:9.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testSource_amp:9.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testSource_amp:9.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testSource_amp:9.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testSource_amp:9.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource_amp:9.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource_amp:9.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testSource_amp:9.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testSource_amp:9.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testSource_amp:9.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testSource_amp:9.11'.
	self
		assert: eb view numberOfEdges
		equals: 2
		description: 'testSource_amp:9.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testSource_amp:9.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testSource_amp:9.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testSource_amp:9.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testSource_amp:9.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testSource_amp:9.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testSource_amp:9.18'.
	self
		assert: tmp_Y3rRT4Raa86 class
		equals: TSGroup
		description: 'testSource_amp:9.1'.
	self
		assert: tmp_Y3rRT4Raa86 size
		equals: 2
		description: 'testSource_amp:9.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testToObjects_amp [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| tmp_tcYKJr4Ug33 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testToObjects_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testToObjects_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testToObjects_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testToObjects_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects_amp:1.18'.
	b toObjects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects_amp:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testToObjects_amp:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testToObjects_amp:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects_amp:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testToObjects_amp:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects_amp:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects_amp:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects_amp:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testToObjects_amp:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects_amp:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects_amp:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects_amp:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects_amp:2.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects_amp:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects_amp:2.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects_amp:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects_amp:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects_amp:2.18'.
	tmp_tcYKJr4Ug33 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testToObjects_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testToObjects_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects_amp:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testToObjects_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects_amp:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testToObjects_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects_amp:3.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects_amp:3.18'.
	self
		assert: tmp_tcYKJr4Ug33 class
		equals: TSGroup
		description: 'testToObjects_amp:3.1'.
	self
		assert: tmp_tcYKJr4Ug33 size
		equals: 0
		description: 'testToObjects_amp:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testUseInLayoutDefault_amp [
	<madeBySmallAmp>
	| tmp_vyMRKyiX2R3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayoutDefault_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testUseInLayoutDefault_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testUseInLayoutDefault_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayoutDefault_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayoutDefault_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayoutDefault_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayoutDefault_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayoutDefault_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayoutDefault_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayoutDefault_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testUseInLayoutDefault_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayoutDefault_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayoutDefault_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayoutDefault_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayoutDefault_amp:1.18'.
	tmp_vyMRKyiX2R3 := TSTreeLayout on: view elements.
	self
		assert: tmp_vyMRKyiX2R3 class
		equals: TSGroup
		description: 'testUseInLayoutDefault_amp:2.1'.
	self
		assert: tmp_vyMRKyiX2R3 size
		equals: 10
		description: 'testUseInLayoutDefault_amp:2.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testUseInLayout_amp [
	<madeBySmallAmp>
	| tmp_dzanWwFg8o1 tmp_PiXEByf5nt4 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayout_amp:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testUseInLayout_amp:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testUseInLayout_amp:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayout_amp:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayout_amp:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout_amp:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayout_amp:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayout_amp:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayout_amp:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayout_amp:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayout_amp:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testUseInLayout_amp:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayout_amp:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayout_amp:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayout_amp:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayout_amp:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayout_amp:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayout_amp:1.18'.
	tmp_PiXEByf5nt4 := TSTreeLayout on: view elements.
	self
		assert: tmp_PiXEByf5nt4 class
		equals: TSGroup
		description: 'testUseInLayout_amp:2.1'.
	self
		assert: tmp_PiXEByf5nt4 size
		equals: 10
		description: 'testUseInLayout_amp:2.2'.
	tmp_dzanWwFg8o1 := b connectTo: [ :v | v + 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayout_amp:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testUseInLayout_amp:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testUseInLayout_amp:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayout_amp:3.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayout_amp:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout_amp:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayout_amp:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayout_amp:3.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayout_amp:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayout_amp:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayout_amp:3.11'.
	self
		assert: b view numberOfEdges
		equals: 9
		description: 'testUseInLayout_amp:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayout_amp:3.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayout_amp:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayout_amp:3.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayout_amp:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayout_amp:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayout_amp:3.18'.
	self
		assert: tmp_dzanWwFg8o1 class
		equals: TSGroup
		description: 'testUseInLayout_amp:3.1'.
	self
		assert: tmp_dzanWwFg8o1 size
		equals: 9
		description: 'testUseInLayout_amp:3.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testWithMoveBehind02_amp [
	<madeBySmallAmp>
	| tmp_O2TJWFzoFV1 tmp_4FqkRZ82CC3 tmp_AM5oH1sSAO5 tmp_tgBItK1WH56 |
	tmp_4FqkRZ82CC3 := RSEdgeBuilder new.
	self
		assert: tmp_4FqkRZ82CC3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:1.1'.
	self
		assert: tmp_4FqkRZ82CC3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:1.2'.
	self
		assert: tmp_4FqkRZ82CC3 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:1.3'.
	self
		assert: tmp_4FqkRZ82CC3 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.4'.
	self
		assert: tmp_4FqkRZ82CC3 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.5'.
	self
		assert: tmp_4FqkRZ82CC3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:1.6'.
	self
		assert: tmp_4FqkRZ82CC3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:1.7'.
	self
		assert: tmp_4FqkRZ82CC3 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.8'.
	self
		assert: tmp_4FqkRZ82CC3 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.9'.
	self
		assert: tmp_4FqkRZ82CC3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:1.10'.
	self
		assert: tmp_4FqkRZ82CC3 view
		equals: nil
		description: 'testWithMoveBehind02_amp:1.11'.
	self
		assert: tmp_4FqkRZ82CC3 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.12'.
	self
		assert: tmp_4FqkRZ82CC3 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.13'.
	self
		assert: tmp_4FqkRZ82CC3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.14'.
	self
		assert: tmp_4FqkRZ82CC3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.15'.
	self
		assert: tmp_4FqkRZ82CC3 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.16'.
	self
		assert: tmp_4FqkRZ82CC3 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.17'.
	tmp_4FqkRZ82CC3 view: view.
	self
		assert: tmp_4FqkRZ82CC3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:2.1'.
	self
		assert: tmp_4FqkRZ82CC3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:2.2'.
	self
		assert: tmp_4FqkRZ82CC3 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:2.3'.
	self
		assert: tmp_4FqkRZ82CC3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.4'.
	self
		assert: tmp_4FqkRZ82CC3 toObjects size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.5'.
	self
		assert: tmp_4FqkRZ82CC3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:2.6'.
	self
		assert: tmp_4FqkRZ82CC3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:2.7'.
	self
		assert: tmp_4FqkRZ82CC3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.8'.
	self
		assert: tmp_4FqkRZ82CC3 toElements size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.9'.
	self
		assert: tmp_4FqkRZ82CC3 view class
		equals: RSView
		description: 'testWithMoveBehind02_amp:2.10'.
	self
		assert: tmp_4FqkRZ82CC3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind02_amp:2.11'.
	self
		assert: tmp_4FqkRZ82CC3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind02_amp:2.12'.
	self
		assert: tmp_4FqkRZ82CC3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.13'.
	self
		assert: tmp_4FqkRZ82CC3 fromElements size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.14'.
	self
		assert: tmp_4FqkRZ82CC3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.15'.
	self
		assert: tmp_4FqkRZ82CC3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.16'.
	self
		assert: tmp_4FqkRZ82CC3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.17'.
	self
		assert: tmp_4FqkRZ82CC3 viewElements size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.18'.
	tmp_AM5oH1sSAO5 := RSEdgeBuilder new.
	self
		assert: tmp_AM5oH1sSAO5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:3.1'.
	self
		assert: tmp_AM5oH1sSAO5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:3.2'.
	self
		assert: tmp_AM5oH1sSAO5 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:3.3'.
	self
		assert: tmp_AM5oH1sSAO5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.4'.
	self
		assert: tmp_AM5oH1sSAO5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.5'.
	self
		assert: tmp_AM5oH1sSAO5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:3.6'.
	self
		assert: tmp_AM5oH1sSAO5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:3.7'.
	self
		assert: tmp_AM5oH1sSAO5 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.8'.
	self
		assert: tmp_AM5oH1sSAO5 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.9'.
	self
		assert: tmp_AM5oH1sSAO5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:3.10'.
	self
		assert: tmp_AM5oH1sSAO5 view
		equals: nil
		description: 'testWithMoveBehind02_amp:3.11'.
	self
		assert: tmp_AM5oH1sSAO5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.12'.
	self
		assert: tmp_AM5oH1sSAO5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.13'.
	self
		assert: tmp_AM5oH1sSAO5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.14'.
	self
		assert: tmp_AM5oH1sSAO5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.15'.
	self
		assert: tmp_AM5oH1sSAO5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.16'.
	self
		assert: tmp_AM5oH1sSAO5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.17'.
	tmp_AM5oH1sSAO5 moveBehind.
	self
		assert: tmp_AM5oH1sSAO5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:4.1'.
	self
		assert: tmp_AM5oH1sSAO5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:4.2'.
	self
		assert: tmp_AM5oH1sSAO5 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:4.3'.
	self
		assert: tmp_AM5oH1sSAO5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.4'.
	self
		assert: tmp_AM5oH1sSAO5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.5'.
	self
		assert: tmp_AM5oH1sSAO5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:4.6'.
	self
		assert: tmp_AM5oH1sSAO5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:4.7'.
	self
		assert: tmp_AM5oH1sSAO5 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.8'.
	self
		assert: tmp_AM5oH1sSAO5 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.9'.
	self
		assert: tmp_AM5oH1sSAO5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:4.10'.
	self
		assert: tmp_AM5oH1sSAO5 view
		equals: nil
		description: 'testWithMoveBehind02_amp:4.11'.
	self
		assert: tmp_AM5oH1sSAO5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.12'.
	self
		assert: tmp_AM5oH1sSAO5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.13'.
	self
		assert: tmp_AM5oH1sSAO5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.14'.
	self
		assert: tmp_AM5oH1sSAO5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.15'.
	self
		assert: tmp_AM5oH1sSAO5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.16'.
	self
		assert: tmp_AM5oH1sSAO5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.17'.
	tmp_tgBItK1WH56 := RSEdgeBuilder new.
	self
		assert: tmp_tgBItK1WH56 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:5.1'.
	self
		assert: tmp_tgBItK1WH56 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:5.2'.
	self
		assert: tmp_tgBItK1WH56 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:5.3'.
	self
		assert: tmp_tgBItK1WH56 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.4'.
	self
		assert: tmp_tgBItK1WH56 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.5'.
	self
		assert: tmp_tgBItK1WH56 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:5.6'.
	self
		assert: tmp_tgBItK1WH56 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:5.7'.
	self
		assert: tmp_tgBItK1WH56 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.8'.
	self
		assert: tmp_tgBItK1WH56 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.9'.
	self
		assert: tmp_tgBItK1WH56 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:5.10'.
	self
		assert: tmp_tgBItK1WH56 view
		equals: nil
		description: 'testWithMoveBehind02_amp:5.11'.
	self
		assert: tmp_tgBItK1WH56 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.12'.
	self
		assert: tmp_tgBItK1WH56 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.13'.
	self
		assert: tmp_tgBItK1WH56 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.14'.
	self
		assert: tmp_tgBItK1WH56 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.15'.
	self
		assert: tmp_tgBItK1WH56 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.16'.
	self
		assert: tmp_tgBItK1WH56 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.17'.
	tmp_O2TJWFzoFV1 := tmp_tgBItK1WH56 connectFrom: [ :v | v - 1 ].
	self
		assert: tmp_tgBItK1WH56 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:6.1'.
	self
		assert: tmp_tgBItK1WH56 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:6.2'.
	self
		assert: tmp_tgBItK1WH56 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:6.3'.
	self
		assert: tmp_tgBItK1WH56 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.4'.
	self
		assert: tmp_tgBItK1WH56 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.5'.
	self
		assert: tmp_tgBItK1WH56 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:6.6'.
	self
		assert: tmp_tgBItK1WH56 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:6.7'.
	self
		assert: tmp_tgBItK1WH56 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.8'.
	self
		assert: tmp_tgBItK1WH56 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.9'.
	self
		assert: tmp_tgBItK1WH56 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:6.10'.
	self
		assert: tmp_tgBItK1WH56 view
		equals: nil
		description: 'testWithMoveBehind02_amp:6.11'.
	self
		assert: tmp_tgBItK1WH56 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.12'.
	self
		assert: tmp_tgBItK1WH56 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.13'.
	self
		assert: tmp_tgBItK1WH56 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.14'.
	self
		assert: tmp_tgBItK1WH56 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.15'.
	self
		assert: tmp_tgBItK1WH56 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.16'.
	self
		assert: tmp_tgBItK1WH56 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.17'.
	self
		assert: tmp_O2TJWFzoFV1 class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:6.1'.
	self
		assert: tmp_O2TJWFzoFV1 size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testWithMoveBehind_amp [
	<madeBySmallAmp>
	| tmp_GBfPgnFcHz3 tmp_WjtgVwlifB5 tmp_GAlMpej6Kv6 |
	tmp_GBfPgnFcHz3 := RSEdgeBuilder new.
	self
		assert: tmp_GBfPgnFcHz3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:1.1'.
	self
		assert: tmp_GBfPgnFcHz3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:1.2'.
	self
		assert: tmp_GBfPgnFcHz3 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:1.3'.
	self
		assert: tmp_GBfPgnFcHz3 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:1.4'.
	self
		assert: tmp_GBfPgnFcHz3 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:1.5'.
	self
		assert: tmp_GBfPgnFcHz3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:1.6'.
	self
		assert: tmp_GBfPgnFcHz3 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:1.7'.
	self
		assert: tmp_GBfPgnFcHz3 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:1.8'.
	self
		assert: tmp_GBfPgnFcHz3 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:1.9'.
	self
		assert: tmp_GBfPgnFcHz3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:1.10'.
	self
		assert: tmp_GBfPgnFcHz3 view
		equals: nil
		description: 'testWithMoveBehind_amp:1.11'.
	self
		assert: tmp_GBfPgnFcHz3 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:1.12'.
	self
		assert: tmp_GBfPgnFcHz3 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:1.13'.
	self
		assert: tmp_GBfPgnFcHz3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:1.14'.
	self
		assert: tmp_GBfPgnFcHz3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:1.15'.
	self
		assert: tmp_GBfPgnFcHz3 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:1.16'.
	self
		assert: tmp_GBfPgnFcHz3 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:1.17'.
	tmp_GBfPgnFcHz3 view: view.
	self
		assert: tmp_GBfPgnFcHz3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:2.1'.
	self
		assert: tmp_GBfPgnFcHz3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:2.2'.
	self
		assert: tmp_GBfPgnFcHz3 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:2.3'.
	self
		assert: tmp_GBfPgnFcHz3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.4'.
	self
		assert: tmp_GBfPgnFcHz3 toObjects size
		equals: 10
		description: 'testWithMoveBehind_amp:2.5'.
	self
		assert: tmp_GBfPgnFcHz3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:2.6'.
	self
		assert: tmp_GBfPgnFcHz3 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:2.7'.
	self
		assert: tmp_GBfPgnFcHz3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.8'.
	self
		assert: tmp_GBfPgnFcHz3 toElements size
		equals: 10
		description: 'testWithMoveBehind_amp:2.9'.
	self
		assert: tmp_GBfPgnFcHz3 view class
		equals: RSView
		description: 'testWithMoveBehind_amp:2.10'.
	self
		assert: tmp_GBfPgnFcHz3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind_amp:2.11'.
	self
		assert: tmp_GBfPgnFcHz3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind_amp:2.12'.
	self
		assert: tmp_GBfPgnFcHz3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.13'.
	self
		assert: tmp_GBfPgnFcHz3 fromElements size
		equals: 10
		description: 'testWithMoveBehind_amp:2.14'.
	self
		assert: tmp_GBfPgnFcHz3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.15'.
	self
		assert: tmp_GBfPgnFcHz3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind_amp:2.16'.
	self
		assert: tmp_GBfPgnFcHz3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.17'.
	self
		assert: tmp_GBfPgnFcHz3 viewElements size
		equals: 10
		description: 'testWithMoveBehind_amp:2.18'.
	tmp_WjtgVwlifB5 := RSEdgeBuilder new.
	self
		assert: tmp_WjtgVwlifB5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:3.1'.
	self
		assert: tmp_WjtgVwlifB5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:3.2'.
	self
		assert: tmp_WjtgVwlifB5 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:3.3'.
	self
		assert: tmp_WjtgVwlifB5 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:3.4'.
	self
		assert: tmp_WjtgVwlifB5 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:3.5'.
	self
		assert: tmp_WjtgVwlifB5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:3.6'.
	self
		assert: tmp_WjtgVwlifB5 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:3.7'.
	self
		assert: tmp_WjtgVwlifB5 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:3.8'.
	self
		assert: tmp_WjtgVwlifB5 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:3.9'.
	self
		assert: tmp_WjtgVwlifB5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:3.10'.
	self
		assert: tmp_WjtgVwlifB5 view
		equals: nil
		description: 'testWithMoveBehind_amp:3.11'.
	self
		assert: tmp_WjtgVwlifB5 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:3.12'.
	self
		assert: tmp_WjtgVwlifB5 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:3.13'.
	self
		assert: tmp_WjtgVwlifB5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:3.14'.
	self
		assert: tmp_WjtgVwlifB5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:3.15'.
	self
		assert: tmp_WjtgVwlifB5 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:3.16'.
	self
		assert: tmp_WjtgVwlifB5 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:3.17'.
	tmp_WjtgVwlifB5 moveBehind.
	self
		assert: tmp_WjtgVwlifB5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:4.1'.
	self
		assert: tmp_WjtgVwlifB5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:4.2'.
	self
		assert: tmp_WjtgVwlifB5 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:4.3'.
	self
		assert: tmp_WjtgVwlifB5 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:4.4'.
	self
		assert: tmp_WjtgVwlifB5 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:4.5'.
	self
		assert: tmp_WjtgVwlifB5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:4.6'.
	self
		assert: tmp_WjtgVwlifB5 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:4.7'.
	self
		assert: tmp_WjtgVwlifB5 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:4.8'.
	self
		assert: tmp_WjtgVwlifB5 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:4.9'.
	self
		assert: tmp_WjtgVwlifB5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:4.10'.
	self
		assert: tmp_WjtgVwlifB5 view
		equals: nil
		description: 'testWithMoveBehind_amp:4.11'.
	self
		assert: tmp_WjtgVwlifB5 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:4.12'.
	self
		assert: tmp_WjtgVwlifB5 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:4.13'.
	self
		assert: tmp_WjtgVwlifB5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:4.14'.
	self
		assert: tmp_WjtgVwlifB5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:4.15'.
	self
		assert: tmp_WjtgVwlifB5 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:4.16'.
	self
		assert: tmp_WjtgVwlifB5 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:4.17'.
	tmp_GAlMpej6Kv6 := RSEdgeBuilder new.
	self
		assert: tmp_GAlMpej6Kv6 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:5.1'.
	self
		assert: tmp_GAlMpej6Kv6 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:5.2'.
	self
		assert: tmp_GAlMpej6Kv6 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:5.3'.
	self
		assert: tmp_GAlMpej6Kv6 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:5.4'.
	self
		assert: tmp_GAlMpej6Kv6 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:5.5'.
	self
		assert: tmp_GAlMpej6Kv6 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:5.6'.
	self
		assert: tmp_GAlMpej6Kv6 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:5.7'.
	self
		assert: tmp_GAlMpej6Kv6 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:5.8'.
	self
		assert: tmp_GAlMpej6Kv6 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:5.9'.
	self
		assert: tmp_GAlMpej6Kv6 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:5.10'.
	self
		assert: tmp_GAlMpej6Kv6 view
		equals: nil
		description: 'testWithMoveBehind_amp:5.11'.
	self
		assert: tmp_GAlMpej6Kv6 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:5.12'.
	self
		assert: tmp_GAlMpej6Kv6 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:5.13'.
	self
		assert: tmp_GAlMpej6Kv6 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:5.14'.
	self
		assert: tmp_GAlMpej6Kv6 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:5.15'.
	self
		assert: tmp_GAlMpej6Kv6 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:5.16'.
	self
		assert: tmp_GAlMpej6Kv6 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:5.17'.
	self
		should: [ tmp_GAlMpej6Kv6
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testWithMoveBehind_amp:6.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testconnectFromToAll_amp [
	<madeBySmallAmp>
	| es1 es2 edges v |
	es1 := RSShapeBuilder circle elementsOn: #(1 2 3).
	self
		assert: es1 class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:1.1'.
	self
		assert: es1 size
		equals: 3
		description: 'testconnectFromToAll_amp:1.2'.
	es2 := RSShapeBuilder box elementsOn: #(1 2 3).
	self
		assert: es2 class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:2.1'.
	self
		assert: es2 size
		equals: 3
		description: 'testconnectFromToAll_amp:2.2'.
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testconnectFromToAll_amp:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:3.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testconnectFromToAll_amp:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testconnectFromToAll_amp:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:3.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testconnectFromToAll_amp:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testconnectFromToAll_amp:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testconnectFromToAll_amp:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testconnectFromToAll_amp:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll_amp:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll_amp:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll_amp:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testconnectFromToAll_amp:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testconnectFromToAll_amp:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testconnectFromToAll_amp:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testconnectFromToAll_amp:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testconnectFromToAll_amp:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:3.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testconnectFromToAll_amp:3.21'.
	v addAll: es1.
	self
		assert: v class
		equals: RSView
		description: 'testconnectFromToAll_amp:4.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:4.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testconnectFromToAll_amp:4.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testconnectFromToAll_amp:4.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:4.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testconnectFromToAll_amp:4.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testconnectFromToAll_amp:4.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testconnectFromToAll_amp:4.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testconnectFromToAll_amp:4.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:4.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll_amp:4.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll_amp:4.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll_amp:4.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testconnectFromToAll_amp:4.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testconnectFromToAll_amp:4.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:4.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testconnectFromToAll_amp:4.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testconnectFromToAll_amp:4.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testconnectFromToAll_amp:4.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:4.20'.
	self
		assert: v elements size
		equals: 3
		description: 'testconnectFromToAll_amp:4.21'.
	v addAll: es2.
	self
		assert: v class
		equals: RSView
		description: 'testconnectFromToAll_amp:5.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:5.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testconnectFromToAll_amp:5.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testconnectFromToAll_amp:5.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:5.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testconnectFromToAll_amp:5.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testconnectFromToAll_amp:5.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testconnectFromToAll_amp:5.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testconnectFromToAll_amp:5.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:5.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll_amp:5.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll_amp:5.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll_amp:5.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testconnectFromToAll_amp:5.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testconnectFromToAll_amp:5.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll_amp:5.16'.
	self
		assert: v canvas numberOfShapes
		equals: 6
		description: 'testconnectFromToAll_amp:5.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testconnectFromToAll_amp:5.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testconnectFromToAll_amp:5.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:5.20'.
	self
		assert: v elements size
		equals: 6
		description: 'testconnectFromToAll_amp:5.21'.
	edges := RSEdgeBuilder line
		view: v;
		fromElements: es1;
		toElements: es2;
		connectFrom: #yourself toAll: [ :obj | Array with: obj ].
	self
		assert: edges class
		equals: TSGroup
		description: 'testconnectFromToAll_amp:6.1'.
	self
		assert: edges size
		equals: 3
		description: 'testconnectFromToAll_amp:6.2'
]
