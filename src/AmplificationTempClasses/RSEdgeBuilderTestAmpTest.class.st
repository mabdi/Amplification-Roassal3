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
	| v eb tmp_bbf5HEYoXX5 tmp_CNd0FUiWrj6 |
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
	tmp_bbf5HEYoXX5 := eb
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
		assert: tmp_bbf5HEYoXX5 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:7.1'.
	self
		assert: tmp_bbf5HEYoXX5 size
		equals: 2
		description: 'testAllowRepetitionAndUseAssociations_amp:7.2'.
	tmp_CNd0FUiWrj6 := TSGridLayout on: v elements.
	self
		assert: tmp_CNd0FUiWrj6 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations_amp:8.1'.
	self
		assert: tmp_CNd0FUiWrj6 size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations_amp:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testConnectFrom_amp [
	<madeBySmallAmp>
	| e tmp_VqT2Ilt5H53 |
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
	tmp_VqT2Ilt5H53 := b connectFrom: [ :v | v - 1 ].
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
		assert: tmp_VqT2Ilt5H53 class
		equals: TSGroup
		description: 'testConnectFrom_amp:3.1'.
	self
		assert: tmp_VqT2Ilt5H53 size
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
	| eFrom eTo tmp_h6q7XIJ87V3 |
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
	tmp_h6q7XIJ87V3 := b
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
		assert: tmp_h6q7XIJ87V3 class
		equals: TSGroup
		description: 'testConnectToAll_amp:3.1'.
	self
		assert: tmp_h6q7XIJ87V3 size
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
	| e tmp_VyMpNzMWxR3 |
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
	tmp_VyMpNzMWxR3 := b connectTo: [ :v | v - 1 ].
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
		assert: tmp_VyMpNzMWxR3 class
		equals: TSGroup
		description: 'testConnectTo_amp:3.1'.
	self
		assert: tmp_VyMpNzMWxR3 size
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
	| v es tmp_V3HLESOJqS4 tmp_vuuJlYs8hG6 tmp_Yx5JIciIoV8 tmp_8xiyVuZw5o9 tmp_UUa8MLqecR10 |
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
	tmp_vuuJlYs8hG6 := RSEdgeBuilder new.
	self
		assert: tmp_vuuJlYs8hG6 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:4.1'.
	self
		assert: tmp_vuuJlYs8hG6 isBidirectional class
		equals: True
		description: 'testFromAll_amp:4.2'.
	self
		assert: tmp_vuuJlYs8hG6 isBidirectional
		equals: true
		description: 'testFromAll_amp:4.3'.
	self
		assert: tmp_vuuJlYs8hG6 toObjects class
		equals: Array
		description: 'testFromAll_amp:4.4'.
	self
		assert: tmp_vuuJlYs8hG6 toObjects size
		equals: 0
		description: 'testFromAll_amp:4.5'.
	self
		assert: tmp_vuuJlYs8hG6 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:4.6'.
	self
		assert: tmp_vuuJlYs8hG6 controlPoints
		equals: nil
		description: 'testFromAll_amp:4.7'.
	self
		assert: tmp_vuuJlYs8hG6 toElements class
		equals: Array
		description: 'testFromAll_amp:4.8'.
	self
		assert: tmp_vuuJlYs8hG6 toElements size
		equals: 0
		description: 'testFromAll_amp:4.9'.
	self
		assert: tmp_vuuJlYs8hG6 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:4.10'.
	self
		assert: tmp_vuuJlYs8hG6 view
		equals: nil
		description: 'testFromAll_amp:4.11'.
	self
		assert: tmp_vuuJlYs8hG6 fromElements class
		equals: Array
		description: 'testFromAll_amp:4.12'.
	self
		assert: tmp_vuuJlYs8hG6 fromElements size
		equals: 0
		description: 'testFromAll_amp:4.13'.
	self
		assert: tmp_vuuJlYs8hG6 fromObjects class
		equals: Array
		description: 'testFromAll_amp:4.14'.
	self
		assert: tmp_vuuJlYs8hG6 fromObjects size
		equals: 0
		description: 'testFromAll_amp:4.15'.
	self
		assert: tmp_vuuJlYs8hG6 viewElements class
		equals: Array
		description: 'testFromAll_amp:4.16'.
	self
		assert: tmp_vuuJlYs8hG6 viewElements size
		equals: 0
		description: 'testFromAll_amp:4.17'.
	tmp_UUa8MLqecR10 := TSTreeLayout on: es.
	self
		assert: tmp_UUa8MLqecR10 class
		equals: TSGroup
		description: 'testFromAll_amp:5.1'.
	self
		assert: tmp_UUa8MLqecR10 size
		equals: 2
		description: 'testFromAll_amp:5.2'.
	tmp_Yx5JIciIoV8 := RSEdgeBuilder new.
	self
		assert: tmp_Yx5JIciIoV8 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:6.1'.
	self
		assert: tmp_Yx5JIciIoV8 isBidirectional class
		equals: True
		description: 'testFromAll_amp:6.2'.
	self
		assert: tmp_Yx5JIciIoV8 isBidirectional
		equals: true
		description: 'testFromAll_amp:6.3'.
	self
		assert: tmp_Yx5JIciIoV8 toObjects class
		equals: Array
		description: 'testFromAll_amp:6.4'.
	self
		assert: tmp_Yx5JIciIoV8 toObjects size
		equals: 0
		description: 'testFromAll_amp:6.5'.
	self
		assert: tmp_Yx5JIciIoV8 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:6.6'.
	self
		assert: tmp_Yx5JIciIoV8 controlPoints
		equals: nil
		description: 'testFromAll_amp:6.7'.
	self
		assert: tmp_Yx5JIciIoV8 toElements class
		equals: Array
		description: 'testFromAll_amp:6.8'.
	self
		assert: tmp_Yx5JIciIoV8 toElements size
		equals: 0
		description: 'testFromAll_amp:6.9'.
	self
		assert: tmp_Yx5JIciIoV8 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:6.10'.
	self
		assert: tmp_Yx5JIciIoV8 view
		equals: nil
		description: 'testFromAll_amp:6.11'.
	self
		assert: tmp_Yx5JIciIoV8 fromElements class
		equals: Array
		description: 'testFromAll_amp:6.12'.
	self
		assert: tmp_Yx5JIciIoV8 fromElements size
		equals: 0
		description: 'testFromAll_amp:6.13'.
	self
		assert: tmp_Yx5JIciIoV8 fromObjects class
		equals: Array
		description: 'testFromAll_amp:6.14'.
	self
		assert: tmp_Yx5JIciIoV8 fromObjects size
		equals: 0
		description: 'testFromAll_amp:6.15'.
	self
		assert: tmp_Yx5JIciIoV8 viewElements class
		equals: Array
		description: 'testFromAll_amp:6.16'.
	self
		assert: tmp_Yx5JIciIoV8 viewElements size
		equals: 0
		description: 'testFromAll_amp:6.17'.
	self
		should: [ tmp_Yx5JIciIoV8 objects: (1 to: 2) ]
		raise: AssertionFailure
		description: 'testFromAll_amp:7.1'.
	tmp_8xiyVuZw5o9 := RSEdgeBuilder new.
	self
		assert: tmp_8xiyVuZw5o9 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:8.1'.
	self
		assert: tmp_8xiyVuZw5o9 isBidirectional class
		equals: True
		description: 'testFromAll_amp:8.2'.
	self
		assert: tmp_8xiyVuZw5o9 isBidirectional
		equals: true
		description: 'testFromAll_amp:8.3'.
	self
		assert: tmp_8xiyVuZw5o9 toObjects class
		equals: Array
		description: 'testFromAll_amp:8.4'.
	self
		assert: tmp_8xiyVuZw5o9 toObjects size
		equals: 0
		description: 'testFromAll_amp:8.5'.
	self
		assert: tmp_8xiyVuZw5o9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:8.6'.
	self
		assert: tmp_8xiyVuZw5o9 controlPoints
		equals: nil
		description: 'testFromAll_amp:8.7'.
	self
		assert: tmp_8xiyVuZw5o9 toElements class
		equals: Array
		description: 'testFromAll_amp:8.8'.
	self
		assert: tmp_8xiyVuZw5o9 toElements size
		equals: 0
		description: 'testFromAll_amp:8.9'.
	self
		assert: tmp_8xiyVuZw5o9 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:8.10'.
	self
		assert: tmp_8xiyVuZw5o9 view
		equals: nil
		description: 'testFromAll_amp:8.11'.
	self
		assert: tmp_8xiyVuZw5o9 fromElements class
		equals: Array
		description: 'testFromAll_amp:8.12'.
	self
		assert: tmp_8xiyVuZw5o9 fromElements size
		equals: 0
		description: 'testFromAll_amp:8.13'.
	self
		assert: tmp_8xiyVuZw5o9 fromObjects class
		equals: Array
		description: 'testFromAll_amp:8.14'.
	self
		assert: tmp_8xiyVuZw5o9 fromObjects size
		equals: 0
		description: 'testFromAll_amp:8.15'.
	self
		assert: tmp_8xiyVuZw5o9 viewElements class
		equals: Array
		description: 'testFromAll_amp:8.16'.
	self
		assert: tmp_8xiyVuZw5o9 viewElements size
		equals: 0
		description: 'testFromAll_amp:8.17'.
	tmp_V3HLESOJqS4 := tmp_8xiyVuZw5o9
		connectFromAll: (Array with: 1)
		to: 2.
	self
		assert: tmp_8xiyVuZw5o9 class
		equals: RSEdgeBuilder
		description: 'testFromAll_amp:9.1'.
	self
		assert: tmp_8xiyVuZw5o9 isBidirectional class
		equals: True
		description: 'testFromAll_amp:9.2'.
	self
		assert: tmp_8xiyVuZw5o9 isBidirectional
		equals: true
		description: 'testFromAll_amp:9.3'.
	self
		assert: tmp_8xiyVuZw5o9 toObjects class
		equals: Array
		description: 'testFromAll_amp:9.4'.
	self
		assert: tmp_8xiyVuZw5o9 toObjects size
		equals: 0
		description: 'testFromAll_amp:9.5'.
	self
		assert: tmp_8xiyVuZw5o9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll_amp:9.6'.
	self
		assert: tmp_8xiyVuZw5o9 controlPoints
		equals: nil
		description: 'testFromAll_amp:9.7'.
	self
		assert: tmp_8xiyVuZw5o9 toElements class
		equals: Array
		description: 'testFromAll_amp:9.8'.
	self
		assert: tmp_8xiyVuZw5o9 toElements size
		equals: 0
		description: 'testFromAll_amp:9.9'.
	self
		assert: tmp_8xiyVuZw5o9 view class
		equals: UndefinedObject
		description: 'testFromAll_amp:9.10'.
	self
		assert: tmp_8xiyVuZw5o9 view
		equals: nil
		description: 'testFromAll_amp:9.11'.
	self
		assert: tmp_8xiyVuZw5o9 fromElements class
		equals: Array
		description: 'testFromAll_amp:9.12'.
	self
		assert: tmp_8xiyVuZw5o9 fromElements size
		equals: 0
		description: 'testFromAll_amp:9.13'.
	self
		assert: tmp_8xiyVuZw5o9 fromObjects class
		equals: Array
		description: 'testFromAll_amp:9.14'.
	self
		assert: tmp_8xiyVuZw5o9 fromObjects size
		equals: 0
		description: 'testFromAll_amp:9.15'.
	self
		assert: tmp_8xiyVuZw5o9 viewElements class
		equals: Array
		description: 'testFromAll_amp:9.16'.
	self
		assert: tmp_8xiyVuZw5o9 viewElements size
		equals: 0
		description: 'testFromAll_amp:9.17'.
	self
		assert: tmp_V3HLESOJqS4 class
		equals: TSGroup
		description: 'testFromAll_amp:9.1'.
	self
		assert: tmp_V3HLESOJqS4 size
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
	| tmp_C4Pe0ctVS13 |
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
	tmp_C4Pe0ctVS13 := b connectFrom: #yourself to: 10.
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
		assert: tmp_C4Pe0ctVS13 class
		equals: TSGroup
		description: 'testFromObjects02_amp:3.1'.
	self
		assert: tmp_C4Pe0ctVS13 size
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
	| edges tmp_25BJW8vsdB3 |
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
	tmp_25BJW8vsdB3 := b connectFrom: #yourself to: 10.
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
		assert: tmp_25BJW8vsdB3 class
		equals: TSGroup
		description: 'testFromObjects_amp:3.1'.
	self
		assert: tmp_25BJW8vsdB3 size
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
	| tmp_btN4eePksd3 tmp_mYmR9Wq8JD4 |
	tmp_btN4eePksd3 := RSEdgeBuilder line.
	self
		assert: tmp_btN4eePksd3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind_amp:1.1'.
	self
		assert: tmp_btN4eePksd3 isBidirectional class
		equals: True
		description: 'testNoMoveBehind_amp:1.2'.
	self
		assert: tmp_btN4eePksd3 isBidirectional
		equals: true
		description: 'testNoMoveBehind_amp:1.3'.
	self
		assert: tmp_btN4eePksd3 toObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:1.4'.
	self
		assert: tmp_btN4eePksd3 toObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:1.5'.
	self
		assert: tmp_btN4eePksd3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:1.6'.
	self
		assert: tmp_btN4eePksd3 controlPoints
		equals: nil
		description: 'testNoMoveBehind_amp:1.7'.
	self
		assert: tmp_btN4eePksd3 toElements class
		equals: Array
		description: 'testNoMoveBehind_amp:1.8'.
	self
		assert: tmp_btN4eePksd3 toElements size
		equals: 0
		description: 'testNoMoveBehind_amp:1.9'.
	self
		assert: tmp_btN4eePksd3 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:1.10'.
	self
		assert: tmp_btN4eePksd3 view
		equals: nil
		description: 'testNoMoveBehind_amp:1.11'.
	self
		assert: tmp_btN4eePksd3 fromElements class
		equals: Array
		description: 'testNoMoveBehind_amp:1.12'.
	self
		assert: tmp_btN4eePksd3 fromElements size
		equals: 0
		description: 'testNoMoveBehind_amp:1.13'.
	self
		assert: tmp_btN4eePksd3 fromObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:1.14'.
	self
		assert: tmp_btN4eePksd3 fromObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:1.15'.
	self
		assert: tmp_btN4eePksd3 viewElements class
		equals: Array
		description: 'testNoMoveBehind_amp:1.16'.
	self
		assert: tmp_btN4eePksd3 viewElements size
		equals: 0
		description: 'testNoMoveBehind_amp:1.17'.
	tmp_btN4eePksd3 view: view.
	self
		assert: tmp_btN4eePksd3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind_amp:2.1'.
	self
		assert: tmp_btN4eePksd3 isBidirectional class
		equals: True
		description: 'testNoMoveBehind_amp:2.2'.
	self
		assert: tmp_btN4eePksd3 isBidirectional
		equals: true
		description: 'testNoMoveBehind_amp:2.3'.
	self
		assert: tmp_btN4eePksd3 toObjects class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.4'.
	self
		assert: tmp_btN4eePksd3 toObjects size
		equals: 10
		description: 'testNoMoveBehind_amp:2.5'.
	self
		assert: tmp_btN4eePksd3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:2.6'.
	self
		assert: tmp_btN4eePksd3 controlPoints
		equals: nil
		description: 'testNoMoveBehind_amp:2.7'.
	self
		assert: tmp_btN4eePksd3 toElements class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.8'.
	self
		assert: tmp_btN4eePksd3 toElements size
		equals: 10
		description: 'testNoMoveBehind_amp:2.9'.
	self
		assert: tmp_btN4eePksd3 view class
		equals: RSView
		description: 'testNoMoveBehind_amp:2.10'.
	self
		assert: tmp_btN4eePksd3 view numberOfEdges class
		equals: SmallInteger
		description: 'testNoMoveBehind_amp:2.11'.
	self
		assert: tmp_btN4eePksd3 view numberOfEdges
		equals: 0
		description: 'testNoMoveBehind_amp:2.12'.
	self
		assert: tmp_btN4eePksd3 fromElements class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.13'.
	self
		assert: tmp_btN4eePksd3 fromElements size
		equals: 10
		description: 'testNoMoveBehind_amp:2.14'.
	self
		assert: tmp_btN4eePksd3 fromObjects class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.15'.
	self
		assert: tmp_btN4eePksd3 fromObjects size
		equals: 10
		description: 'testNoMoveBehind_amp:2.16'.
	self
		assert: tmp_btN4eePksd3 viewElements class
		equals: TSGroup
		description: 'testNoMoveBehind_amp:2.17'.
	self
		assert: tmp_btN4eePksd3 viewElements size
		equals: 10
		description: 'testNoMoveBehind_amp:2.18'.
	tmp_mYmR9Wq8JD4 := RSEdgeBuilder line.
	self
		assert: tmp_mYmR9Wq8JD4 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind_amp:3.1'.
	self
		assert: tmp_mYmR9Wq8JD4 isBidirectional class
		equals: True
		description: 'testNoMoveBehind_amp:3.2'.
	self
		assert: tmp_mYmR9Wq8JD4 isBidirectional
		equals: true
		description: 'testNoMoveBehind_amp:3.3'.
	self
		assert: tmp_mYmR9Wq8JD4 toObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:3.4'.
	self
		assert: tmp_mYmR9Wq8JD4 toObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:3.5'.
	self
		assert: tmp_mYmR9Wq8JD4 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:3.6'.
	self
		assert: tmp_mYmR9Wq8JD4 controlPoints
		equals: nil
		description: 'testNoMoveBehind_amp:3.7'.
	self
		assert: tmp_mYmR9Wq8JD4 toElements class
		equals: Array
		description: 'testNoMoveBehind_amp:3.8'.
	self
		assert: tmp_mYmR9Wq8JD4 toElements size
		equals: 0
		description: 'testNoMoveBehind_amp:3.9'.
	self
		assert: tmp_mYmR9Wq8JD4 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind_amp:3.10'.
	self
		assert: tmp_mYmR9Wq8JD4 view
		equals: nil
		description: 'testNoMoveBehind_amp:3.11'.
	self
		assert: tmp_mYmR9Wq8JD4 fromElements class
		equals: Array
		description: 'testNoMoveBehind_amp:3.12'.
	self
		assert: tmp_mYmR9Wq8JD4 fromElements size
		equals: 0
		description: 'testNoMoveBehind_amp:3.13'.
	self
		assert: tmp_mYmR9Wq8JD4 fromObjects class
		equals: Array
		description: 'testNoMoveBehind_amp:3.14'.
	self
		assert: tmp_mYmR9Wq8JD4 fromObjects size
		equals: 0
		description: 'testNoMoveBehind_amp:3.15'.
	self
		assert: tmp_mYmR9Wq8JD4 viewElements class
		equals: Array
		description: 'testNoMoveBehind_amp:3.16'.
	self
		assert: tmp_mYmR9Wq8JD4 viewElements size
		equals: 0
		description: 'testNoMoveBehind_amp:3.17'.
	self
		should: [ tmp_mYmR9Wq8JD4
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testNoMoveBehind_amp:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjectFrom_amp [
	<madeBySmallAmp>
	| e tmp_5vSjGnIZpg2 |
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
	tmp_5vSjGnIZpg2 := b connectFrom: [ :v | v - 1 ].
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
		assert: tmp_5vSjGnIZpg2 class
		equals: TSGroup
		description: 'testObjectFrom_amp:3.1'.
	self
		assert: tmp_5vSjGnIZpg2 size
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
	| e tmp_7fRJvIIqbE2 |
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
	tmp_7fRJvIIqbE2 := b connectTo: [ :v | v - 1 ].
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
		assert: tmp_7fRJvIIqbE2 class
		equals: TSGroup
		description: 'testObjectTo_amp:3.1'.
	self
		assert: tmp_7fRJvIIqbE2 size
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
	| tmp_GD4YB9Plzu4 |
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
	tmp_GD4YB9Plzu4 := b
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
		assert: tmp_GD4YB9Plzu4 class
		equals: TSGroup
		description: 'testShouldAllowBidirection_amp:4.1'.
	self
		assert: tmp_GD4YB9Plzu4 size
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
	| tmp_PJISAAV8lb3 |
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
	tmp_PJISAAV8lb3 := b
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
		assert: tmp_PJISAAV8lb3 class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection_amp:3.1'.
	self
		assert: tmp_PJISAAV8lb3 size
		equals: 2
		description: 'testShouldNotAllowBidirection_amp:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple2_amp [
	<madeBySmallAmp>
	| tmp_5jhDEU6ubZ3 tmp_zdWbtOsAaI4 |
	tmp_5jhDEU6ubZ3 := RSEdgeBuilder line.
	self
		assert: tmp_5jhDEU6ubZ3 class
		equals: RSEdgeBuilder
		description: 'testSimple2_amp:1.1'.
	self
		assert: tmp_5jhDEU6ubZ3 isBidirectional class
		equals: True
		description: 'testSimple2_amp:1.2'.
	self
		assert: tmp_5jhDEU6ubZ3 isBidirectional
		equals: true
		description: 'testSimple2_amp:1.3'.
	self
		assert: tmp_5jhDEU6ubZ3 toObjects class
		equals: Array
		description: 'testSimple2_amp:1.4'.
	self
		assert: tmp_5jhDEU6ubZ3 toObjects size
		equals: 0
		description: 'testSimple2_amp:1.5'.
	self
		assert: tmp_5jhDEU6ubZ3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2_amp:1.6'.
	self
		assert: tmp_5jhDEU6ubZ3 controlPoints
		equals: nil
		description: 'testSimple2_amp:1.7'.
	self
		assert: tmp_5jhDEU6ubZ3 toElements class
		equals: Array
		description: 'testSimple2_amp:1.8'.
	self
		assert: tmp_5jhDEU6ubZ3 toElements size
		equals: 0
		description: 'testSimple2_amp:1.9'.
	self
		assert: tmp_5jhDEU6ubZ3 view class
		equals: UndefinedObject
		description: 'testSimple2_amp:1.10'.
	self
		assert: tmp_5jhDEU6ubZ3 view
		equals: nil
		description: 'testSimple2_amp:1.11'.
	self
		assert: tmp_5jhDEU6ubZ3 fromElements class
		equals: Array
		description: 'testSimple2_amp:1.12'.
	self
		assert: tmp_5jhDEU6ubZ3 fromElements size
		equals: 0
		description: 'testSimple2_amp:1.13'.
	self
		assert: tmp_5jhDEU6ubZ3 fromObjects class
		equals: Array
		description: 'testSimple2_amp:1.14'.
	self
		assert: tmp_5jhDEU6ubZ3 fromObjects size
		equals: 0
		description: 'testSimple2_amp:1.15'.
	self
		assert: tmp_5jhDEU6ubZ3 viewElements class
		equals: Array
		description: 'testSimple2_amp:1.16'.
	self
		assert: tmp_5jhDEU6ubZ3 viewElements size
		equals: 0
		description: 'testSimple2_amp:1.17'.
	tmp_5jhDEU6ubZ3 view: view.
	self
		assert: tmp_5jhDEU6ubZ3 class
		equals: RSEdgeBuilder
		description: 'testSimple2_amp:2.1'.
	self
		assert: tmp_5jhDEU6ubZ3 isBidirectional class
		equals: True
		description: 'testSimple2_amp:2.2'.
	self
		assert: tmp_5jhDEU6ubZ3 isBidirectional
		equals: true
		description: 'testSimple2_amp:2.3'.
	self
		assert: tmp_5jhDEU6ubZ3 toObjects class
		equals: TSGroup
		description: 'testSimple2_amp:2.4'.
	self
		assert: tmp_5jhDEU6ubZ3 toObjects size
		equals: 10
		description: 'testSimple2_amp:2.5'.
	self
		assert: tmp_5jhDEU6ubZ3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2_amp:2.6'.
	self
		assert: tmp_5jhDEU6ubZ3 controlPoints
		equals: nil
		description: 'testSimple2_amp:2.7'.
	self
		assert: tmp_5jhDEU6ubZ3 toElements class
		equals: TSGroup
		description: 'testSimple2_amp:2.8'.
	self
		assert: tmp_5jhDEU6ubZ3 toElements size
		equals: 10
		description: 'testSimple2_amp:2.9'.
	self
		assert: tmp_5jhDEU6ubZ3 view class
		equals: RSView
		description: 'testSimple2_amp:2.10'.
	self
		assert: tmp_5jhDEU6ubZ3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple2_amp:2.11'.
	self
		assert: tmp_5jhDEU6ubZ3 view numberOfEdges
		equals: 0
		description: 'testSimple2_amp:2.12'.
	self
		assert: tmp_5jhDEU6ubZ3 fromElements class
		equals: TSGroup
		description: 'testSimple2_amp:2.13'.
	self
		assert: tmp_5jhDEU6ubZ3 fromElements size
		equals: 10
		description: 'testSimple2_amp:2.14'.
	self
		assert: tmp_5jhDEU6ubZ3 fromObjects class
		equals: TSGroup
		description: 'testSimple2_amp:2.15'.
	self
		assert: tmp_5jhDEU6ubZ3 fromObjects size
		equals: 10
		description: 'testSimple2_amp:2.16'.
	self
		assert: tmp_5jhDEU6ubZ3 viewElements class
		equals: TSGroup
		description: 'testSimple2_amp:2.17'.
	self
		assert: tmp_5jhDEU6ubZ3 viewElements size
		equals: 10
		description: 'testSimple2_amp:2.18'.
	tmp_zdWbtOsAaI4 := RSEdgeBuilder line.
	self
		assert: tmp_zdWbtOsAaI4 class
		equals: RSEdgeBuilder
		description: 'testSimple2_amp:3.1'.
	self
		assert: tmp_zdWbtOsAaI4 isBidirectional class
		equals: True
		description: 'testSimple2_amp:3.2'.
	self
		assert: tmp_zdWbtOsAaI4 isBidirectional
		equals: true
		description: 'testSimple2_amp:3.3'.
	self
		assert: tmp_zdWbtOsAaI4 toObjects class
		equals: Array
		description: 'testSimple2_amp:3.4'.
	self
		assert: tmp_zdWbtOsAaI4 toObjects size
		equals: 0
		description: 'testSimple2_amp:3.5'.
	self
		assert: tmp_zdWbtOsAaI4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2_amp:3.6'.
	self
		assert: tmp_zdWbtOsAaI4 controlPoints
		equals: nil
		description: 'testSimple2_amp:3.7'.
	self
		assert: tmp_zdWbtOsAaI4 toElements class
		equals: Array
		description: 'testSimple2_amp:3.8'.
	self
		assert: tmp_zdWbtOsAaI4 toElements size
		equals: 0
		description: 'testSimple2_amp:3.9'.
	self
		assert: tmp_zdWbtOsAaI4 view class
		equals: UndefinedObject
		description: 'testSimple2_amp:3.10'.
	self
		assert: tmp_zdWbtOsAaI4 view
		equals: nil
		description: 'testSimple2_amp:3.11'.
	self
		assert: tmp_zdWbtOsAaI4 fromElements class
		equals: Array
		description: 'testSimple2_amp:3.12'.
	self
		assert: tmp_zdWbtOsAaI4 fromElements size
		equals: 0
		description: 'testSimple2_amp:3.13'.
	self
		assert: tmp_zdWbtOsAaI4 fromObjects class
		equals: Array
		description: 'testSimple2_amp:3.14'.
	self
		assert: tmp_zdWbtOsAaI4 fromObjects size
		equals: 0
		description: 'testSimple2_amp:3.15'.
	self
		assert: tmp_zdWbtOsAaI4 viewElements class
		equals: Array
		description: 'testSimple2_amp:3.16'.
	self
		assert: tmp_zdWbtOsAaI4 viewElements size
		equals: 0
		description: 'testSimple2_amp:3.17'.
	self
		should: [ tmp_zdWbtOsAaI4
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testSimple2_amp:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple3_amp [
	<madeBySmallAmp>
	| tmp_dfo2iqilXs1 tmp_Ot75jBHQdB3 tmp_Wku2GdUyBl5 tmp_IqdZwFawWR7 tmp_rPzZugDNpT8 |
	tmp_Ot75jBHQdB3 := RSEdgeBuilder line.
	self
		assert: tmp_Ot75jBHQdB3 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:1.1'.
	self
		assert: tmp_Ot75jBHQdB3 isBidirectional class
		equals: True
		description: 'testSimple3_amp:1.2'.
	self
		assert: tmp_Ot75jBHQdB3 isBidirectional
		equals: true
		description: 'testSimple3_amp:1.3'.
	self
		assert: tmp_Ot75jBHQdB3 toObjects class
		equals: Array
		description: 'testSimple3_amp:1.4'.
	self
		assert: tmp_Ot75jBHQdB3 toObjects size
		equals: 0
		description: 'testSimple3_amp:1.5'.
	self
		assert: tmp_Ot75jBHQdB3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:1.6'.
	self
		assert: tmp_Ot75jBHQdB3 controlPoints
		equals: nil
		description: 'testSimple3_amp:1.7'.
	self
		assert: tmp_Ot75jBHQdB3 toElements class
		equals: Array
		description: 'testSimple3_amp:1.8'.
	self
		assert: tmp_Ot75jBHQdB3 toElements size
		equals: 0
		description: 'testSimple3_amp:1.9'.
	self
		assert: tmp_Ot75jBHQdB3 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:1.10'.
	self
		assert: tmp_Ot75jBHQdB3 view
		equals: nil
		description: 'testSimple3_amp:1.11'.
	self
		assert: tmp_Ot75jBHQdB3 fromElements class
		equals: Array
		description: 'testSimple3_amp:1.12'.
	self
		assert: tmp_Ot75jBHQdB3 fromElements size
		equals: 0
		description: 'testSimple3_amp:1.13'.
	self
		assert: tmp_Ot75jBHQdB3 fromObjects class
		equals: Array
		description: 'testSimple3_amp:1.14'.
	self
		assert: tmp_Ot75jBHQdB3 fromObjects size
		equals: 0
		description: 'testSimple3_amp:1.15'.
	self
		assert: tmp_Ot75jBHQdB3 viewElements class
		equals: Array
		description: 'testSimple3_amp:1.16'.
	self
		assert: tmp_Ot75jBHQdB3 viewElements size
		equals: 0
		description: 'testSimple3_amp:1.17'.
	tmp_Ot75jBHQdB3 view: view.
	self
		assert: tmp_Ot75jBHQdB3 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:2.1'.
	self
		assert: tmp_Ot75jBHQdB3 isBidirectional class
		equals: True
		description: 'testSimple3_amp:2.2'.
	self
		assert: tmp_Ot75jBHQdB3 isBidirectional
		equals: true
		description: 'testSimple3_amp:2.3'.
	self
		assert: tmp_Ot75jBHQdB3 toObjects class
		equals: TSGroup
		description: 'testSimple3_amp:2.4'.
	self
		assert: tmp_Ot75jBHQdB3 toObjects size
		equals: 10
		description: 'testSimple3_amp:2.5'.
	self
		assert: tmp_Ot75jBHQdB3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:2.6'.
	self
		assert: tmp_Ot75jBHQdB3 controlPoints
		equals: nil
		description: 'testSimple3_amp:2.7'.
	self
		assert: tmp_Ot75jBHQdB3 toElements class
		equals: TSGroup
		description: 'testSimple3_amp:2.8'.
	self
		assert: tmp_Ot75jBHQdB3 toElements size
		equals: 10
		description: 'testSimple3_amp:2.9'.
	self
		assert: tmp_Ot75jBHQdB3 view class
		equals: RSView
		description: 'testSimple3_amp:2.10'.
	self
		assert: tmp_Ot75jBHQdB3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple3_amp:2.11'.
	self
		assert: tmp_Ot75jBHQdB3 view numberOfEdges
		equals: 0
		description: 'testSimple3_amp:2.12'.
	self
		assert: tmp_Ot75jBHQdB3 fromElements class
		equals: TSGroup
		description: 'testSimple3_amp:2.13'.
	self
		assert: tmp_Ot75jBHQdB3 fromElements size
		equals: 10
		description: 'testSimple3_amp:2.14'.
	self
		assert: tmp_Ot75jBHQdB3 fromObjects class
		equals: TSGroup
		description: 'testSimple3_amp:2.15'.
	self
		assert: tmp_Ot75jBHQdB3 fromObjects size
		equals: 10
		description: 'testSimple3_amp:2.16'.
	self
		assert: tmp_Ot75jBHQdB3 viewElements class
		equals: TSGroup
		description: 'testSimple3_amp:2.17'.
	self
		assert: tmp_Ot75jBHQdB3 viewElements size
		equals: 10
		description: 'testSimple3_amp:2.18'.
	tmp_Wku2GdUyBl5 := RSEdgeBuilder line.
	self
		assert: tmp_Wku2GdUyBl5 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:3.1'.
	self
		assert: tmp_Wku2GdUyBl5 isBidirectional class
		equals: True
		description: 'testSimple3_amp:3.2'.
	self
		assert: tmp_Wku2GdUyBl5 isBidirectional
		equals: true
		description: 'testSimple3_amp:3.3'.
	self
		assert: tmp_Wku2GdUyBl5 toObjects class
		equals: Array
		description: 'testSimple3_amp:3.4'.
	self
		assert: tmp_Wku2GdUyBl5 toObjects size
		equals: 0
		description: 'testSimple3_amp:3.5'.
	self
		assert: tmp_Wku2GdUyBl5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:3.6'.
	self
		assert: tmp_Wku2GdUyBl5 controlPoints
		equals: nil
		description: 'testSimple3_amp:3.7'.
	self
		assert: tmp_Wku2GdUyBl5 toElements class
		equals: Array
		description: 'testSimple3_amp:3.8'.
	self
		assert: tmp_Wku2GdUyBl5 toElements size
		equals: 0
		description: 'testSimple3_amp:3.9'.
	self
		assert: tmp_Wku2GdUyBl5 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:3.10'.
	self
		assert: tmp_Wku2GdUyBl5 view
		equals: nil
		description: 'testSimple3_amp:3.11'.
	self
		assert: tmp_Wku2GdUyBl5 fromElements class
		equals: Array
		description: 'testSimple3_amp:3.12'.
	self
		assert: tmp_Wku2GdUyBl5 fromElements size
		equals: 0
		description: 'testSimple3_amp:3.13'.
	self
		assert: tmp_Wku2GdUyBl5 fromObjects class
		equals: Array
		description: 'testSimple3_amp:3.14'.
	self
		assert: tmp_Wku2GdUyBl5 fromObjects size
		equals: 0
		description: 'testSimple3_amp:3.15'.
	self
		assert: tmp_Wku2GdUyBl5 viewElements class
		equals: Array
		description: 'testSimple3_amp:3.16'.
	self
		assert: tmp_Wku2GdUyBl5 viewElements size
		equals: 0
		description: 'testSimple3_amp:3.17'.
	self
		should: [ tmp_Wku2GdUyBl5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple3_amp:4.1'.
	tmp_IqdZwFawWR7 := RSEdgeBuilder line.
	self
		assert: tmp_IqdZwFawWR7 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:5.1'.
	self
		assert: tmp_IqdZwFawWR7 isBidirectional class
		equals: True
		description: 'testSimple3_amp:5.2'.
	self
		assert: tmp_IqdZwFawWR7 isBidirectional
		equals: true
		description: 'testSimple3_amp:5.3'.
	self
		assert: tmp_IqdZwFawWR7 toObjects class
		equals: Array
		description: 'testSimple3_amp:5.4'.
	self
		assert: tmp_IqdZwFawWR7 toObjects size
		equals: 0
		description: 'testSimple3_amp:5.5'.
	self
		assert: tmp_IqdZwFawWR7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:5.6'.
	self
		assert: tmp_IqdZwFawWR7 controlPoints
		equals: nil
		description: 'testSimple3_amp:5.7'.
	self
		assert: tmp_IqdZwFawWR7 toElements class
		equals: Array
		description: 'testSimple3_amp:5.8'.
	self
		assert: tmp_IqdZwFawWR7 toElements size
		equals: 0
		description: 'testSimple3_amp:5.9'.
	self
		assert: tmp_IqdZwFawWR7 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:5.10'.
	self
		assert: tmp_IqdZwFawWR7 view
		equals: nil
		description: 'testSimple3_amp:5.11'.
	self
		assert: tmp_IqdZwFawWR7 fromElements class
		equals: Array
		description: 'testSimple3_amp:5.12'.
	self
		assert: tmp_IqdZwFawWR7 fromElements size
		equals: 0
		description: 'testSimple3_amp:5.13'.
	self
		assert: tmp_IqdZwFawWR7 fromObjects class
		equals: Array
		description: 'testSimple3_amp:5.14'.
	self
		assert: tmp_IqdZwFawWR7 fromObjects size
		equals: 0
		description: 'testSimple3_amp:5.15'.
	self
		assert: tmp_IqdZwFawWR7 viewElements class
		equals: Array
		description: 'testSimple3_amp:5.16'.
	self
		assert: tmp_IqdZwFawWR7 viewElements size
		equals: 0
		description: 'testSimple3_amp:5.17'.
	self
		should: [ tmp_IqdZwFawWR7 toObjects: (1 to: 10) ]
		raise: AssertionFailure
		description: 'testSimple3_amp:6.1'.
	tmp_rPzZugDNpT8 := RSEdgeBuilder line.
	self
		assert: tmp_rPzZugDNpT8 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:7.1'.
	self
		assert: tmp_rPzZugDNpT8 isBidirectional class
		equals: True
		description: 'testSimple3_amp:7.2'.
	self
		assert: tmp_rPzZugDNpT8 isBidirectional
		equals: true
		description: 'testSimple3_amp:7.3'.
	self
		assert: tmp_rPzZugDNpT8 toObjects class
		equals: Array
		description: 'testSimple3_amp:7.4'.
	self
		assert: tmp_rPzZugDNpT8 toObjects size
		equals: 0
		description: 'testSimple3_amp:7.5'.
	self
		assert: tmp_rPzZugDNpT8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:7.6'.
	self
		assert: tmp_rPzZugDNpT8 controlPoints
		equals: nil
		description: 'testSimple3_amp:7.7'.
	self
		assert: tmp_rPzZugDNpT8 toElements class
		equals: Array
		description: 'testSimple3_amp:7.8'.
	self
		assert: tmp_rPzZugDNpT8 toElements size
		equals: 0
		description: 'testSimple3_amp:7.9'.
	self
		assert: tmp_rPzZugDNpT8 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:7.10'.
	self
		assert: tmp_rPzZugDNpT8 view
		equals: nil
		description: 'testSimple3_amp:7.11'.
	self
		assert: tmp_rPzZugDNpT8 fromElements class
		equals: Array
		description: 'testSimple3_amp:7.12'.
	self
		assert: tmp_rPzZugDNpT8 fromElements size
		equals: 0
		description: 'testSimple3_amp:7.13'.
	self
		assert: tmp_rPzZugDNpT8 fromObjects class
		equals: Array
		description: 'testSimple3_amp:7.14'.
	self
		assert: tmp_rPzZugDNpT8 fromObjects size
		equals: 0
		description: 'testSimple3_amp:7.15'.
	self
		assert: tmp_rPzZugDNpT8 viewElements class
		equals: Array
		description: 'testSimple3_amp:7.16'.
	self
		assert: tmp_rPzZugDNpT8 viewElements size
		equals: 0
		description: 'testSimple3_amp:7.17'.
	tmp_dfo2iqilXs1 := tmp_rPzZugDNpT8
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_rPzZugDNpT8 class
		equals: RSEdgeBuilder
		description: 'testSimple3_amp:8.1'.
	self
		assert: tmp_rPzZugDNpT8 isBidirectional class
		equals: True
		description: 'testSimple3_amp:8.2'.
	self
		assert: tmp_rPzZugDNpT8 isBidirectional
		equals: true
		description: 'testSimple3_amp:8.3'.
	self
		assert: tmp_rPzZugDNpT8 toObjects class
		equals: Array
		description: 'testSimple3_amp:8.4'.
	self
		assert: tmp_rPzZugDNpT8 toObjects size
		equals: 0
		description: 'testSimple3_amp:8.5'.
	self
		assert: tmp_rPzZugDNpT8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3_amp:8.6'.
	self
		assert: tmp_rPzZugDNpT8 controlPoints
		equals: nil
		description: 'testSimple3_amp:8.7'.
	self
		assert: tmp_rPzZugDNpT8 toElements class
		equals: Array
		description: 'testSimple3_amp:8.8'.
	self
		assert: tmp_rPzZugDNpT8 toElements size
		equals: 0
		description: 'testSimple3_amp:8.9'.
	self
		assert: tmp_rPzZugDNpT8 view class
		equals: UndefinedObject
		description: 'testSimple3_amp:8.10'.
	self
		assert: tmp_rPzZugDNpT8 view
		equals: nil
		description: 'testSimple3_amp:8.11'.
	self
		assert: tmp_rPzZugDNpT8 fromElements class
		equals: Array
		description: 'testSimple3_amp:8.12'.
	self
		assert: tmp_rPzZugDNpT8 fromElements size
		equals: 0
		description: 'testSimple3_amp:8.13'.
	self
		assert: tmp_rPzZugDNpT8 fromObjects class
		equals: Array
		description: 'testSimple3_amp:8.14'.
	self
		assert: tmp_rPzZugDNpT8 fromObjects size
		equals: 0
		description: 'testSimple3_amp:8.15'.
	self
		assert: tmp_rPzZugDNpT8 viewElements class
		equals: Array
		description: 'testSimple3_amp:8.16'.
	self
		assert: tmp_rPzZugDNpT8 viewElements size
		equals: 0
		description: 'testSimple3_amp:8.17'.
	self
		assert: tmp_dfo2iqilXs1 class
		equals: TSGroup
		description: 'testSimple3_amp:8.1'.
	self
		assert: tmp_dfo2iqilXs1 size
		equals: 0
		description: 'testSimple3_amp:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple4_amp [
	<madeBySmallAmp>
	| tmp_jjpHjYUQDO1 tmp_rbzOHDPUxv3 tmp_1e6QW9SPeM5 tmp_ETD17CHkxL7 tmp_gwQ5zGqTDM8 |
	tmp_rbzOHDPUxv3 := RSEdgeBuilder line.
	self
		assert: tmp_rbzOHDPUxv3 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:1.1'.
	self
		assert: tmp_rbzOHDPUxv3 isBidirectional class
		equals: True
		description: 'testSimple4_amp:1.2'.
	self
		assert: tmp_rbzOHDPUxv3 isBidirectional
		equals: true
		description: 'testSimple4_amp:1.3'.
	self
		assert: tmp_rbzOHDPUxv3 toObjects class
		equals: Array
		description: 'testSimple4_amp:1.4'.
	self
		assert: tmp_rbzOHDPUxv3 toObjects size
		equals: 0
		description: 'testSimple4_amp:1.5'.
	self
		assert: tmp_rbzOHDPUxv3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:1.6'.
	self
		assert: tmp_rbzOHDPUxv3 controlPoints
		equals: nil
		description: 'testSimple4_amp:1.7'.
	self
		assert: tmp_rbzOHDPUxv3 toElements class
		equals: Array
		description: 'testSimple4_amp:1.8'.
	self
		assert: tmp_rbzOHDPUxv3 toElements size
		equals: 0
		description: 'testSimple4_amp:1.9'.
	self
		assert: tmp_rbzOHDPUxv3 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:1.10'.
	self
		assert: tmp_rbzOHDPUxv3 view
		equals: nil
		description: 'testSimple4_amp:1.11'.
	self
		assert: tmp_rbzOHDPUxv3 fromElements class
		equals: Array
		description: 'testSimple4_amp:1.12'.
	self
		assert: tmp_rbzOHDPUxv3 fromElements size
		equals: 0
		description: 'testSimple4_amp:1.13'.
	self
		assert: tmp_rbzOHDPUxv3 fromObjects class
		equals: Array
		description: 'testSimple4_amp:1.14'.
	self
		assert: tmp_rbzOHDPUxv3 fromObjects size
		equals: 0
		description: 'testSimple4_amp:1.15'.
	self
		assert: tmp_rbzOHDPUxv3 viewElements class
		equals: Array
		description: 'testSimple4_amp:1.16'.
	self
		assert: tmp_rbzOHDPUxv3 viewElements size
		equals: 0
		description: 'testSimple4_amp:1.17'.
	tmp_rbzOHDPUxv3 view: view.
	self
		assert: tmp_rbzOHDPUxv3 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:2.1'.
	self
		assert: tmp_rbzOHDPUxv3 isBidirectional class
		equals: True
		description: 'testSimple4_amp:2.2'.
	self
		assert: tmp_rbzOHDPUxv3 isBidirectional
		equals: true
		description: 'testSimple4_amp:2.3'.
	self
		assert: tmp_rbzOHDPUxv3 toObjects class
		equals: TSGroup
		description: 'testSimple4_amp:2.4'.
	self
		assert: tmp_rbzOHDPUxv3 toObjects size
		equals: 10
		description: 'testSimple4_amp:2.5'.
	self
		assert: tmp_rbzOHDPUxv3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:2.6'.
	self
		assert: tmp_rbzOHDPUxv3 controlPoints
		equals: nil
		description: 'testSimple4_amp:2.7'.
	self
		assert: tmp_rbzOHDPUxv3 toElements class
		equals: TSGroup
		description: 'testSimple4_amp:2.8'.
	self
		assert: tmp_rbzOHDPUxv3 toElements size
		equals: 10
		description: 'testSimple4_amp:2.9'.
	self
		assert: tmp_rbzOHDPUxv3 view class
		equals: RSView
		description: 'testSimple4_amp:2.10'.
	self
		assert: tmp_rbzOHDPUxv3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple4_amp:2.11'.
	self
		assert: tmp_rbzOHDPUxv3 view numberOfEdges
		equals: 0
		description: 'testSimple4_amp:2.12'.
	self
		assert: tmp_rbzOHDPUxv3 fromElements class
		equals: TSGroup
		description: 'testSimple4_amp:2.13'.
	self
		assert: tmp_rbzOHDPUxv3 fromElements size
		equals: 10
		description: 'testSimple4_amp:2.14'.
	self
		assert: tmp_rbzOHDPUxv3 fromObjects class
		equals: TSGroup
		description: 'testSimple4_amp:2.15'.
	self
		assert: tmp_rbzOHDPUxv3 fromObjects size
		equals: 10
		description: 'testSimple4_amp:2.16'.
	self
		assert: tmp_rbzOHDPUxv3 viewElements class
		equals: TSGroup
		description: 'testSimple4_amp:2.17'.
	self
		assert: tmp_rbzOHDPUxv3 viewElements size
		equals: 10
		description: 'testSimple4_amp:2.18'.
	tmp_1e6QW9SPeM5 := RSEdgeBuilder line.
	self
		assert: tmp_1e6QW9SPeM5 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:3.1'.
	self
		assert: tmp_1e6QW9SPeM5 isBidirectional class
		equals: True
		description: 'testSimple4_amp:3.2'.
	self
		assert: tmp_1e6QW9SPeM5 isBidirectional
		equals: true
		description: 'testSimple4_amp:3.3'.
	self
		assert: tmp_1e6QW9SPeM5 toObjects class
		equals: Array
		description: 'testSimple4_amp:3.4'.
	self
		assert: tmp_1e6QW9SPeM5 toObjects size
		equals: 0
		description: 'testSimple4_amp:3.5'.
	self
		assert: tmp_1e6QW9SPeM5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:3.6'.
	self
		assert: tmp_1e6QW9SPeM5 controlPoints
		equals: nil
		description: 'testSimple4_amp:3.7'.
	self
		assert: tmp_1e6QW9SPeM5 toElements class
		equals: Array
		description: 'testSimple4_amp:3.8'.
	self
		assert: tmp_1e6QW9SPeM5 toElements size
		equals: 0
		description: 'testSimple4_amp:3.9'.
	self
		assert: tmp_1e6QW9SPeM5 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:3.10'.
	self
		assert: tmp_1e6QW9SPeM5 view
		equals: nil
		description: 'testSimple4_amp:3.11'.
	self
		assert: tmp_1e6QW9SPeM5 fromElements class
		equals: Array
		description: 'testSimple4_amp:3.12'.
	self
		assert: tmp_1e6QW9SPeM5 fromElements size
		equals: 0
		description: 'testSimple4_amp:3.13'.
	self
		assert: tmp_1e6QW9SPeM5 fromObjects class
		equals: Array
		description: 'testSimple4_amp:3.14'.
	self
		assert: tmp_1e6QW9SPeM5 fromObjects size
		equals: 0
		description: 'testSimple4_amp:3.15'.
	self
		assert: tmp_1e6QW9SPeM5 viewElements class
		equals: Array
		description: 'testSimple4_amp:3.16'.
	self
		assert: tmp_1e6QW9SPeM5 viewElements size
		equals: 0
		description: 'testSimple4_amp:3.17'.
	self
		should: [ tmp_1e6QW9SPeM5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4_amp:4.1'.
	tmp_ETD17CHkxL7 := RSEdgeBuilder line.
	self
		assert: tmp_ETD17CHkxL7 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:5.1'.
	self
		assert: tmp_ETD17CHkxL7 isBidirectional class
		equals: True
		description: 'testSimple4_amp:5.2'.
	self
		assert: tmp_ETD17CHkxL7 isBidirectional
		equals: true
		description: 'testSimple4_amp:5.3'.
	self
		assert: tmp_ETD17CHkxL7 toObjects class
		equals: Array
		description: 'testSimple4_amp:5.4'.
	self
		assert: tmp_ETD17CHkxL7 toObjects size
		equals: 0
		description: 'testSimple4_amp:5.5'.
	self
		assert: tmp_ETD17CHkxL7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:5.6'.
	self
		assert: tmp_ETD17CHkxL7 controlPoints
		equals: nil
		description: 'testSimple4_amp:5.7'.
	self
		assert: tmp_ETD17CHkxL7 toElements class
		equals: Array
		description: 'testSimple4_amp:5.8'.
	self
		assert: tmp_ETD17CHkxL7 toElements size
		equals: 0
		description: 'testSimple4_amp:5.9'.
	self
		assert: tmp_ETD17CHkxL7 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:5.10'.
	self
		assert: tmp_ETD17CHkxL7 view
		equals: nil
		description: 'testSimple4_amp:5.11'.
	self
		assert: tmp_ETD17CHkxL7 fromElements class
		equals: Array
		description: 'testSimple4_amp:5.12'.
	self
		assert: tmp_ETD17CHkxL7 fromElements size
		equals: 0
		description: 'testSimple4_amp:5.13'.
	self
		assert: tmp_ETD17CHkxL7 fromObjects class
		equals: Array
		description: 'testSimple4_amp:5.14'.
	self
		assert: tmp_ETD17CHkxL7 fromObjects size
		equals: 0
		description: 'testSimple4_amp:5.15'.
	self
		assert: tmp_ETD17CHkxL7 viewElements class
		equals: Array
		description: 'testSimple4_amp:5.16'.
	self
		assert: tmp_ETD17CHkxL7 viewElements size
		equals: 0
		description: 'testSimple4_amp:5.17'.
	self
		should: [ tmp_ETD17CHkxL7 toObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4_amp:6.1'.
	tmp_gwQ5zGqTDM8 := RSEdgeBuilder line.
	self
		assert: tmp_gwQ5zGqTDM8 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:7.1'.
	self
		assert: tmp_gwQ5zGqTDM8 isBidirectional class
		equals: True
		description: 'testSimple4_amp:7.2'.
	self
		assert: tmp_gwQ5zGqTDM8 isBidirectional
		equals: true
		description: 'testSimple4_amp:7.3'.
	self
		assert: tmp_gwQ5zGqTDM8 toObjects class
		equals: Array
		description: 'testSimple4_amp:7.4'.
	self
		assert: tmp_gwQ5zGqTDM8 toObjects size
		equals: 0
		description: 'testSimple4_amp:7.5'.
	self
		assert: tmp_gwQ5zGqTDM8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:7.6'.
	self
		assert: tmp_gwQ5zGqTDM8 controlPoints
		equals: nil
		description: 'testSimple4_amp:7.7'.
	self
		assert: tmp_gwQ5zGqTDM8 toElements class
		equals: Array
		description: 'testSimple4_amp:7.8'.
	self
		assert: tmp_gwQ5zGqTDM8 toElements size
		equals: 0
		description: 'testSimple4_amp:7.9'.
	self
		assert: tmp_gwQ5zGqTDM8 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:7.10'.
	self
		assert: tmp_gwQ5zGqTDM8 view
		equals: nil
		description: 'testSimple4_amp:7.11'.
	self
		assert: tmp_gwQ5zGqTDM8 fromElements class
		equals: Array
		description: 'testSimple4_amp:7.12'.
	self
		assert: tmp_gwQ5zGqTDM8 fromElements size
		equals: 0
		description: 'testSimple4_amp:7.13'.
	self
		assert: tmp_gwQ5zGqTDM8 fromObjects class
		equals: Array
		description: 'testSimple4_amp:7.14'.
	self
		assert: tmp_gwQ5zGqTDM8 fromObjects size
		equals: 0
		description: 'testSimple4_amp:7.15'.
	self
		assert: tmp_gwQ5zGqTDM8 viewElements class
		equals: Array
		description: 'testSimple4_amp:7.16'.
	self
		assert: tmp_gwQ5zGqTDM8 viewElements size
		equals: 0
		description: 'testSimple4_amp:7.17'.
	tmp_jjpHjYUQDO1 := tmp_gwQ5zGqTDM8
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_gwQ5zGqTDM8 class
		equals: RSEdgeBuilder
		description: 'testSimple4_amp:8.1'.
	self
		assert: tmp_gwQ5zGqTDM8 isBidirectional class
		equals: True
		description: 'testSimple4_amp:8.2'.
	self
		assert: tmp_gwQ5zGqTDM8 isBidirectional
		equals: true
		description: 'testSimple4_amp:8.3'.
	self
		assert: tmp_gwQ5zGqTDM8 toObjects class
		equals: Array
		description: 'testSimple4_amp:8.4'.
	self
		assert: tmp_gwQ5zGqTDM8 toObjects size
		equals: 0
		description: 'testSimple4_amp:8.5'.
	self
		assert: tmp_gwQ5zGqTDM8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4_amp:8.6'.
	self
		assert: tmp_gwQ5zGqTDM8 controlPoints
		equals: nil
		description: 'testSimple4_amp:8.7'.
	self
		assert: tmp_gwQ5zGqTDM8 toElements class
		equals: Array
		description: 'testSimple4_amp:8.8'.
	self
		assert: tmp_gwQ5zGqTDM8 toElements size
		equals: 0
		description: 'testSimple4_amp:8.9'.
	self
		assert: tmp_gwQ5zGqTDM8 view class
		equals: UndefinedObject
		description: 'testSimple4_amp:8.10'.
	self
		assert: tmp_gwQ5zGqTDM8 view
		equals: nil
		description: 'testSimple4_amp:8.11'.
	self
		assert: tmp_gwQ5zGqTDM8 fromElements class
		equals: Array
		description: 'testSimple4_amp:8.12'.
	self
		assert: tmp_gwQ5zGqTDM8 fromElements size
		equals: 0
		description: 'testSimple4_amp:8.13'.
	self
		assert: tmp_gwQ5zGqTDM8 fromObjects class
		equals: Array
		description: 'testSimple4_amp:8.14'.
	self
		assert: tmp_gwQ5zGqTDM8 fromObjects size
		equals: 0
		description: 'testSimple4_amp:8.15'.
	self
		assert: tmp_gwQ5zGqTDM8 viewElements class
		equals: Array
		description: 'testSimple4_amp:8.16'.
	self
		assert: tmp_gwQ5zGqTDM8 viewElements size
		equals: 0
		description: 'testSimple4_amp:8.17'.
	self
		assert: tmp_jjpHjYUQDO1 class
		equals: TSGroup
		description: 'testSimple4_amp:8.1'.
	self
		assert: tmp_jjpHjYUQDO1 size
		equals: 0
		description: 'testSimple4_amp:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple5_amp [
	<madeBySmallAmp>
	| tmp_dZOEXlAz681 tmp_lbWjN333w53 tmp_TBBQylm1re5 tmp_3evenUevuN6 |
	tmp_lbWjN333w53 := RSEdgeBuilder line.
	self
		assert: tmp_lbWjN333w53 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:1.1'.
	self
		assert: tmp_lbWjN333w53 isBidirectional class
		equals: True
		description: 'testSimple5_amp:1.2'.
	self
		assert: tmp_lbWjN333w53 isBidirectional
		equals: true
		description: 'testSimple5_amp:1.3'.
	self
		assert: tmp_lbWjN333w53 toObjects class
		equals: Array
		description: 'testSimple5_amp:1.4'.
	self
		assert: tmp_lbWjN333w53 toObjects size
		equals: 0
		description: 'testSimple5_amp:1.5'.
	self
		assert: tmp_lbWjN333w53 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:1.6'.
	self
		assert: tmp_lbWjN333w53 controlPoints
		equals: nil
		description: 'testSimple5_amp:1.7'.
	self
		assert: tmp_lbWjN333w53 toElements class
		equals: Array
		description: 'testSimple5_amp:1.8'.
	self
		assert: tmp_lbWjN333w53 toElements size
		equals: 0
		description: 'testSimple5_amp:1.9'.
	self
		assert: tmp_lbWjN333w53 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:1.10'.
	self
		assert: tmp_lbWjN333w53 view
		equals: nil
		description: 'testSimple5_amp:1.11'.
	self
		assert: tmp_lbWjN333w53 fromElements class
		equals: Array
		description: 'testSimple5_amp:1.12'.
	self
		assert: tmp_lbWjN333w53 fromElements size
		equals: 0
		description: 'testSimple5_amp:1.13'.
	self
		assert: tmp_lbWjN333w53 fromObjects class
		equals: Array
		description: 'testSimple5_amp:1.14'.
	self
		assert: tmp_lbWjN333w53 fromObjects size
		equals: 0
		description: 'testSimple5_amp:1.15'.
	self
		assert: tmp_lbWjN333w53 viewElements class
		equals: Array
		description: 'testSimple5_amp:1.16'.
	self
		assert: tmp_lbWjN333w53 viewElements size
		equals: 0
		description: 'testSimple5_amp:1.17'.
	tmp_lbWjN333w53 view: view.
	self
		assert: tmp_lbWjN333w53 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:2.1'.
	self
		assert: tmp_lbWjN333w53 isBidirectional class
		equals: True
		description: 'testSimple5_amp:2.2'.
	self
		assert: tmp_lbWjN333w53 isBidirectional
		equals: true
		description: 'testSimple5_amp:2.3'.
	self
		assert: tmp_lbWjN333w53 toObjects class
		equals: TSGroup
		description: 'testSimple5_amp:2.4'.
	self
		assert: tmp_lbWjN333w53 toObjects size
		equals: 10
		description: 'testSimple5_amp:2.5'.
	self
		assert: tmp_lbWjN333w53 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:2.6'.
	self
		assert: tmp_lbWjN333w53 controlPoints
		equals: nil
		description: 'testSimple5_amp:2.7'.
	self
		assert: tmp_lbWjN333w53 toElements class
		equals: TSGroup
		description: 'testSimple5_amp:2.8'.
	self
		assert: tmp_lbWjN333w53 toElements size
		equals: 10
		description: 'testSimple5_amp:2.9'.
	self
		assert: tmp_lbWjN333w53 view class
		equals: RSView
		description: 'testSimple5_amp:2.10'.
	self
		assert: tmp_lbWjN333w53 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple5_amp:2.11'.
	self
		assert: tmp_lbWjN333w53 view numberOfEdges
		equals: 0
		description: 'testSimple5_amp:2.12'.
	self
		assert: tmp_lbWjN333w53 fromElements class
		equals: TSGroup
		description: 'testSimple5_amp:2.13'.
	self
		assert: tmp_lbWjN333w53 fromElements size
		equals: 10
		description: 'testSimple5_amp:2.14'.
	self
		assert: tmp_lbWjN333w53 fromObjects class
		equals: TSGroup
		description: 'testSimple5_amp:2.15'.
	self
		assert: tmp_lbWjN333w53 fromObjects size
		equals: 10
		description: 'testSimple5_amp:2.16'.
	self
		assert: tmp_lbWjN333w53 viewElements class
		equals: TSGroup
		description: 'testSimple5_amp:2.17'.
	self
		assert: tmp_lbWjN333w53 viewElements size
		equals: 10
		description: 'testSimple5_amp:2.18'.
	tmp_TBBQylm1re5 := RSEdgeBuilder line.
	self
		assert: tmp_TBBQylm1re5 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:3.1'.
	self
		assert: tmp_TBBQylm1re5 isBidirectional class
		equals: True
		description: 'testSimple5_amp:3.2'.
	self
		assert: tmp_TBBQylm1re5 isBidirectional
		equals: true
		description: 'testSimple5_amp:3.3'.
	self
		assert: tmp_TBBQylm1re5 toObjects class
		equals: Array
		description: 'testSimple5_amp:3.4'.
	self
		assert: tmp_TBBQylm1re5 toObjects size
		equals: 0
		description: 'testSimple5_amp:3.5'.
	self
		assert: tmp_TBBQylm1re5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:3.6'.
	self
		assert: tmp_TBBQylm1re5 controlPoints
		equals: nil
		description: 'testSimple5_amp:3.7'.
	self
		assert: tmp_TBBQylm1re5 toElements class
		equals: Array
		description: 'testSimple5_amp:3.8'.
	self
		assert: tmp_TBBQylm1re5 toElements size
		equals: 0
		description: 'testSimple5_amp:3.9'.
	self
		assert: tmp_TBBQylm1re5 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:3.10'.
	self
		assert: tmp_TBBQylm1re5 view
		equals: nil
		description: 'testSimple5_amp:3.11'.
	self
		assert: tmp_TBBQylm1re5 fromElements class
		equals: Array
		description: 'testSimple5_amp:3.12'.
	self
		assert: tmp_TBBQylm1re5 fromElements size
		equals: 0
		description: 'testSimple5_amp:3.13'.
	self
		assert: tmp_TBBQylm1re5 fromObjects class
		equals: Array
		description: 'testSimple5_amp:3.14'.
	self
		assert: tmp_TBBQylm1re5 fromObjects size
		equals: 0
		description: 'testSimple5_amp:3.15'.
	self
		assert: tmp_TBBQylm1re5 viewElements class
		equals: Array
		description: 'testSimple5_amp:3.16'.
	self
		assert: tmp_TBBQylm1re5 viewElements size
		equals: 0
		description: 'testSimple5_amp:3.17'.
	self
		should: [ tmp_TBBQylm1re5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple5_amp:4.1'.
	tmp_3evenUevuN6 := RSEdgeBuilder line.
	self
		assert: tmp_3evenUevuN6 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:5.1'.
	self
		assert: tmp_3evenUevuN6 isBidirectional class
		equals: True
		description: 'testSimple5_amp:5.2'.
	self
		assert: tmp_3evenUevuN6 isBidirectional
		equals: true
		description: 'testSimple5_amp:5.3'.
	self
		assert: tmp_3evenUevuN6 toObjects class
		equals: Array
		description: 'testSimple5_amp:5.4'.
	self
		assert: tmp_3evenUevuN6 toObjects size
		equals: 0
		description: 'testSimple5_amp:5.5'.
	self
		assert: tmp_3evenUevuN6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:5.6'.
	self
		assert: tmp_3evenUevuN6 controlPoints
		equals: nil
		description: 'testSimple5_amp:5.7'.
	self
		assert: tmp_3evenUevuN6 toElements class
		equals: Array
		description: 'testSimple5_amp:5.8'.
	self
		assert: tmp_3evenUevuN6 toElements size
		equals: 0
		description: 'testSimple5_amp:5.9'.
	self
		assert: tmp_3evenUevuN6 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:5.10'.
	self
		assert: tmp_3evenUevuN6 view
		equals: nil
		description: 'testSimple5_amp:5.11'.
	self
		assert: tmp_3evenUevuN6 fromElements class
		equals: Array
		description: 'testSimple5_amp:5.12'.
	self
		assert: tmp_3evenUevuN6 fromElements size
		equals: 0
		description: 'testSimple5_amp:5.13'.
	self
		assert: tmp_3evenUevuN6 fromObjects class
		equals: Array
		description: 'testSimple5_amp:5.14'.
	self
		assert: tmp_3evenUevuN6 fromObjects size
		equals: 0
		description: 'testSimple5_amp:5.15'.
	self
		assert: tmp_3evenUevuN6 viewElements class
		equals: Array
		description: 'testSimple5_amp:5.16'.
	self
		assert: tmp_3evenUevuN6 viewElements size
		equals: 0
		description: 'testSimple5_amp:5.17'.
	tmp_dZOEXlAz681 := tmp_3evenUevuN6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self
		assert: tmp_3evenUevuN6 class
		equals: RSEdgeBuilder
		description: 'testSimple5_amp:6.1'.
	self
		assert: tmp_3evenUevuN6 isBidirectional class
		equals: True
		description: 'testSimple5_amp:6.2'.
	self
		assert: tmp_3evenUevuN6 isBidirectional
		equals: true
		description: 'testSimple5_amp:6.3'.
	self
		assert: tmp_3evenUevuN6 toObjects class
		equals: Array
		description: 'testSimple5_amp:6.4'.
	self
		assert: tmp_3evenUevuN6 toObjects size
		equals: 0
		description: 'testSimple5_amp:6.5'.
	self
		assert: tmp_3evenUevuN6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5_amp:6.6'.
	self
		assert: tmp_3evenUevuN6 controlPoints
		equals: nil
		description: 'testSimple5_amp:6.7'.
	self
		assert: tmp_3evenUevuN6 toElements class
		equals: Array
		description: 'testSimple5_amp:6.8'.
	self
		assert: tmp_3evenUevuN6 toElements size
		equals: 0
		description: 'testSimple5_amp:6.9'.
	self
		assert: tmp_3evenUevuN6 view class
		equals: UndefinedObject
		description: 'testSimple5_amp:6.10'.
	self
		assert: tmp_3evenUevuN6 view
		equals: nil
		description: 'testSimple5_amp:6.11'.
	self
		assert: tmp_3evenUevuN6 fromElements class
		equals: Array
		description: 'testSimple5_amp:6.12'.
	self
		assert: tmp_3evenUevuN6 fromElements size
		equals: 0
		description: 'testSimple5_amp:6.13'.
	self
		assert: tmp_3evenUevuN6 fromObjects class
		equals: Array
		description: 'testSimple5_amp:6.14'.
	self
		assert: tmp_3evenUevuN6 fromObjects size
		equals: 0
		description: 'testSimple5_amp:6.15'.
	self
		assert: tmp_3evenUevuN6 viewElements class
		equals: Array
		description: 'testSimple5_amp:6.16'.
	self
		assert: tmp_3evenUevuN6 viewElements size
		equals: 0
		description: 'testSimple5_amp:6.17'.
	self
		assert: tmp_dZOEXlAz681 class
		equals: TSGroup
		description: 'testSimple5_amp:6.1'.
	self
		assert: tmp_dZOEXlAz681 size
		equals: 0
		description: 'testSimple5_amp:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple6_amp [
	<madeBySmallAmp>
	| tmp_Z6bdGjPDGF1 tmp_XuIEbZdizc3 tmp_mXF155ttvn5 tmp_S4jbHUElV86 |
	tmp_XuIEbZdizc3 := RSEdgeBuilder line.
	self
		assert: tmp_XuIEbZdizc3 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:1.1'.
	self
		assert: tmp_XuIEbZdizc3 isBidirectional class
		equals: True
		description: 'testSimple6_amp:1.2'.
	self
		assert: tmp_XuIEbZdizc3 isBidirectional
		equals: true
		description: 'testSimple6_amp:1.3'.
	self
		assert: tmp_XuIEbZdizc3 toObjects class
		equals: Array
		description: 'testSimple6_amp:1.4'.
	self
		assert: tmp_XuIEbZdizc3 toObjects size
		equals: 0
		description: 'testSimple6_amp:1.5'.
	self
		assert: tmp_XuIEbZdizc3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:1.6'.
	self
		assert: tmp_XuIEbZdizc3 controlPoints
		equals: nil
		description: 'testSimple6_amp:1.7'.
	self
		assert: tmp_XuIEbZdizc3 toElements class
		equals: Array
		description: 'testSimple6_amp:1.8'.
	self
		assert: tmp_XuIEbZdizc3 toElements size
		equals: 0
		description: 'testSimple6_amp:1.9'.
	self
		assert: tmp_XuIEbZdizc3 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:1.10'.
	self
		assert: tmp_XuIEbZdizc3 view
		equals: nil
		description: 'testSimple6_amp:1.11'.
	self
		assert: tmp_XuIEbZdizc3 fromElements class
		equals: Array
		description: 'testSimple6_amp:1.12'.
	self
		assert: tmp_XuIEbZdizc3 fromElements size
		equals: 0
		description: 'testSimple6_amp:1.13'.
	self
		assert: tmp_XuIEbZdizc3 fromObjects class
		equals: Array
		description: 'testSimple6_amp:1.14'.
	self
		assert: tmp_XuIEbZdizc3 fromObjects size
		equals: 0
		description: 'testSimple6_amp:1.15'.
	self
		assert: tmp_XuIEbZdizc3 viewElements class
		equals: Array
		description: 'testSimple6_amp:1.16'.
	self
		assert: tmp_XuIEbZdizc3 viewElements size
		equals: 0
		description: 'testSimple6_amp:1.17'.
	tmp_XuIEbZdizc3 view: view.
	self
		assert: tmp_XuIEbZdizc3 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:2.1'.
	self
		assert: tmp_XuIEbZdizc3 isBidirectional class
		equals: True
		description: 'testSimple6_amp:2.2'.
	self
		assert: tmp_XuIEbZdizc3 isBidirectional
		equals: true
		description: 'testSimple6_amp:2.3'.
	self
		assert: tmp_XuIEbZdizc3 toObjects class
		equals: TSGroup
		description: 'testSimple6_amp:2.4'.
	self
		assert: tmp_XuIEbZdizc3 toObjects size
		equals: 10
		description: 'testSimple6_amp:2.5'.
	self
		assert: tmp_XuIEbZdizc3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:2.6'.
	self
		assert: tmp_XuIEbZdizc3 controlPoints
		equals: nil
		description: 'testSimple6_amp:2.7'.
	self
		assert: tmp_XuIEbZdizc3 toElements class
		equals: TSGroup
		description: 'testSimple6_amp:2.8'.
	self
		assert: tmp_XuIEbZdizc3 toElements size
		equals: 10
		description: 'testSimple6_amp:2.9'.
	self
		assert: tmp_XuIEbZdizc3 view class
		equals: RSView
		description: 'testSimple6_amp:2.10'.
	self
		assert: tmp_XuIEbZdizc3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple6_amp:2.11'.
	self
		assert: tmp_XuIEbZdizc3 view numberOfEdges
		equals: 0
		description: 'testSimple6_amp:2.12'.
	self
		assert: tmp_XuIEbZdizc3 fromElements class
		equals: TSGroup
		description: 'testSimple6_amp:2.13'.
	self
		assert: tmp_XuIEbZdizc3 fromElements size
		equals: 10
		description: 'testSimple6_amp:2.14'.
	self
		assert: tmp_XuIEbZdizc3 fromObjects class
		equals: TSGroup
		description: 'testSimple6_amp:2.15'.
	self
		assert: tmp_XuIEbZdizc3 fromObjects size
		equals: 10
		description: 'testSimple6_amp:2.16'.
	self
		assert: tmp_XuIEbZdizc3 viewElements class
		equals: TSGroup
		description: 'testSimple6_amp:2.17'.
	self
		assert: tmp_XuIEbZdizc3 viewElements size
		equals: 10
		description: 'testSimple6_amp:2.18'.
	tmp_mXF155ttvn5 := RSEdgeBuilder line.
	self
		assert: tmp_mXF155ttvn5 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:3.1'.
	self
		assert: tmp_mXF155ttvn5 isBidirectional class
		equals: True
		description: 'testSimple6_amp:3.2'.
	self
		assert: tmp_mXF155ttvn5 isBidirectional
		equals: true
		description: 'testSimple6_amp:3.3'.
	self
		assert: tmp_mXF155ttvn5 toObjects class
		equals: Array
		description: 'testSimple6_amp:3.4'.
	self
		assert: tmp_mXF155ttvn5 toObjects size
		equals: 0
		description: 'testSimple6_amp:3.5'.
	self
		assert: tmp_mXF155ttvn5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:3.6'.
	self
		assert: tmp_mXF155ttvn5 controlPoints
		equals: nil
		description: 'testSimple6_amp:3.7'.
	self
		assert: tmp_mXF155ttvn5 toElements class
		equals: Array
		description: 'testSimple6_amp:3.8'.
	self
		assert: tmp_mXF155ttvn5 toElements size
		equals: 0
		description: 'testSimple6_amp:3.9'.
	self
		assert: tmp_mXF155ttvn5 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:3.10'.
	self
		assert: tmp_mXF155ttvn5 view
		equals: nil
		description: 'testSimple6_amp:3.11'.
	self
		assert: tmp_mXF155ttvn5 fromElements class
		equals: Array
		description: 'testSimple6_amp:3.12'.
	self
		assert: tmp_mXF155ttvn5 fromElements size
		equals: 0
		description: 'testSimple6_amp:3.13'.
	self
		assert: tmp_mXF155ttvn5 fromObjects class
		equals: Array
		description: 'testSimple6_amp:3.14'.
	self
		assert: tmp_mXF155ttvn5 fromObjects size
		equals: 0
		description: 'testSimple6_amp:3.15'.
	self
		assert: tmp_mXF155ttvn5 viewElements class
		equals: Array
		description: 'testSimple6_amp:3.16'.
	self
		assert: tmp_mXF155ttvn5 viewElements size
		equals: 0
		description: 'testSimple6_amp:3.17'.
	self
		should: [ tmp_mXF155ttvn5 fromObjects: (Array with: 2) ]
		raise: AssertionFailure
		description: 'testSimple6_amp:4.1'.
	tmp_S4jbHUElV86 := RSEdgeBuilder line.
	self
		assert: tmp_S4jbHUElV86 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:5.1'.
	self
		assert: tmp_S4jbHUElV86 isBidirectional class
		equals: True
		description: 'testSimple6_amp:5.2'.
	self
		assert: tmp_S4jbHUElV86 isBidirectional
		equals: true
		description: 'testSimple6_amp:5.3'.
	self
		assert: tmp_S4jbHUElV86 toObjects class
		equals: Array
		description: 'testSimple6_amp:5.4'.
	self
		assert: tmp_S4jbHUElV86 toObjects size
		equals: 0
		description: 'testSimple6_amp:5.5'.
	self
		assert: tmp_S4jbHUElV86 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:5.6'.
	self
		assert: tmp_S4jbHUElV86 controlPoints
		equals: nil
		description: 'testSimple6_amp:5.7'.
	self
		assert: tmp_S4jbHUElV86 toElements class
		equals: Array
		description: 'testSimple6_amp:5.8'.
	self
		assert: tmp_S4jbHUElV86 toElements size
		equals: 0
		description: 'testSimple6_amp:5.9'.
	self
		assert: tmp_S4jbHUElV86 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:5.10'.
	self
		assert: tmp_S4jbHUElV86 view
		equals: nil
		description: 'testSimple6_amp:5.11'.
	self
		assert: tmp_S4jbHUElV86 fromElements class
		equals: Array
		description: 'testSimple6_amp:5.12'.
	self
		assert: tmp_S4jbHUElV86 fromElements size
		equals: 0
		description: 'testSimple6_amp:5.13'.
	self
		assert: tmp_S4jbHUElV86 fromObjects class
		equals: Array
		description: 'testSimple6_amp:5.14'.
	self
		assert: tmp_S4jbHUElV86 fromObjects size
		equals: 0
		description: 'testSimple6_amp:5.15'.
	self
		assert: tmp_S4jbHUElV86 viewElements class
		equals: Array
		description: 'testSimple6_amp:5.16'.
	self
		assert: tmp_S4jbHUElV86 viewElements size
		equals: 0
		description: 'testSimple6_amp:5.17'.
	tmp_Z6bdGjPDGF1 := tmp_S4jbHUElV86
		connectFromAll: (Array with: 2)
		to: 3.
	self
		assert: tmp_S4jbHUElV86 class
		equals: RSEdgeBuilder
		description: 'testSimple6_amp:6.1'.
	self
		assert: tmp_S4jbHUElV86 isBidirectional class
		equals: True
		description: 'testSimple6_amp:6.2'.
	self
		assert: tmp_S4jbHUElV86 isBidirectional
		equals: true
		description: 'testSimple6_amp:6.3'.
	self
		assert: tmp_S4jbHUElV86 toObjects class
		equals: Array
		description: 'testSimple6_amp:6.4'.
	self
		assert: tmp_S4jbHUElV86 toObjects size
		equals: 0
		description: 'testSimple6_amp:6.5'.
	self
		assert: tmp_S4jbHUElV86 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6_amp:6.6'.
	self
		assert: tmp_S4jbHUElV86 controlPoints
		equals: nil
		description: 'testSimple6_amp:6.7'.
	self
		assert: tmp_S4jbHUElV86 toElements class
		equals: Array
		description: 'testSimple6_amp:6.8'.
	self
		assert: tmp_S4jbHUElV86 toElements size
		equals: 0
		description: 'testSimple6_amp:6.9'.
	self
		assert: tmp_S4jbHUElV86 view class
		equals: UndefinedObject
		description: 'testSimple6_amp:6.10'.
	self
		assert: tmp_S4jbHUElV86 view
		equals: nil
		description: 'testSimple6_amp:6.11'.
	self
		assert: tmp_S4jbHUElV86 fromElements class
		equals: Array
		description: 'testSimple6_amp:6.12'.
	self
		assert: tmp_S4jbHUElV86 fromElements size
		equals: 0
		description: 'testSimple6_amp:6.13'.
	self
		assert: tmp_S4jbHUElV86 fromObjects class
		equals: Array
		description: 'testSimple6_amp:6.14'.
	self
		assert: tmp_S4jbHUElV86 fromObjects size
		equals: 0
		description: 'testSimple6_amp:6.15'.
	self
		assert: tmp_S4jbHUElV86 viewElements class
		equals: Array
		description: 'testSimple6_amp:6.16'.
	self
		assert: tmp_S4jbHUElV86 viewElements size
		equals: 0
		description: 'testSimple6_amp:6.17'.
	self
		assert: tmp_Z6bdGjPDGF1 class
		equals: TSGroup
		description: 'testSimple6_amp:6.1'.
	self
		assert: tmp_Z6bdGjPDGF1 size
		equals: 0
		description: 'testSimple6_amp:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple7_amp [
	<madeBySmallAmp>
	| tmp_w3JsIYSJd03 tmp_T4tXHYPm2Y5 tmp_pAL4zZal7L7 tmp_W3NqHRmWRZ8 |
	tmp_w3JsIYSJd03 := RSEdgeBuilder line.
	self
		assert: tmp_w3JsIYSJd03 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:1.1'.
	self
		assert: tmp_w3JsIYSJd03 isBidirectional class
		equals: True
		description: 'testSimple7_amp:1.2'.
	self
		assert: tmp_w3JsIYSJd03 isBidirectional
		equals: true
		description: 'testSimple7_amp:1.3'.
	self
		assert: tmp_w3JsIYSJd03 toObjects class
		equals: Array
		description: 'testSimple7_amp:1.4'.
	self
		assert: tmp_w3JsIYSJd03 toObjects size
		equals: 0
		description: 'testSimple7_amp:1.5'.
	self
		assert: tmp_w3JsIYSJd03 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:1.6'.
	self
		assert: tmp_w3JsIYSJd03 controlPoints
		equals: nil
		description: 'testSimple7_amp:1.7'.
	self
		assert: tmp_w3JsIYSJd03 toElements class
		equals: Array
		description: 'testSimple7_amp:1.8'.
	self
		assert: tmp_w3JsIYSJd03 toElements size
		equals: 0
		description: 'testSimple7_amp:1.9'.
	self
		assert: tmp_w3JsIYSJd03 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:1.10'.
	self
		assert: tmp_w3JsIYSJd03 view
		equals: nil
		description: 'testSimple7_amp:1.11'.
	self
		assert: tmp_w3JsIYSJd03 fromElements class
		equals: Array
		description: 'testSimple7_amp:1.12'.
	self
		assert: tmp_w3JsIYSJd03 fromElements size
		equals: 0
		description: 'testSimple7_amp:1.13'.
	self
		assert: tmp_w3JsIYSJd03 fromObjects class
		equals: Array
		description: 'testSimple7_amp:1.14'.
	self
		assert: tmp_w3JsIYSJd03 fromObjects size
		equals: 0
		description: 'testSimple7_amp:1.15'.
	self
		assert: tmp_w3JsIYSJd03 viewElements class
		equals: Array
		description: 'testSimple7_amp:1.16'.
	self
		assert: tmp_w3JsIYSJd03 viewElements size
		equals: 0
		description: 'testSimple7_amp:1.17'.
	tmp_w3JsIYSJd03 view: view.
	self
		assert: tmp_w3JsIYSJd03 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:2.1'.
	self
		assert: tmp_w3JsIYSJd03 isBidirectional class
		equals: True
		description: 'testSimple7_amp:2.2'.
	self
		assert: tmp_w3JsIYSJd03 isBidirectional
		equals: true
		description: 'testSimple7_amp:2.3'.
	self
		assert: tmp_w3JsIYSJd03 toObjects class
		equals: TSGroup
		description: 'testSimple7_amp:2.4'.
	self
		assert: tmp_w3JsIYSJd03 toObjects size
		equals: 10
		description: 'testSimple7_amp:2.5'.
	self
		assert: tmp_w3JsIYSJd03 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:2.6'.
	self
		assert: tmp_w3JsIYSJd03 controlPoints
		equals: nil
		description: 'testSimple7_amp:2.7'.
	self
		assert: tmp_w3JsIYSJd03 toElements class
		equals: TSGroup
		description: 'testSimple7_amp:2.8'.
	self
		assert: tmp_w3JsIYSJd03 toElements size
		equals: 10
		description: 'testSimple7_amp:2.9'.
	self
		assert: tmp_w3JsIYSJd03 view class
		equals: RSView
		description: 'testSimple7_amp:2.10'.
	self
		assert: tmp_w3JsIYSJd03 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple7_amp:2.11'.
	self
		assert: tmp_w3JsIYSJd03 view numberOfEdges
		equals: 0
		description: 'testSimple7_amp:2.12'.
	self
		assert: tmp_w3JsIYSJd03 fromElements class
		equals: TSGroup
		description: 'testSimple7_amp:2.13'.
	self
		assert: tmp_w3JsIYSJd03 fromElements size
		equals: 10
		description: 'testSimple7_amp:2.14'.
	self
		assert: tmp_w3JsIYSJd03 fromObjects class
		equals: TSGroup
		description: 'testSimple7_amp:2.15'.
	self
		assert: tmp_w3JsIYSJd03 fromObjects size
		equals: 10
		description: 'testSimple7_amp:2.16'.
	self
		assert: tmp_w3JsIYSJd03 viewElements class
		equals: TSGroup
		description: 'testSimple7_amp:2.17'.
	self
		assert: tmp_w3JsIYSJd03 viewElements size
		equals: 10
		description: 'testSimple7_amp:2.18'.
	tmp_T4tXHYPm2Y5 := RSEdgeBuilder line.
	self
		assert: tmp_T4tXHYPm2Y5 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:3.1'.
	self
		assert: tmp_T4tXHYPm2Y5 isBidirectional class
		equals: True
		description: 'testSimple7_amp:3.2'.
	self
		assert: tmp_T4tXHYPm2Y5 isBidirectional
		equals: true
		description: 'testSimple7_amp:3.3'.
	self
		assert: tmp_T4tXHYPm2Y5 toObjects class
		equals: Array
		description: 'testSimple7_amp:3.4'.
	self
		assert: tmp_T4tXHYPm2Y5 toObjects size
		equals: 0
		description: 'testSimple7_amp:3.5'.
	self
		assert: tmp_T4tXHYPm2Y5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:3.6'.
	self
		assert: tmp_T4tXHYPm2Y5 controlPoints
		equals: nil
		description: 'testSimple7_amp:3.7'.
	self
		assert: tmp_T4tXHYPm2Y5 toElements class
		equals: Array
		description: 'testSimple7_amp:3.8'.
	self
		assert: tmp_T4tXHYPm2Y5 toElements size
		equals: 0
		description: 'testSimple7_amp:3.9'.
	self
		assert: tmp_T4tXHYPm2Y5 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:3.10'.
	self
		assert: tmp_T4tXHYPm2Y5 view
		equals: nil
		description: 'testSimple7_amp:3.11'.
	self
		assert: tmp_T4tXHYPm2Y5 fromElements class
		equals: Array
		description: 'testSimple7_amp:3.12'.
	self
		assert: tmp_T4tXHYPm2Y5 fromElements size
		equals: 0
		description: 'testSimple7_amp:3.13'.
	self
		assert: tmp_T4tXHYPm2Y5 fromObjects class
		equals: Array
		description: 'testSimple7_amp:3.14'.
	self
		assert: tmp_T4tXHYPm2Y5 fromObjects size
		equals: 0
		description: 'testSimple7_amp:3.15'.
	self
		assert: tmp_T4tXHYPm2Y5 viewElements class
		equals: Array
		description: 'testSimple7_amp:3.16'.
	self
		assert: tmp_T4tXHYPm2Y5 viewElements size
		equals: 0
		description: 'testSimple7_amp:3.17'.
	self
		should: [ tmp_T4tXHYPm2Y5 useAssociation: 1 -> 2 ]
		raise: MessageNotUnderstood
		description: 'testSimple7_amp:4.1'.
	tmp_pAL4zZal7L7 := RSEdgeBuilder line.
	self
		assert: tmp_pAL4zZal7L7 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:5.1'.
	self
		assert: tmp_pAL4zZal7L7 isBidirectional class
		equals: True
		description: 'testSimple7_amp:5.2'.
	self
		assert: tmp_pAL4zZal7L7 isBidirectional
		equals: true
		description: 'testSimple7_amp:5.3'.
	self
		assert: tmp_pAL4zZal7L7 toObjects class
		equals: Array
		description: 'testSimple7_amp:5.4'.
	self
		assert: tmp_pAL4zZal7L7 toObjects size
		equals: 0
		description: 'testSimple7_amp:5.5'.
	self
		assert: tmp_pAL4zZal7L7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:5.6'.
	self
		assert: tmp_pAL4zZal7L7 controlPoints
		equals: nil
		description: 'testSimple7_amp:5.7'.
	self
		assert: tmp_pAL4zZal7L7 toElements class
		equals: Array
		description: 'testSimple7_amp:5.8'.
	self
		assert: tmp_pAL4zZal7L7 toElements size
		equals: 0
		description: 'testSimple7_amp:5.9'.
	self
		assert: tmp_pAL4zZal7L7 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:5.10'.
	self
		assert: tmp_pAL4zZal7L7 view
		equals: nil
		description: 'testSimple7_amp:5.11'.
	self
		assert: tmp_pAL4zZal7L7 fromElements class
		equals: Array
		description: 'testSimple7_amp:5.12'.
	self
		assert: tmp_pAL4zZal7L7 fromElements size
		equals: 0
		description: 'testSimple7_amp:5.13'.
	self
		assert: tmp_pAL4zZal7L7 fromObjects class
		equals: Array
		description: 'testSimple7_amp:5.14'.
	self
		assert: tmp_pAL4zZal7L7 fromObjects size
		equals: 0
		description: 'testSimple7_amp:5.15'.
	self
		assert: tmp_pAL4zZal7L7 viewElements class
		equals: Array
		description: 'testSimple7_amp:5.16'.
	self
		assert: tmp_pAL4zZal7L7 viewElements size
		equals: 0
		description: 'testSimple7_amp:5.17'.
	self
		should: [ tmp_pAL4zZal7L7 useAssociation: 2 -> 3 ]
		raise: MessageNotUnderstood
		description: 'testSimple7_amp:6.1'.
	tmp_W3NqHRmWRZ8 := RSEdgeBuilder line.
	self
		assert: tmp_W3NqHRmWRZ8 class
		equals: RSEdgeBuilder
		description: 'testSimple7_amp:7.1'.
	self
		assert: tmp_W3NqHRmWRZ8 isBidirectional class
		equals: True
		description: 'testSimple7_amp:7.2'.
	self
		assert: tmp_W3NqHRmWRZ8 isBidirectional
		equals: true
		description: 'testSimple7_amp:7.3'.
	self
		assert: tmp_W3NqHRmWRZ8 toObjects class
		equals: Array
		description: 'testSimple7_amp:7.4'.
	self
		assert: tmp_W3NqHRmWRZ8 toObjects size
		equals: 0
		description: 'testSimple7_amp:7.5'.
	self
		assert: tmp_W3NqHRmWRZ8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7_amp:7.6'.
	self
		assert: tmp_W3NqHRmWRZ8 controlPoints
		equals: nil
		description: 'testSimple7_amp:7.7'.
	self
		assert: tmp_W3NqHRmWRZ8 toElements class
		equals: Array
		description: 'testSimple7_amp:7.8'.
	self
		assert: tmp_W3NqHRmWRZ8 toElements size
		equals: 0
		description: 'testSimple7_amp:7.9'.
	self
		assert: tmp_W3NqHRmWRZ8 view class
		equals: UndefinedObject
		description: 'testSimple7_amp:7.10'.
	self
		assert: tmp_W3NqHRmWRZ8 view
		equals: nil
		description: 'testSimple7_amp:7.11'.
	self
		assert: tmp_W3NqHRmWRZ8 fromElements class
		equals: Array
		description: 'testSimple7_amp:7.12'.
	self
		assert: tmp_W3NqHRmWRZ8 fromElements size
		equals: 0
		description: 'testSimple7_amp:7.13'.
	self
		assert: tmp_W3NqHRmWRZ8 fromObjects class
		equals: Array
		description: 'testSimple7_amp:7.14'.
	self
		assert: tmp_W3NqHRmWRZ8 fromObjects size
		equals: 0
		description: 'testSimple7_amp:7.15'.
	self
		assert: tmp_W3NqHRmWRZ8 viewElements class
		equals: Array
		description: 'testSimple7_amp:7.16'.
	self
		assert: tmp_W3NqHRmWRZ8 viewElements size
		equals: 0
		description: 'testSimple7_amp:7.17'.
	self
		should: [ tmp_W3NqHRmWRZ8 useAssociation: 5 -> 6 ]
		raise: MessageNotUnderstood
		description: 'testSimple7_amp:8.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple_amp [
	<madeBySmallAmp>
	| tmp_XIUy1W08vc3 tmp_szWSOnQSmv4 |
	tmp_XIUy1W08vc3 := RSEdgeBuilder line.
	self
		assert: tmp_XIUy1W08vc3 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:1.1'.
	self
		assert: tmp_XIUy1W08vc3 isBidirectional class
		equals: True
		description: 'testSimple_amp:1.2'.
	self
		assert: tmp_XIUy1W08vc3 isBidirectional
		equals: true
		description: 'testSimple_amp:1.3'.
	self
		assert: tmp_XIUy1W08vc3 toObjects class
		equals: Array
		description: 'testSimple_amp:1.4'.
	self
		assert: tmp_XIUy1W08vc3 toObjects size
		equals: 0
		description: 'testSimple_amp:1.5'.
	self
		assert: tmp_XIUy1W08vc3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:1.6'.
	self
		assert: tmp_XIUy1W08vc3 controlPoints
		equals: nil
		description: 'testSimple_amp:1.7'.
	self
		assert: tmp_XIUy1W08vc3 toElements class
		equals: Array
		description: 'testSimple_amp:1.8'.
	self
		assert: tmp_XIUy1W08vc3 toElements size
		equals: 0
		description: 'testSimple_amp:1.9'.
	self
		assert: tmp_XIUy1W08vc3 view class
		equals: UndefinedObject
		description: 'testSimple_amp:1.10'.
	self
		assert: tmp_XIUy1W08vc3 view
		equals: nil
		description: 'testSimple_amp:1.11'.
	self
		assert: tmp_XIUy1W08vc3 fromElements class
		equals: Array
		description: 'testSimple_amp:1.12'.
	self
		assert: tmp_XIUy1W08vc3 fromElements size
		equals: 0
		description: 'testSimple_amp:1.13'.
	self
		assert: tmp_XIUy1W08vc3 fromObjects class
		equals: Array
		description: 'testSimple_amp:1.14'.
	self
		assert: tmp_XIUy1W08vc3 fromObjects size
		equals: 0
		description: 'testSimple_amp:1.15'.
	self
		assert: tmp_XIUy1W08vc3 viewElements class
		equals: Array
		description: 'testSimple_amp:1.16'.
	self
		assert: tmp_XIUy1W08vc3 viewElements size
		equals: 0
		description: 'testSimple_amp:1.17'.
	tmp_XIUy1W08vc3 view: view.
	self
		assert: tmp_XIUy1W08vc3 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:2.1'.
	self
		assert: tmp_XIUy1W08vc3 isBidirectional class
		equals: True
		description: 'testSimple_amp:2.2'.
	self
		assert: tmp_XIUy1W08vc3 isBidirectional
		equals: true
		description: 'testSimple_amp:2.3'.
	self
		assert: tmp_XIUy1W08vc3 toObjects class
		equals: TSGroup
		description: 'testSimple_amp:2.4'.
	self
		assert: tmp_XIUy1W08vc3 toObjects size
		equals: 10
		description: 'testSimple_amp:2.5'.
	self
		assert: tmp_XIUy1W08vc3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:2.6'.
	self
		assert: tmp_XIUy1W08vc3 controlPoints
		equals: nil
		description: 'testSimple_amp:2.7'.
	self
		assert: tmp_XIUy1W08vc3 toElements class
		equals: TSGroup
		description: 'testSimple_amp:2.8'.
	self
		assert: tmp_XIUy1W08vc3 toElements size
		equals: 10
		description: 'testSimple_amp:2.9'.
	self
		assert: tmp_XIUy1W08vc3 view class
		equals: RSView
		description: 'testSimple_amp:2.10'.
	self
		assert: tmp_XIUy1W08vc3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple_amp:2.11'.
	self
		assert: tmp_XIUy1W08vc3 view numberOfEdges
		equals: 0
		description: 'testSimple_amp:2.12'.
	self
		assert: tmp_XIUy1W08vc3 fromElements class
		equals: TSGroup
		description: 'testSimple_amp:2.13'.
	self
		assert: tmp_XIUy1W08vc3 fromElements size
		equals: 10
		description: 'testSimple_amp:2.14'.
	self
		assert: tmp_XIUy1W08vc3 fromObjects class
		equals: TSGroup
		description: 'testSimple_amp:2.15'.
	self
		assert: tmp_XIUy1W08vc3 fromObjects size
		equals: 10
		description: 'testSimple_amp:2.16'.
	self
		assert: tmp_XIUy1W08vc3 viewElements class
		equals: TSGroup
		description: 'testSimple_amp:2.17'.
	self
		assert: tmp_XIUy1W08vc3 viewElements size
		equals: 10
		description: 'testSimple_amp:2.18'.
	tmp_szWSOnQSmv4 := RSEdgeBuilder line.
	self
		assert: tmp_szWSOnQSmv4 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:3.1'.
	self
		assert: tmp_szWSOnQSmv4 isBidirectional class
		equals: True
		description: 'testSimple_amp:3.2'.
	self
		assert: tmp_szWSOnQSmv4 isBidirectional
		equals: true
		description: 'testSimple_amp:3.3'.
	self
		assert: tmp_szWSOnQSmv4 toObjects class
		equals: Array
		description: 'testSimple_amp:3.4'.
	self
		assert: tmp_szWSOnQSmv4 toObjects size
		equals: 0
		description: 'testSimple_amp:3.5'.
	self
		assert: tmp_szWSOnQSmv4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:3.6'.
	self
		assert: tmp_szWSOnQSmv4 controlPoints
		equals: nil
		description: 'testSimple_amp:3.7'.
	self
		assert: tmp_szWSOnQSmv4 toElements class
		equals: Array
		description: 'testSimple_amp:3.8'.
	self
		assert: tmp_szWSOnQSmv4 toElements size
		equals: 0
		description: 'testSimple_amp:3.9'.
	self
		assert: tmp_szWSOnQSmv4 view class
		equals: UndefinedObject
		description: 'testSimple_amp:3.10'.
	self
		assert: tmp_szWSOnQSmv4 view
		equals: nil
		description: 'testSimple_amp:3.11'.
	self
		assert: tmp_szWSOnQSmv4 fromElements class
		equals: Array
		description: 'testSimple_amp:3.12'.
	self
		assert: tmp_szWSOnQSmv4 fromElements size
		equals: 0
		description: 'testSimple_amp:3.13'.
	self
		assert: tmp_szWSOnQSmv4 fromObjects class
		equals: Array
		description: 'testSimple_amp:3.14'.
	self
		assert: tmp_szWSOnQSmv4 fromObjects size
		equals: 0
		description: 'testSimple_amp:3.15'.
	self
		assert: tmp_szWSOnQSmv4 viewElements class
		equals: Array
		description: 'testSimple_amp:3.16'.
	self
		assert: tmp_szWSOnQSmv4 viewElements size
		equals: 0
		description: 'testSimple_amp:3.17'.
	tmp_szWSOnQSmv4
		useElementAssociations:
			(Array
				with: elements first -> elements second
				with: elements second -> elements third).
	self
		assert: tmp_szWSOnQSmv4 class
		equals: RSEdgeBuilder
		description: 'testSimple_amp:4.1'.
	self
		assert: tmp_szWSOnQSmv4 isBidirectional class
		equals: True
		description: 'testSimple_amp:4.2'.
	self
		assert: tmp_szWSOnQSmv4 isBidirectional
		equals: true
		description: 'testSimple_amp:4.3'.
	self
		assert: tmp_szWSOnQSmv4 toObjects class
		equals: Array
		description: 'testSimple_amp:4.4'.
	self
		assert: tmp_szWSOnQSmv4 toObjects size
		equals: 0
		description: 'testSimple_amp:4.5'.
	self
		assert: tmp_szWSOnQSmv4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple_amp:4.6'.
	self
		assert: tmp_szWSOnQSmv4 controlPoints
		equals: nil
		description: 'testSimple_amp:4.7'.
	self
		assert: tmp_szWSOnQSmv4 toElements class
		equals: Array
		description: 'testSimple_amp:4.8'.
	self
		assert: tmp_szWSOnQSmv4 toElements size
		equals: 0
		description: 'testSimple_amp:4.9'.
	self
		assert: tmp_szWSOnQSmv4 view class
		equals: UndefinedObject
		description: 'testSimple_amp:4.10'.
	self
		assert: tmp_szWSOnQSmv4 view
		equals: nil
		description: 'testSimple_amp:4.11'.
	self
		assert: tmp_szWSOnQSmv4 fromElements class
		equals: Array
		description: 'testSimple_amp:4.12'.
	self
		assert: tmp_szWSOnQSmv4 fromElements size
		equals: 0
		description: 'testSimple_amp:4.13'.
	self
		assert: tmp_szWSOnQSmv4 fromObjects class
		equals: Array
		description: 'testSimple_amp:4.14'.
	self
		assert: tmp_szWSOnQSmv4 fromObjects size
		equals: 0
		description: 'testSimple_amp:4.15'.
	self
		assert: tmp_szWSOnQSmv4 viewElements class
		equals: Array
		description: 'testSimple_amp:4.16'.
	self
		assert: tmp_szWSOnQSmv4 viewElements size
		equals: 0
		description: 'testSimple_amp:4.17'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSource_amp [
	<madeBySmallAmp>
	| v es eb c tmp_85HGeJ9p9Q4 tmp_YMg7vslTOS5 tmp_xVckvdjllI6 |
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
	tmp_85HGeJ9p9Q4 := c add: 1 -> 2.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource_amp:7.1'.
	self assert: c size equals: 1 description: 'testSource_amp:7.2'.
	self
		assert: tmp_85HGeJ9p9Q4 class
		equals: Association
		description: 'testSource_amp:7.1'.
	self
		assert: tmp_85HGeJ9p9Q4 needsFullDefinition class
		equals: False
		description: 'testSource_amp:7.2'.
	self
		assert: tmp_85HGeJ9p9Q4 needsFullDefinition
		equals: false
		description: 'testSource_amp:7.3'.
	tmp_YMg7vslTOS5 := c add: 3 -> 1.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource_amp:8.1'.
	self assert: c size equals: 2 description: 'testSource_amp:8.2'.
	self
		assert: tmp_YMg7vslTOS5 class
		equals: Association
		description: 'testSource_amp:8.1'.
	self
		assert: tmp_YMg7vslTOS5 needsFullDefinition class
		equals: False
		description: 'testSource_amp:8.2'.
	self
		assert: tmp_YMg7vslTOS5 needsFullDefinition
		equals: false
		description: 'testSource_amp:8.3'.
	tmp_xVckvdjllI6 := eb source: c connectFrom: #key to: #value.
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
		assert: tmp_xVckvdjllI6 class
		equals: TSGroup
		description: 'testSource_amp:9.1'.
	self
		assert: tmp_xVckvdjllI6 size
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
	| tmp_yC5bIoUte43 |
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
	tmp_yC5bIoUte43 := b connectFrom: #yourself to: 10.
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
		assert: tmp_yC5bIoUte43 class
		equals: TSGroup
		description: 'testToObjects_amp:3.1'.
	self
		assert: tmp_yC5bIoUte43 size
		equals: 0
		description: 'testToObjects_amp:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testUseInLayoutDefault_amp [
	<madeBySmallAmp>
	| tmp_BUZj7xdbuT3 |
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
	tmp_BUZj7xdbuT3 := TSTreeLayout on: view elements.
	self
		assert: tmp_BUZj7xdbuT3 class
		equals: TSGroup
		description: 'testUseInLayoutDefault_amp:2.1'.
	self
		assert: tmp_BUZj7xdbuT3 size
		equals: 10
		description: 'testUseInLayoutDefault_amp:2.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testUseInLayout_amp [
	<madeBySmallAmp>
	| tmp_guIsFEWVrH1 tmp_RLGc2ZYvIu4 |
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
	tmp_RLGc2ZYvIu4 := TSTreeLayout on: view elements.
	self
		assert: tmp_RLGc2ZYvIu4 class
		equals: TSGroup
		description: 'testUseInLayout_amp:2.1'.
	self
		assert: tmp_RLGc2ZYvIu4 size
		equals: 10
		description: 'testUseInLayout_amp:2.2'.
	tmp_guIsFEWVrH1 := b connectTo: [ :v | v + 1 ].
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
		assert: tmp_guIsFEWVrH1 class
		equals: TSGroup
		description: 'testUseInLayout_amp:3.1'.
	self
		assert: tmp_guIsFEWVrH1 size
		equals: 9
		description: 'testUseInLayout_amp:3.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testWithMoveBehind02_amp [
	<madeBySmallAmp>
	| tmp_t1lFohyNLM1 tmp_A1BKQgaVYy3 tmp_UmzDPTiJdm5 tmp_gia9r2bN596 |
	tmp_A1BKQgaVYy3 := RSEdgeBuilder new.
	self
		assert: tmp_A1BKQgaVYy3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:1.1'.
	self
		assert: tmp_A1BKQgaVYy3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:1.2'.
	self
		assert: tmp_A1BKQgaVYy3 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:1.3'.
	self
		assert: tmp_A1BKQgaVYy3 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.4'.
	self
		assert: tmp_A1BKQgaVYy3 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.5'.
	self
		assert: tmp_A1BKQgaVYy3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:1.6'.
	self
		assert: tmp_A1BKQgaVYy3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:1.7'.
	self
		assert: tmp_A1BKQgaVYy3 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.8'.
	self
		assert: tmp_A1BKQgaVYy3 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.9'.
	self
		assert: tmp_A1BKQgaVYy3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:1.10'.
	self
		assert: tmp_A1BKQgaVYy3 view
		equals: nil
		description: 'testWithMoveBehind02_amp:1.11'.
	self
		assert: tmp_A1BKQgaVYy3 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.12'.
	self
		assert: tmp_A1BKQgaVYy3 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.13'.
	self
		assert: tmp_A1BKQgaVYy3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.14'.
	self
		assert: tmp_A1BKQgaVYy3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.15'.
	self
		assert: tmp_A1BKQgaVYy3 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:1.16'.
	self
		assert: tmp_A1BKQgaVYy3 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:1.17'.
	tmp_A1BKQgaVYy3 view: view.
	self
		assert: tmp_A1BKQgaVYy3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:2.1'.
	self
		assert: tmp_A1BKQgaVYy3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:2.2'.
	self
		assert: tmp_A1BKQgaVYy3 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:2.3'.
	self
		assert: tmp_A1BKQgaVYy3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.4'.
	self
		assert: tmp_A1BKQgaVYy3 toObjects size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.5'.
	self
		assert: tmp_A1BKQgaVYy3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:2.6'.
	self
		assert: tmp_A1BKQgaVYy3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:2.7'.
	self
		assert: tmp_A1BKQgaVYy3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.8'.
	self
		assert: tmp_A1BKQgaVYy3 toElements size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.9'.
	self
		assert: tmp_A1BKQgaVYy3 view class
		equals: RSView
		description: 'testWithMoveBehind02_amp:2.10'.
	self
		assert: tmp_A1BKQgaVYy3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind02_amp:2.11'.
	self
		assert: tmp_A1BKQgaVYy3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind02_amp:2.12'.
	self
		assert: tmp_A1BKQgaVYy3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.13'.
	self
		assert: tmp_A1BKQgaVYy3 fromElements size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.14'.
	self
		assert: tmp_A1BKQgaVYy3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.15'.
	self
		assert: tmp_A1BKQgaVYy3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.16'.
	self
		assert: tmp_A1BKQgaVYy3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:2.17'.
	self
		assert: tmp_A1BKQgaVYy3 viewElements size
		equals: 10
		description: 'testWithMoveBehind02_amp:2.18'.
	tmp_UmzDPTiJdm5 := RSEdgeBuilder new.
	self
		assert: tmp_UmzDPTiJdm5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:3.1'.
	self
		assert: tmp_UmzDPTiJdm5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:3.2'.
	self
		assert: tmp_UmzDPTiJdm5 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:3.3'.
	self
		assert: tmp_UmzDPTiJdm5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.4'.
	self
		assert: tmp_UmzDPTiJdm5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.5'.
	self
		assert: tmp_UmzDPTiJdm5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:3.6'.
	self
		assert: tmp_UmzDPTiJdm5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:3.7'.
	self
		assert: tmp_UmzDPTiJdm5 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.8'.
	self
		assert: tmp_UmzDPTiJdm5 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.9'.
	self
		assert: tmp_UmzDPTiJdm5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:3.10'.
	self
		assert: tmp_UmzDPTiJdm5 view
		equals: nil
		description: 'testWithMoveBehind02_amp:3.11'.
	self
		assert: tmp_UmzDPTiJdm5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.12'.
	self
		assert: tmp_UmzDPTiJdm5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.13'.
	self
		assert: tmp_UmzDPTiJdm5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.14'.
	self
		assert: tmp_UmzDPTiJdm5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.15'.
	self
		assert: tmp_UmzDPTiJdm5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:3.16'.
	self
		assert: tmp_UmzDPTiJdm5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:3.17'.
	tmp_UmzDPTiJdm5 moveBehind.
	self
		assert: tmp_UmzDPTiJdm5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:4.1'.
	self
		assert: tmp_UmzDPTiJdm5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:4.2'.
	self
		assert: tmp_UmzDPTiJdm5 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:4.3'.
	self
		assert: tmp_UmzDPTiJdm5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.4'.
	self
		assert: tmp_UmzDPTiJdm5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.5'.
	self
		assert: tmp_UmzDPTiJdm5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:4.6'.
	self
		assert: tmp_UmzDPTiJdm5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:4.7'.
	self
		assert: tmp_UmzDPTiJdm5 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.8'.
	self
		assert: tmp_UmzDPTiJdm5 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.9'.
	self
		assert: tmp_UmzDPTiJdm5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:4.10'.
	self
		assert: tmp_UmzDPTiJdm5 view
		equals: nil
		description: 'testWithMoveBehind02_amp:4.11'.
	self
		assert: tmp_UmzDPTiJdm5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.12'.
	self
		assert: tmp_UmzDPTiJdm5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.13'.
	self
		assert: tmp_UmzDPTiJdm5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.14'.
	self
		assert: tmp_UmzDPTiJdm5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.15'.
	self
		assert: tmp_UmzDPTiJdm5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:4.16'.
	self
		assert: tmp_UmzDPTiJdm5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:4.17'.
	tmp_gia9r2bN596 := RSEdgeBuilder new.
	self
		assert: tmp_gia9r2bN596 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:5.1'.
	self
		assert: tmp_gia9r2bN596 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:5.2'.
	self
		assert: tmp_gia9r2bN596 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:5.3'.
	self
		assert: tmp_gia9r2bN596 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.4'.
	self
		assert: tmp_gia9r2bN596 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.5'.
	self
		assert: tmp_gia9r2bN596 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:5.6'.
	self
		assert: tmp_gia9r2bN596 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:5.7'.
	self
		assert: tmp_gia9r2bN596 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.8'.
	self
		assert: tmp_gia9r2bN596 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.9'.
	self
		assert: tmp_gia9r2bN596 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:5.10'.
	self
		assert: tmp_gia9r2bN596 view
		equals: nil
		description: 'testWithMoveBehind02_amp:5.11'.
	self
		assert: tmp_gia9r2bN596 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.12'.
	self
		assert: tmp_gia9r2bN596 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.13'.
	self
		assert: tmp_gia9r2bN596 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.14'.
	self
		assert: tmp_gia9r2bN596 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.15'.
	self
		assert: tmp_gia9r2bN596 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:5.16'.
	self
		assert: tmp_gia9r2bN596 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:5.17'.
	tmp_t1lFohyNLM1 := tmp_gia9r2bN596 connectFrom: [ :v | v - 1 ].
	self
		assert: tmp_gia9r2bN596 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02_amp:6.1'.
	self
		assert: tmp_gia9r2bN596 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02_amp:6.2'.
	self
		assert: tmp_gia9r2bN596 isBidirectional
		equals: true
		description: 'testWithMoveBehind02_amp:6.3'.
	self
		assert: tmp_gia9r2bN596 toObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.4'.
	self
		assert: tmp_gia9r2bN596 toObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.5'.
	self
		assert: tmp_gia9r2bN596 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:6.6'.
	self
		assert: tmp_gia9r2bN596 controlPoints
		equals: nil
		description: 'testWithMoveBehind02_amp:6.7'.
	self
		assert: tmp_gia9r2bN596 toElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.8'.
	self
		assert: tmp_gia9r2bN596 toElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.9'.
	self
		assert: tmp_gia9r2bN596 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02_amp:6.10'.
	self
		assert: tmp_gia9r2bN596 view
		equals: nil
		description: 'testWithMoveBehind02_amp:6.11'.
	self
		assert: tmp_gia9r2bN596 fromElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.12'.
	self
		assert: tmp_gia9r2bN596 fromElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.13'.
	self
		assert: tmp_gia9r2bN596 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.14'.
	self
		assert: tmp_gia9r2bN596 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.15'.
	self
		assert: tmp_gia9r2bN596 viewElements class
		equals: Array
		description: 'testWithMoveBehind02_amp:6.16'.
	self
		assert: tmp_gia9r2bN596 viewElements size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.17'.
	self
		assert: tmp_t1lFohyNLM1 class
		equals: TSGroup
		description: 'testWithMoveBehind02_amp:6.1'.
	self
		assert: tmp_t1lFohyNLM1 size
		equals: 0
		description: 'testWithMoveBehind02_amp:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testWithMoveBehind_amp [
	<madeBySmallAmp>
	| tmp_q756OLWhHF3 tmp_uu2p9ZzD535 tmp_xkbytoEg1o6 |
	tmp_q756OLWhHF3 := RSEdgeBuilder new.
	self
		assert: tmp_q756OLWhHF3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:1.1'.
	self
		assert: tmp_q756OLWhHF3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:1.2'.
	self
		assert: tmp_q756OLWhHF3 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:1.3'.
	self
		assert: tmp_q756OLWhHF3 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:1.4'.
	self
		assert: tmp_q756OLWhHF3 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:1.5'.
	self
		assert: tmp_q756OLWhHF3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:1.6'.
	self
		assert: tmp_q756OLWhHF3 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:1.7'.
	self
		assert: tmp_q756OLWhHF3 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:1.8'.
	self
		assert: tmp_q756OLWhHF3 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:1.9'.
	self
		assert: tmp_q756OLWhHF3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:1.10'.
	self
		assert: tmp_q756OLWhHF3 view
		equals: nil
		description: 'testWithMoveBehind_amp:1.11'.
	self
		assert: tmp_q756OLWhHF3 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:1.12'.
	self
		assert: tmp_q756OLWhHF3 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:1.13'.
	self
		assert: tmp_q756OLWhHF3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:1.14'.
	self
		assert: tmp_q756OLWhHF3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:1.15'.
	self
		assert: tmp_q756OLWhHF3 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:1.16'.
	self
		assert: tmp_q756OLWhHF3 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:1.17'.
	tmp_q756OLWhHF3 view: view.
	self
		assert: tmp_q756OLWhHF3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:2.1'.
	self
		assert: tmp_q756OLWhHF3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:2.2'.
	self
		assert: tmp_q756OLWhHF3 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:2.3'.
	self
		assert: tmp_q756OLWhHF3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.4'.
	self
		assert: tmp_q756OLWhHF3 toObjects size
		equals: 10
		description: 'testWithMoveBehind_amp:2.5'.
	self
		assert: tmp_q756OLWhHF3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:2.6'.
	self
		assert: tmp_q756OLWhHF3 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:2.7'.
	self
		assert: tmp_q756OLWhHF3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.8'.
	self
		assert: tmp_q756OLWhHF3 toElements size
		equals: 10
		description: 'testWithMoveBehind_amp:2.9'.
	self
		assert: tmp_q756OLWhHF3 view class
		equals: RSView
		description: 'testWithMoveBehind_amp:2.10'.
	self
		assert: tmp_q756OLWhHF3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind_amp:2.11'.
	self
		assert: tmp_q756OLWhHF3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind_amp:2.12'.
	self
		assert: tmp_q756OLWhHF3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.13'.
	self
		assert: tmp_q756OLWhHF3 fromElements size
		equals: 10
		description: 'testWithMoveBehind_amp:2.14'.
	self
		assert: tmp_q756OLWhHF3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.15'.
	self
		assert: tmp_q756OLWhHF3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind_amp:2.16'.
	self
		assert: tmp_q756OLWhHF3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind_amp:2.17'.
	self
		assert: tmp_q756OLWhHF3 viewElements size
		equals: 10
		description: 'testWithMoveBehind_amp:2.18'.
	tmp_uu2p9ZzD535 := RSEdgeBuilder new.
	self
		assert: tmp_uu2p9ZzD535 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:3.1'.
	self
		assert: tmp_uu2p9ZzD535 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:3.2'.
	self
		assert: tmp_uu2p9ZzD535 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:3.3'.
	self
		assert: tmp_uu2p9ZzD535 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:3.4'.
	self
		assert: tmp_uu2p9ZzD535 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:3.5'.
	self
		assert: tmp_uu2p9ZzD535 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:3.6'.
	self
		assert: tmp_uu2p9ZzD535 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:3.7'.
	self
		assert: tmp_uu2p9ZzD535 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:3.8'.
	self
		assert: tmp_uu2p9ZzD535 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:3.9'.
	self
		assert: tmp_uu2p9ZzD535 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:3.10'.
	self
		assert: tmp_uu2p9ZzD535 view
		equals: nil
		description: 'testWithMoveBehind_amp:3.11'.
	self
		assert: tmp_uu2p9ZzD535 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:3.12'.
	self
		assert: tmp_uu2p9ZzD535 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:3.13'.
	self
		assert: tmp_uu2p9ZzD535 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:3.14'.
	self
		assert: tmp_uu2p9ZzD535 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:3.15'.
	self
		assert: tmp_uu2p9ZzD535 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:3.16'.
	self
		assert: tmp_uu2p9ZzD535 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:3.17'.
	tmp_uu2p9ZzD535 moveBehind.
	self
		assert: tmp_uu2p9ZzD535 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:4.1'.
	self
		assert: tmp_uu2p9ZzD535 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:4.2'.
	self
		assert: tmp_uu2p9ZzD535 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:4.3'.
	self
		assert: tmp_uu2p9ZzD535 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:4.4'.
	self
		assert: tmp_uu2p9ZzD535 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:4.5'.
	self
		assert: tmp_uu2p9ZzD535 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:4.6'.
	self
		assert: tmp_uu2p9ZzD535 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:4.7'.
	self
		assert: tmp_uu2p9ZzD535 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:4.8'.
	self
		assert: tmp_uu2p9ZzD535 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:4.9'.
	self
		assert: tmp_uu2p9ZzD535 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:4.10'.
	self
		assert: tmp_uu2p9ZzD535 view
		equals: nil
		description: 'testWithMoveBehind_amp:4.11'.
	self
		assert: tmp_uu2p9ZzD535 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:4.12'.
	self
		assert: tmp_uu2p9ZzD535 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:4.13'.
	self
		assert: tmp_uu2p9ZzD535 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:4.14'.
	self
		assert: tmp_uu2p9ZzD535 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:4.15'.
	self
		assert: tmp_uu2p9ZzD535 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:4.16'.
	self
		assert: tmp_uu2p9ZzD535 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:4.17'.
	tmp_xkbytoEg1o6 := RSEdgeBuilder new.
	self
		assert: tmp_xkbytoEg1o6 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind_amp:5.1'.
	self
		assert: tmp_xkbytoEg1o6 isBidirectional class
		equals: True
		description: 'testWithMoveBehind_amp:5.2'.
	self
		assert: tmp_xkbytoEg1o6 isBidirectional
		equals: true
		description: 'testWithMoveBehind_amp:5.3'.
	self
		assert: tmp_xkbytoEg1o6 toObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:5.4'.
	self
		assert: tmp_xkbytoEg1o6 toObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:5.5'.
	self
		assert: tmp_xkbytoEg1o6 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:5.6'.
	self
		assert: tmp_xkbytoEg1o6 controlPoints
		equals: nil
		description: 'testWithMoveBehind_amp:5.7'.
	self
		assert: tmp_xkbytoEg1o6 toElements class
		equals: Array
		description: 'testWithMoveBehind_amp:5.8'.
	self
		assert: tmp_xkbytoEg1o6 toElements size
		equals: 0
		description: 'testWithMoveBehind_amp:5.9'.
	self
		assert: tmp_xkbytoEg1o6 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind_amp:5.10'.
	self
		assert: tmp_xkbytoEg1o6 view
		equals: nil
		description: 'testWithMoveBehind_amp:5.11'.
	self
		assert: tmp_xkbytoEg1o6 fromElements class
		equals: Array
		description: 'testWithMoveBehind_amp:5.12'.
	self
		assert: tmp_xkbytoEg1o6 fromElements size
		equals: 0
		description: 'testWithMoveBehind_amp:5.13'.
	self
		assert: tmp_xkbytoEg1o6 fromObjects class
		equals: Array
		description: 'testWithMoveBehind_amp:5.14'.
	self
		assert: tmp_xkbytoEg1o6 fromObjects size
		equals: 0
		description: 'testWithMoveBehind_amp:5.15'.
	self
		assert: tmp_xkbytoEg1o6 viewElements class
		equals: Array
		description: 'testWithMoveBehind_amp:5.16'.
	self
		assert: tmp_xkbytoEg1o6 viewElements size
		equals: 0
		description: 'testWithMoveBehind_amp:5.17'.
	self
		should: [ tmp_xkbytoEg1o6
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
