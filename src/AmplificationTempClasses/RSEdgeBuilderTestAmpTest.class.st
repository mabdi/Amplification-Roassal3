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
RSEdgeBuilderTestAmpTest >> testAllowRepetitionAndUseAssociations [
	<madeBySmallAmp>
	| v eb tmp_vp3J4125zZ5 tmp_fYUZ1IsLkH6 |
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:1.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAllowRepetitionAndUseAssociations:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:1.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAllowRepetitionAndUseAssociations:1.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations:1.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testAllowRepetitionAndUseAssociations:1.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:1.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:1.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:1.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations:1.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testAllowRepetitionAndUseAssociations:1.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:1.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations:1.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testAllowRepetitionAndUseAssociations:1.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:1.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.21'.
	v addAll: (RSShapeBuilder box elementsOn: (1 to: 3)).
	self
		assert: v class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:2.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:2.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:2.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testAllowRepetitionAndUseAssociations:2.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:2.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:2.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testAllowRepetitionAndUseAssociations:2.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations:2.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testAllowRepetitionAndUseAssociations:2.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:2.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:2.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:2.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:2.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testAllowRepetitionAndUseAssociations:2.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testAllowRepetitionAndUseAssociations:2.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:2.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:2.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations:2.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testAllowRepetitionAndUseAssociations:2.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:2.20'.
	self
		assert: v elements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:2.21'.
	eb := RSEdgeBuilder line.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:3.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations:3.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations:3.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.4'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:3.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:3.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.8'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:3.10'.
	self
		assert: eb view
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:3.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.17'.
	eb view: v.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:4.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations:4.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations:4.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:4.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:4.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:4.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:4.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:4.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.18'.
	eb color: (Color red alpha: 0.5).
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:5.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations:5.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations:5.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:5.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:5.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:5.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:5.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:5.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.18'.
	eb noRepetition.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:6.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations:6.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations:6.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:6.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:6.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:6.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:6.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:6.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.18'.
	tmp_vp3J4125zZ5 := eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:7.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testAllowRepetitionAndUseAssociations:7.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testAllowRepetitionAndUseAssociations:7.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:7.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:7.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:7.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:7.11'.
	self
		assert: eb view numberOfEdges
		equals: 2
		description: 'testAllowRepetitionAndUseAssociations:7.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.18'.
	self
		assert: tmp_vp3J4125zZ5 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.1'.
	self
		assert: tmp_vp3J4125zZ5 size
		equals: 2
		description: 'testAllowRepetitionAndUseAssociations:7.2'.
	tmp_fYUZ1IsLkH6 := TSGridLayout on: v elements.
	self
		assert: tmp_fYUZ1IsLkH6 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:8.1'.
	self
		assert: tmp_fYUZ1IsLkH6 size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testConnectFrom [
	<madeBySmallAmp>
	| e tmp_ArvRpglQ3C3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectFrom:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectFrom:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectFrom:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectFrom:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectFrom:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectFrom:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectFrom:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectFrom:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectFrom:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectFrom:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectFrom:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectFrom:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectFrom:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectFrom:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom:2.18'.
	tmp_ArvRpglQ3C3 := b connectFrom: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectFrom:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectFrom:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectFrom:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectFrom:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testConnectFrom:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectFrom:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectFrom:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom:3.18'.
	self
		assert: tmp_ArvRpglQ3C3 class
		equals: TSGroup
		description: 'testConnectFrom:3.1'.
	self
		assert: tmp_ArvRpglQ3C3 size
		equals: 1
		description: 'testConnectFrom:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testConnectFrom:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testConnectFrom:4.2'.
	self
		assert: e class
		equals: RSEdge
		description: 'testConnectFrom:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testConnectFrom:4.2'.
	self assert: e isEdge equals: true description: 'testConnectFrom:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testConnectFrom:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testConnectFrom:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testConnectFrom:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testConnectFrom:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testConnectFrom:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testConnectFrom:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testConnectFrom:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testConnectFrom:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testConnectTo [
	<madeBySmallAmp>
	| e tmp_J6fDRtz6dU3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectTo:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectTo:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectTo:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectTo:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectTo:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectTo:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectTo:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectTo:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectTo:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectTo:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectTo:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectTo:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectTo:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectTo:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo:2.18'.
	tmp_J6fDRtz6dU3 := b connectTo: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectTo:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectTo:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectTo:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectTo:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testConnectTo:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectTo:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectTo:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo:3.18'.
	self
		assert: tmp_J6fDRtz6dU3 class
		equals: TSGroup
		description: 'testConnectTo:3.1'.
	self
		assert: tmp_J6fDRtz6dU3 size
		equals: 1
		description: 'testConnectTo:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testConnectTo:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testConnectTo:4.2'.
	self assert: e class equals: RSEdge description: 'testConnectTo:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testConnectTo:4.2'.
	self assert: e isEdge equals: true description: 'testConnectTo:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testConnectTo:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testConnectTo:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testConnectTo:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testConnectTo:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testConnectTo:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testConnectTo:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testConnectTo:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testConnectTo:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testConnectToAll [
	<madeBySmallAmp>
	| eFrom eTo tmp_IUAwBuHd963 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectToAll:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectToAll:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectToAll:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectToAll:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectToAll:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectToAll:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectToAll:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll:1.18'.
	b objects: #(1 2 3).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectToAll:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectToAll:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll:2.4'.
	self
		assert: b toObjects size
		equals: 3
		description: 'testConnectToAll:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll:2.8'.
	self
		assert: b toElements size
		equals: 3
		description: 'testConnectToAll:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectToAll:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll:2.13'.
	self
		assert: b fromElements size
		equals: 3
		description: 'testConnectToAll:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll:2.15'.
	self
		assert: b fromObjects size
		equals: 3
		description: 'testConnectToAll:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll:2.18'.
	tmp_IUAwBuHd963 := b
		connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testConnectToAll:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testConnectToAll:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll:3.4'.
	self
		assert: b toObjects size
		equals: 3
		description: 'testConnectToAll:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll:3.8'.
	self
		assert: b toElements size
		equals: 3
		description: 'testConnectToAll:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll:3.11'.
	self
		assert: b view numberOfEdges
		equals: 3
		description: 'testConnectToAll:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll:3.13'.
	self
		assert: b fromElements size
		equals: 3
		description: 'testConnectToAll:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll:3.15'.
	self
		assert: b fromObjects size
		equals: 3
		description: 'testConnectToAll:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll:3.18'.
	self
		assert: tmp_IUAwBuHd963 class
		equals: TSGroup
		description: 'testConnectToAll:3.1'.
	self
		assert: tmp_IUAwBuHd963 size
		equals: 3
		description: 'testConnectToAll:3.2'.
	eFrom := (view edges collect: [ :edge | edge from model ]) sorted
		asArray.
	self
		assert: (view edges collect: [ :edge | edge from model ]) sorted class
		equals: TSGroup
		description: 'testConnectToAll:4.1'.
	self
		assert: (view edges collect: [ :edge | edge from model ]) sorted size
		equals: 3
		description: 'testConnectToAll:4.2'.
	self
		assert: eFrom class
		equals: Array
		description: 'testConnectToAll:4.1'.
	self assert: eFrom size equals: 3 description: 'testConnectToAll:4.2'.
	eTo := (view edges collect: [ :edge | edge to model ]) sorted asArray.
	self
		assert: (view edges collect: [ :edge | edge to model ]) sorted class
		equals: TSGroup
		description: 'testConnectToAll:5.1'.
	self
		assert: (view edges collect: [ :edge | edge to model ]) sorted size
		equals: 3
		description: 'testConnectToAll:5.2'.
	self
		assert: eTo class
		equals: Array
		description: 'testConnectToAll:5.1'.
	self assert: eTo size equals: 3 description: 'testConnectToAll:5.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testDefault [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testElements [
	<madeBySmallAmp>
	| es |
	b := RSEdgeBuilder new.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testElements:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testElements:1.3'.
	self
		assert: b toObjects class
		equals: Array
		description: 'testElements:1.4'.
	self
		assert: b toObjects size
		equals: 0
		description: 'testElements:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements:1.7'.
	self
		assert: b toElements class
		equals: Array
		description: 'testElements:1.8'.
	self
		assert: b toElements size
		equals: 0
		description: 'testElements:1.9'.
	self
		assert: b view class
		equals: UndefinedObject
		description: 'testElements:1.10'.
	self assert: b view equals: nil description: 'testElements:1.11'.
	self
		assert: b fromElements class
		equals: Array
		description: 'testElements:1.12'.
	self
		assert: b fromElements size
		equals: 0
		description: 'testElements:1.13'.
	self
		assert: b fromObjects class
		equals: Array
		description: 'testElements:1.14'.
	self
		assert: b fromObjects size
		equals: 0
		description: 'testElements:1.15'.
	self
		assert: b viewElements class
		equals: Array
		description: 'testElements:1.16'.
	self
		assert: b viewElements size
		equals: 0
		description: 'testElements:1.17'.
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testElements:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testElements:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testElements:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testElements:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testElements:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testElements:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testElements:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testElements:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testElements:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testElements:2.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testElements:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testElements:2.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testElements:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testElements:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testElements:2.18'.
	es := RSShapeBuilder box elementsOn: (1 to: 4).
	self assert: es class equals: TSGroup description: 'testElements:3.1'.
	self assert: es size equals: 4 description: 'testElements:3.2'.
	b elements: es.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements:4.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testElements:4.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testElements:4.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testElements:4.4'.
	self
		assert: b toObjects size
		equals: 4
		description: 'testElements:4.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements:4.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements:4.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testElements:4.8'.
	self
		assert: b toElements size
		equals: 4
		description: 'testElements:4.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testElements:4.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testElements:4.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testElements:4.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testElements:4.13'.
	self
		assert: b fromElements size
		equals: 4
		description: 'testElements:4.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testElements:4.15'.
	self
		assert: b fromObjects size
		equals: 4
		description: 'testElements:4.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testElements:4.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testElements:4.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testElementsToLookup [
	<madeBySmallAmp>
	| es1 es2 edges v |
	es1 := RSShapeBuilder circle elementsOn: #(1 2 3).
	self
		assert: es1 class
		equals: TSGroup
		description: 'testElementsToLookup:1.1'.
	self
		assert: es1 size
		equals: 3
		description: 'testElementsToLookup:1.2'.
	es2 := RSShapeBuilder box elementsOn: #(1 2 3).
	self
		assert: es2 class
		equals: TSGroup
		description: 'testElementsToLookup:2.1'.
	self
		assert: es2 size
		equals: 3
		description: 'testElementsToLookup:2.2'.
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testElementsToLookup:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testElementsToLookup:3.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testElementsToLookup:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testElementsToLookup:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testElementsToLookup:3.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testElementsToLookup:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testElementsToLookup:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testElementsToLookup:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testElementsToLookup:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testElementsToLookup:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testElementsToLookup:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testElementsToLookup:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testElementsToLookup:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testElementsToLookup:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup:3.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testElementsToLookup:3.21'.
	v addAll: es1.
	self
		assert: v class
		equals: RSView
		description: 'testElementsToLookup:4.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testElementsToLookup:4.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testElementsToLookup:4.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testElementsToLookup:4.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testElementsToLookup:4.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testElementsToLookup:4.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testElementsToLookup:4.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testElementsToLookup:4.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testElementsToLookup:4.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:4.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup:4.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup:4.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup:4.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testElementsToLookup:4.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testElementsToLookup:4.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:4.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testElementsToLookup:4.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testElementsToLookup:4.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testElementsToLookup:4.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup:4.20'.
	self
		assert: v elements size
		equals: 3
		description: 'testElementsToLookup:4.21'.
	v addAll: es2.
	self
		assert: v class
		equals: RSView
		description: 'testElementsToLookup:5.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testElementsToLookup:5.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testElementsToLookup:5.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testElementsToLookup:5.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testElementsToLookup:5.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testElementsToLookup:5.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testElementsToLookup:5.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testElementsToLookup:5.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testElementsToLookup:5.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:5.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup:5.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup:5.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup:5.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testElementsToLookup:5.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testElementsToLookup:5.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:5.16'.
	self
		assert: v canvas numberOfShapes
		equals: 6
		description: 'testElementsToLookup:5.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testElementsToLookup:5.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testElementsToLookup:5.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup:5.20'.
	self
		assert: v elements size
		equals: 6
		description: 'testElementsToLookup:5.21'.
	edges := RSEdgeBuilder line
		view: v;
		fromElements: es1;
		toElements: es2;
		connectTo: #yourself.
	self
		assert: edges class
		equals: TSGroup
		description: 'testElementsToLookup:6.1'.
	self
		assert: edges size
		equals: 3
		description: 'testElementsToLookup:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromAll [
	<madeBySmallAmp>
	| v es tmp_33tO5IpAN84 tmp_sJMBNYw9IT6 tmp_UXFV4Ikazw8 tmp_SO3S2tbDGg9 tmp_entNKrZbSi10 |
	v := RSView new.
	self assert: v class equals: RSView description: 'testFromAll:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testFromAll:1.2'.
	self assert: v numberOfEdges equals: 0 description: 'testFromAll:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testFromAll:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testFromAll:1.5'.
	self assert: v edges size equals: 0 description: 'testFromAll:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testFromAll:1.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testFromAll:1.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testFromAll:1.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromAll:1.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testFromAll:1.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testFromAll:1.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testFromAll:1.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testFromAll:1.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testFromAll:1.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromAll:1.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testFromAll:1.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testFromAll:1.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testFromAll:1.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testFromAll:1.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testFromAll:1.21'.
	es := (RSShapeBuilder circle size: 20) elementsOn: (1 to: 2).
	self
		assert: (RSShapeBuilder circle size: 20) class
		equals: RSShapeBuilder
		description: 'testFromAll:2.1'.
	self
		assert: (RSShapeBuilder circle size: 20) shapeClass class
		equals: TSEllipse class
		description: 'testFromAll:2.2'.
	self assert: es class equals: TSGroup description: 'testFromAll:2.1'.
	self assert: es size equals: 2 description: 'testFromAll:2.2'.
	v addAll: es.
	self assert: v class equals: RSView description: 'testFromAll:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testFromAll:3.2'.
	self assert: v numberOfEdges equals: 0 description: 'testFromAll:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testFromAll:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testFromAll:3.5'.
	self assert: v edges size equals: 0 description: 'testFromAll:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testFromAll:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testFromAll:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testFromAll:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromAll:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testFromAll:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testFromAll:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testFromAll:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testFromAll:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testFromAll:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromAll:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 2
		description: 'testFromAll:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testFromAll:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testFromAll:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testFromAll:3.20'.
	self
		assert: v elements size
		equals: 2
		description: 'testFromAll:3.21'.
	tmp_sJMBNYw9IT6 := RSEdgeBuilder new.
	self
		assert: tmp_sJMBNYw9IT6 class
		equals: RSEdgeBuilder
		description: 'testFromAll:4.1'.
	self
		assert: tmp_sJMBNYw9IT6 isBidirectional class
		equals: True
		description: 'testFromAll:4.2'.
	self
		assert: tmp_sJMBNYw9IT6 isBidirectional
		equals: true
		description: 'testFromAll:4.3'.
	self
		assert: tmp_sJMBNYw9IT6 toObjects class
		equals: Array
		description: 'testFromAll:4.4'.
	self
		assert: tmp_sJMBNYw9IT6 toObjects size
		equals: 0
		description: 'testFromAll:4.5'.
	self
		assert: tmp_sJMBNYw9IT6 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:4.6'.
	self
		assert: tmp_sJMBNYw9IT6 controlPoints
		equals: nil
		description: 'testFromAll:4.7'.
	self
		assert: tmp_sJMBNYw9IT6 toElements class
		equals: Array
		description: 'testFromAll:4.8'.
	self
		assert: tmp_sJMBNYw9IT6 toElements size
		equals: 0
		description: 'testFromAll:4.9'.
	self
		assert: tmp_sJMBNYw9IT6 view class
		equals: UndefinedObject
		description: 'testFromAll:4.10'.
	self
		assert: tmp_sJMBNYw9IT6 view
		equals: nil
		description: 'testFromAll:4.11'.
	self
		assert: tmp_sJMBNYw9IT6 fromElements class
		equals: Array
		description: 'testFromAll:4.12'.
	self
		assert: tmp_sJMBNYw9IT6 fromElements size
		equals: 0
		description: 'testFromAll:4.13'.
	self
		assert: tmp_sJMBNYw9IT6 fromObjects class
		equals: Array
		description: 'testFromAll:4.14'.
	self
		assert: tmp_sJMBNYw9IT6 fromObjects size
		equals: 0
		description: 'testFromAll:4.15'.
	self
		assert: tmp_sJMBNYw9IT6 viewElements class
		equals: Array
		description: 'testFromAll:4.16'.
	self
		assert: tmp_sJMBNYw9IT6 viewElements size
		equals: 0
		description: 'testFromAll:4.17'.
	tmp_entNKrZbSi10 := TSTreeLayout on: es.
	self
		assert: tmp_entNKrZbSi10 class
		equals: TSGroup
		description: 'testFromAll:5.1'.
	self
		assert: tmp_entNKrZbSi10 size
		equals: 2
		description: 'testFromAll:5.2'.
	tmp_UXFV4Ikazw8 := RSEdgeBuilder new.
	self
		assert: tmp_UXFV4Ikazw8 class
		equals: RSEdgeBuilder
		description: 'testFromAll:6.1'.
	self
		assert: tmp_UXFV4Ikazw8 isBidirectional class
		equals: True
		description: 'testFromAll:6.2'.
	self
		assert: tmp_UXFV4Ikazw8 isBidirectional
		equals: true
		description: 'testFromAll:6.3'.
	self
		assert: tmp_UXFV4Ikazw8 toObjects class
		equals: Array
		description: 'testFromAll:6.4'.
	self
		assert: tmp_UXFV4Ikazw8 toObjects size
		equals: 0
		description: 'testFromAll:6.5'.
	self
		assert: tmp_UXFV4Ikazw8 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:6.6'.
	self
		assert: tmp_UXFV4Ikazw8 controlPoints
		equals: nil
		description: 'testFromAll:6.7'.
	self
		assert: tmp_UXFV4Ikazw8 toElements class
		equals: Array
		description: 'testFromAll:6.8'.
	self
		assert: tmp_UXFV4Ikazw8 toElements size
		equals: 0
		description: 'testFromAll:6.9'.
	self
		assert: tmp_UXFV4Ikazw8 view class
		equals: UndefinedObject
		description: 'testFromAll:6.10'.
	self
		assert: tmp_UXFV4Ikazw8 view
		equals: nil
		description: 'testFromAll:6.11'.
	self
		assert: tmp_UXFV4Ikazw8 fromElements class
		equals: Array
		description: 'testFromAll:6.12'.
	self
		assert: tmp_UXFV4Ikazw8 fromElements size
		equals: 0
		description: 'testFromAll:6.13'.
	self
		assert: tmp_UXFV4Ikazw8 fromObjects class
		equals: Array
		description: 'testFromAll:6.14'.
	self
		assert: tmp_UXFV4Ikazw8 fromObjects size
		equals: 0
		description: 'testFromAll:6.15'.
	self
		assert: tmp_UXFV4Ikazw8 viewElements class
		equals: Array
		description: 'testFromAll:6.16'.
	self
		assert: tmp_UXFV4Ikazw8 viewElements size
		equals: 0
		description: 'testFromAll:6.17'.
	self
		should: [ tmp_UXFV4Ikazw8 objects: (1 to: 2) ]
		raise: AssertionFailure
		description: 'testFromAll:7.1'.
	tmp_SO3S2tbDGg9 := RSEdgeBuilder new.
	self
		assert: tmp_SO3S2tbDGg9 class
		equals: RSEdgeBuilder
		description: 'testFromAll:8.1'.
	self
		assert: tmp_SO3S2tbDGg9 isBidirectional class
		equals: True
		description: 'testFromAll:8.2'.
	self
		assert: tmp_SO3S2tbDGg9 isBidirectional
		equals: true
		description: 'testFromAll:8.3'.
	self
		assert: tmp_SO3S2tbDGg9 toObjects class
		equals: Array
		description: 'testFromAll:8.4'.
	self
		assert: tmp_SO3S2tbDGg9 toObjects size
		equals: 0
		description: 'testFromAll:8.5'.
	self
		assert: tmp_SO3S2tbDGg9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:8.6'.
	self
		assert: tmp_SO3S2tbDGg9 controlPoints
		equals: nil
		description: 'testFromAll:8.7'.
	self
		assert: tmp_SO3S2tbDGg9 toElements class
		equals: Array
		description: 'testFromAll:8.8'.
	self
		assert: tmp_SO3S2tbDGg9 toElements size
		equals: 0
		description: 'testFromAll:8.9'.
	self
		assert: tmp_SO3S2tbDGg9 view class
		equals: UndefinedObject
		description: 'testFromAll:8.10'.
	self
		assert: tmp_SO3S2tbDGg9 view
		equals: nil
		description: 'testFromAll:8.11'.
	self
		assert: tmp_SO3S2tbDGg9 fromElements class
		equals: Array
		description: 'testFromAll:8.12'.
	self
		assert: tmp_SO3S2tbDGg9 fromElements size
		equals: 0
		description: 'testFromAll:8.13'.
	self
		assert: tmp_SO3S2tbDGg9 fromObjects class
		equals: Array
		description: 'testFromAll:8.14'.
	self
		assert: tmp_SO3S2tbDGg9 fromObjects size
		equals: 0
		description: 'testFromAll:8.15'.
	self
		assert: tmp_SO3S2tbDGg9 viewElements class
		equals: Array
		description: 'testFromAll:8.16'.
	self
		assert: tmp_SO3S2tbDGg9 viewElements size
		equals: 0
		description: 'testFromAll:8.17'.
	tmp_33tO5IpAN84 := tmp_SO3S2tbDGg9
		connectFromAll: (Array with: 1)
		to: 2.
	self
		assert: tmp_SO3S2tbDGg9 class
		equals: RSEdgeBuilder
		description: 'testFromAll:9.1'.
	self
		assert: tmp_SO3S2tbDGg9 isBidirectional class
		equals: True
		description: 'testFromAll:9.2'.
	self
		assert: tmp_SO3S2tbDGg9 isBidirectional
		equals: true
		description: 'testFromAll:9.3'.
	self
		assert: tmp_SO3S2tbDGg9 toObjects class
		equals: Array
		description: 'testFromAll:9.4'.
	self
		assert: tmp_SO3S2tbDGg9 toObjects size
		equals: 0
		description: 'testFromAll:9.5'.
	self
		assert: tmp_SO3S2tbDGg9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:9.6'.
	self
		assert: tmp_SO3S2tbDGg9 controlPoints
		equals: nil
		description: 'testFromAll:9.7'.
	self
		assert: tmp_SO3S2tbDGg9 toElements class
		equals: Array
		description: 'testFromAll:9.8'.
	self
		assert: tmp_SO3S2tbDGg9 toElements size
		equals: 0
		description: 'testFromAll:9.9'.
	self
		assert: tmp_SO3S2tbDGg9 view class
		equals: UndefinedObject
		description: 'testFromAll:9.10'.
	self
		assert: tmp_SO3S2tbDGg9 view
		equals: nil
		description: 'testFromAll:9.11'.
	self
		assert: tmp_SO3S2tbDGg9 fromElements class
		equals: Array
		description: 'testFromAll:9.12'.
	self
		assert: tmp_SO3S2tbDGg9 fromElements size
		equals: 0
		description: 'testFromAll:9.13'.
	self
		assert: tmp_SO3S2tbDGg9 fromObjects class
		equals: Array
		description: 'testFromAll:9.14'.
	self
		assert: tmp_SO3S2tbDGg9 fromObjects size
		equals: 0
		description: 'testFromAll:9.15'.
	self
		assert: tmp_SO3S2tbDGg9 viewElements class
		equals: Array
		description: 'testFromAll:9.16'.
	self
		assert: tmp_SO3S2tbDGg9 viewElements size
		equals: 0
		description: 'testFromAll:9.17'.
	self
		assert: tmp_33tO5IpAN84 class
		equals: TSGroup
		description: 'testFromAll:9.1'.
	self
		assert: tmp_33tO5IpAN84 size
		equals: 0
		description: 'testFromAll:9.2'.
	TSTreeLayout on: es
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjects [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| edges tmp_Hm6sP4TWoo3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjects:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjects:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects:1.18'.
	b fromObjects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjects:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjects:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects:2.18'.
	tmp_Hm6sP4TWoo3 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects:3.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects:3.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects:3.11'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testFromObjects:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjects:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjects:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects:3.18'.
	self
		assert: tmp_Hm6sP4TWoo3 class
		equals: TSGroup
		description: 'testFromObjects:3.1'.
	self
		assert: tmp_Hm6sP4TWoo3 size
		equals: 2
		description: 'testFromObjects:3.2'.
	edges := view edges.
	self
		assert: view class
		equals: RSView
		description: 'testFromObjects:4.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects:4.2'.
	self
		assert: view numberOfEdges
		equals: 2
		description: 'testFromObjects:4.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testFromObjects:4.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testFromObjects:4.5'.
	self
		assert: view edges size
		equals: 2
		description: 'testFromObjects:4.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testFromObjects:4.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testFromObjects:4.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testFromObjects:4.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromObjects:4.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testFromObjects:4.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testFromObjects:4.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testFromObjects:4.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testFromObjects:4.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testFromObjects:4.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromObjects:4.16'.
	self
		assert: view canvas numberOfShapes
		equals: 12
		description: 'testFromObjects:4.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testFromObjects:4.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testFromObjects:4.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testFromObjects:4.20'.
	self
		assert: view elements size
		equals: 10
		description: 'testFromObjects:4.21'.
	self
		assert: edges class
		equals: TSGroup
		description: 'testFromObjects:4.1'.
	self assert: edges size equals: 2 description: 'testFromObjects:4.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjects02 [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| tmp_ZjVFHO4kXk3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects02:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects02:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects02:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjects02:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjects02:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02:1.18'.
	b fromObjects: #(1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects02:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects02:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects02:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02:2.13'.
	self
		assert: b fromElements size
		equals: 1
		description: 'testFromObjects02:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02:2.15'.
	self
		assert: b fromObjects size
		equals: 1
		description: 'testFromObjects02:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02:2.18'.
	tmp_ZjVFHO4kXk3 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjects02:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjects02:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02:3.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02:3.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testFromObjects02:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02:3.13'.
	self
		assert: b fromElements size
		equals: 1
		description: 'testFromObjects02:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02:3.15'.
	self
		assert: b fromObjects size
		equals: 1
		description: 'testFromObjects02:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02:3.18'.
	self
		assert: tmp_ZjVFHO4kXk3 class
		equals: TSGroup
		description: 'testFromObjects02:3.1'.
	self
		assert: tmp_ZjVFHO4kXk3 size
		equals: 1
		description: 'testFromObjects02:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjectsError [
	"
view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testFromObjectsToElements [
	<madeBySmallAmp>
	| edges |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjectsToElements:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjectsToElements:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjectsToElements:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjectsToElements:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjectsToElements:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjectsToElements:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjectsToElements:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjectsToElements:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjectsToElements:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjectsToElements:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjectsToElements:1.18'.
	edges := b
		fromObjects: #(1 2);
		toElements: (elements copyFrom: 10 to: 10);
		connectTo: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testFromObjectsToElements:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testFromObjectsToElements:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.4'.
	self
		assert: b toObjects size
		equals: 1
		description: 'testFromObjectsToElements:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjectsToElements:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.8'.
	self
		assert: b toElements size
		equals: 1
		description: 'testFromObjectsToElements:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjectsToElements:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjectsToElements:2.11'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testFromObjectsToElements:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjectsToElements:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjectsToElements:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjectsToElements:2.18'.
	self
		assert: edges class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.1'.
	self
		assert: edges size
		equals: 2
		description: 'testFromObjectsToElements:2.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testInit [
	<madeBySmallAmp>
	| eb |
	eb := RSEdgeBuilder new.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testInit:1.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testInit:1.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testInit:1.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testInit:1.4'.
	self assert: eb toObjects size equals: 0 description: 'testInit:1.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testInit:1.6'.
	self assert: eb controlPoints equals: nil description: 'testInit:1.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testInit:1.8'.
	self assert: eb toElements size equals: 0 description: 'testInit:1.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testInit:1.10'.
	self assert: eb view equals: nil description: 'testInit:1.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testInit:1.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testInit:1.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testInit:1.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testInit:1.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testInit:1.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testInit:1.17'.
	eb allowRepetition.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testInit:2.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testInit:2.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testInit:2.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testInit:2.4'.
	self assert: eb toObjects size equals: 0 description: 'testInit:2.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testInit:2.6'.
	self assert: eb controlPoints equals: nil description: 'testInit:2.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testInit:2.8'.
	self assert: eb toElements size equals: 0 description: 'testInit:2.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testInit:2.10'.
	self assert: eb view equals: nil description: 'testInit:2.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testInit:2.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testInit:2.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testInit:2.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testInit:2.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testInit:2.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testInit:2.17'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testNoMoveBehind [
	<madeBySmallAmp>
	| tmp_tn5uLnjdQc3 tmp_9l3bleM2Zp4 |
	tmp_tn5uLnjdQc3 := RSEdgeBuilder line.
	self
		assert: tmp_tn5uLnjdQc3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:1.1'.
	self
		assert: tmp_tn5uLnjdQc3 isBidirectional class
		equals: True
		description: 'testNoMoveBehind:1.2'.
	self
		assert: tmp_tn5uLnjdQc3 isBidirectional
		equals: true
		description: 'testNoMoveBehind:1.3'.
	self
		assert: tmp_tn5uLnjdQc3 toObjects class
		equals: Array
		description: 'testNoMoveBehind:1.4'.
	self
		assert: tmp_tn5uLnjdQc3 toObjects size
		equals: 0
		description: 'testNoMoveBehind:1.5'.
	self
		assert: tmp_tn5uLnjdQc3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:1.6'.
	self
		assert: tmp_tn5uLnjdQc3 controlPoints
		equals: nil
		description: 'testNoMoveBehind:1.7'.
	self
		assert: tmp_tn5uLnjdQc3 toElements class
		equals: Array
		description: 'testNoMoveBehind:1.8'.
	self
		assert: tmp_tn5uLnjdQc3 toElements size
		equals: 0
		description: 'testNoMoveBehind:1.9'.
	self
		assert: tmp_tn5uLnjdQc3 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind:1.10'.
	self
		assert: tmp_tn5uLnjdQc3 view
		equals: nil
		description: 'testNoMoveBehind:1.11'.
	self
		assert: tmp_tn5uLnjdQc3 fromElements class
		equals: Array
		description: 'testNoMoveBehind:1.12'.
	self
		assert: tmp_tn5uLnjdQc3 fromElements size
		equals: 0
		description: 'testNoMoveBehind:1.13'.
	self
		assert: tmp_tn5uLnjdQc3 fromObjects class
		equals: Array
		description: 'testNoMoveBehind:1.14'.
	self
		assert: tmp_tn5uLnjdQc3 fromObjects size
		equals: 0
		description: 'testNoMoveBehind:1.15'.
	self
		assert: tmp_tn5uLnjdQc3 viewElements class
		equals: Array
		description: 'testNoMoveBehind:1.16'.
	self
		assert: tmp_tn5uLnjdQc3 viewElements size
		equals: 0
		description: 'testNoMoveBehind:1.17'.
	tmp_tn5uLnjdQc3 view: view.
	self
		assert: tmp_tn5uLnjdQc3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:2.1'.
	self
		assert: tmp_tn5uLnjdQc3 isBidirectional class
		equals: True
		description: 'testNoMoveBehind:2.2'.
	self
		assert: tmp_tn5uLnjdQc3 isBidirectional
		equals: true
		description: 'testNoMoveBehind:2.3'.
	self
		assert: tmp_tn5uLnjdQc3 toObjects class
		equals: TSGroup
		description: 'testNoMoveBehind:2.4'.
	self
		assert: tmp_tn5uLnjdQc3 toObjects size
		equals: 10
		description: 'testNoMoveBehind:2.5'.
	self
		assert: tmp_tn5uLnjdQc3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:2.6'.
	self
		assert: tmp_tn5uLnjdQc3 controlPoints
		equals: nil
		description: 'testNoMoveBehind:2.7'.
	self
		assert: tmp_tn5uLnjdQc3 toElements class
		equals: TSGroup
		description: 'testNoMoveBehind:2.8'.
	self
		assert: tmp_tn5uLnjdQc3 toElements size
		equals: 10
		description: 'testNoMoveBehind:2.9'.
	self
		assert: tmp_tn5uLnjdQc3 view class
		equals: RSView
		description: 'testNoMoveBehind:2.10'.
	self
		assert: tmp_tn5uLnjdQc3 view numberOfEdges class
		equals: SmallInteger
		description: 'testNoMoveBehind:2.11'.
	self
		assert: tmp_tn5uLnjdQc3 view numberOfEdges
		equals: 0
		description: 'testNoMoveBehind:2.12'.
	self
		assert: tmp_tn5uLnjdQc3 fromElements class
		equals: TSGroup
		description: 'testNoMoveBehind:2.13'.
	self
		assert: tmp_tn5uLnjdQc3 fromElements size
		equals: 10
		description: 'testNoMoveBehind:2.14'.
	self
		assert: tmp_tn5uLnjdQc3 fromObjects class
		equals: TSGroup
		description: 'testNoMoveBehind:2.15'.
	self
		assert: tmp_tn5uLnjdQc3 fromObjects size
		equals: 10
		description: 'testNoMoveBehind:2.16'.
	self
		assert: tmp_tn5uLnjdQc3 viewElements class
		equals: TSGroup
		description: 'testNoMoveBehind:2.17'.
	self
		assert: tmp_tn5uLnjdQc3 viewElements size
		equals: 10
		description: 'testNoMoveBehind:2.18'.
	tmp_9l3bleM2Zp4 := RSEdgeBuilder line.
	self
		assert: tmp_9l3bleM2Zp4 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:3.1'.
	self
		assert: tmp_9l3bleM2Zp4 isBidirectional class
		equals: True
		description: 'testNoMoveBehind:3.2'.
	self
		assert: tmp_9l3bleM2Zp4 isBidirectional
		equals: true
		description: 'testNoMoveBehind:3.3'.
	self
		assert: tmp_9l3bleM2Zp4 toObjects class
		equals: Array
		description: 'testNoMoveBehind:3.4'.
	self
		assert: tmp_9l3bleM2Zp4 toObjects size
		equals: 0
		description: 'testNoMoveBehind:3.5'.
	self
		assert: tmp_9l3bleM2Zp4 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:3.6'.
	self
		assert: tmp_9l3bleM2Zp4 controlPoints
		equals: nil
		description: 'testNoMoveBehind:3.7'.
	self
		assert: tmp_9l3bleM2Zp4 toElements class
		equals: Array
		description: 'testNoMoveBehind:3.8'.
	self
		assert: tmp_9l3bleM2Zp4 toElements size
		equals: 0
		description: 'testNoMoveBehind:3.9'.
	self
		assert: tmp_9l3bleM2Zp4 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind:3.10'.
	self
		assert: tmp_9l3bleM2Zp4 view
		equals: nil
		description: 'testNoMoveBehind:3.11'.
	self
		assert: tmp_9l3bleM2Zp4 fromElements class
		equals: Array
		description: 'testNoMoveBehind:3.12'.
	self
		assert: tmp_9l3bleM2Zp4 fromElements size
		equals: 0
		description: 'testNoMoveBehind:3.13'.
	self
		assert: tmp_9l3bleM2Zp4 fromObjects class
		equals: Array
		description: 'testNoMoveBehind:3.14'.
	self
		assert: tmp_9l3bleM2Zp4 fromObjects size
		equals: 0
		description: 'testNoMoveBehind:3.15'.
	self
		assert: tmp_9l3bleM2Zp4 viewElements class
		equals: Array
		description: 'testNoMoveBehind:3.16'.
	self
		assert: tmp_9l3bleM2Zp4 viewElements size
		equals: 0
		description: 'testNoMoveBehind:3.17'.
	self
		should: [ tmp_9l3bleM2Zp4
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testNoMoveBehind:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjectFrom [
	<madeBySmallAmp>
	| e tmp_tUAhjVav9e2 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectFrom:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectFrom:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjectFrom:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjectFrom:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectFrom:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjectFrom:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjectFrom:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectFrom:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectFrom:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectFrom:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectFrom:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectFrom:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectFrom:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectFrom:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom:2.18'.
	tmp_tUAhjVav9e2 := b connectFrom: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectFrom:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectFrom:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectFrom:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectFrom:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testObjectFrom:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectFrom:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectFrom:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom:3.18'.
	self
		assert: tmp_tUAhjVav9e2 class
		equals: TSGroup
		description: 'testObjectFrom:3.1'.
	self
		assert: tmp_tUAhjVav9e2 size
		equals: 1
		description: 'testObjectFrom:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testObjectFrom:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testObjectFrom:4.2'.
	self assert: e class equals: RSEdge description: 'testObjectFrom:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testObjectFrom:4.2'.
	self assert: e isEdge equals: true description: 'testObjectFrom:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testObjectFrom:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testObjectFrom:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testObjectFrom:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testObjectFrom:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testObjectFrom:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testObjectFrom:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testObjectFrom:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testObjectFrom:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjectTo [
	<madeBySmallAmp>
	| e tmp_n4POM22MIn2 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectTo:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectTo:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjectTo:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjectTo:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectTo:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjectTo:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjectTo:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectTo:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectTo:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectTo:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectTo:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectTo:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectTo:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectTo:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo:2.18'.
	tmp_n4POM22MIn2 := b connectTo: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjectTo:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjectTo:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectTo:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectTo:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo:3.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testObjectTo:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectTo:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectTo:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo:3.18'.
	self
		assert: tmp_n4POM22MIn2 class
		equals: TSGroup
		description: 'testObjectTo:3.1'.
	self
		assert: tmp_n4POM22MIn2 size
		equals: 1
		description: 'testObjectTo:3.2'.
	e := view edges anyOne.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testObjectTo:4.1'.
	self
		assert: view edges size
		equals: 1
		description: 'testObjectTo:4.2'.
	self assert: e class equals: RSEdge description: 'testObjectTo:4.1'.
	self
		assert: e isEdge class
		equals: True
		description: 'testObjectTo:4.2'.
	self assert: e isEdge equals: true description: 'testObjectTo:4.3'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:4.4'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testObjectTo:4.5'.
	self
		assert: e to class
		equals: RSElement
		description: 'testObjectTo:4.6'.
	self
		assert: e to hasChildren class
		equals: False
		description: 'testObjectTo:4.7'.
	self
		assert: e to hasChildren
		equals: false
		description: 'testObjectTo:4.8'.
	self
		assert: e from class
		equals: RSElement
		description: 'testObjectTo:4.9'.
	self
		assert: e from hasChildren class
		equals: False
		description: 'testObjectTo:4.10'.
	self
		assert: e from hasChildren
		equals: false
		description: 'testObjectTo:4.11'.
	self
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testObjectTo:4.12'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjects [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects:1.18'.
	b objects: (1 to: 5).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects:2.4'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects:2.8'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects:2.13'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects:2.15'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects:2.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjects02 [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects02:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects02:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects02:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects02:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects02:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects02:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects02:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects02:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects02:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects02:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects02:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects02:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects02:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects02:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects02:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects02:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects02:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects02:1.18'.
	b objects: #even.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects02:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects02:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects02:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects02:2.4'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects02:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects02:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects02:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects02:2.8'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects02:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects02:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects02:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects02:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects02:2.13'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects02:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects02:2.15'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects02:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects02:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects02:2.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testObjects03 [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects03:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects03:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects03:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects03:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects03:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects03:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects03:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects03:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects03:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects03:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects03:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects03:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects03:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects03:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects03:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects03:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects03:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects03:1.18'.
	b objects: #odd.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects03:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testObjects03:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testObjects03:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects03:2.4'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects03:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects03:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects03:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects03:2.8'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects03:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects03:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects03:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects03:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects03:2.13'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects03:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects03:2.15'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects03:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects03:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects03:2.18'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testShouldAllowBidirection [
	<madeBySmallAmp>
	| tmp_KCNP7bK40k4 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldAllowBidirection:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldAllowBidirection:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldAllowBidirection:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldAllowBidirection:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldAllowBidirection:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldAllowBidirection:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:1.18'.
	b noBidirectional.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:2.1'.
	self
		assert: b isBidirectional class
		equals: False
		description: 'testShouldAllowBidirection:2.2'.
	self
		assert: b isBidirectional
		equals: false
		description: 'testShouldAllowBidirection:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldAllowBidirection:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldAllowBidirection:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldAllowBidirection:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldAllowBidirection:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:2.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:3.1'.
	self
		assert: b isBidirectional class
		equals: False
		description: 'testShouldAllowBidirection:3.2'.
	self
		assert: b isBidirectional
		equals: false
		description: 'testShouldAllowBidirection:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldAllowBidirection:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldAllowBidirection:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:3.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldAllowBidirection:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldAllowBidirection:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:3.18'.
	tmp_KCNP7bK40k4 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:4.1'.
	self
		assert: b isBidirectional class
		equals: False
		description: 'testShouldAllowBidirection:4.2'.
	self
		assert: b isBidirectional
		equals: false
		description: 'testShouldAllowBidirection:4.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldAllowBidirection:4.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:4.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:4.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldAllowBidirection:4.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:4.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:4.11'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testShouldAllowBidirection:4.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldAllowBidirection:4.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldAllowBidirection:4.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:4.18'.
	self
		assert: tmp_KCNP7bK40k4 class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.1'.
	self
		assert: tmp_KCNP7bK40k4 size
		equals: 1
		description: 'testShouldAllowBidirection:4.2'.
	elements := view elementsFromModels: #(1 2).
	self
		assert: view class
		equals: RSView
		description: 'testShouldAllowBidirection:5.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:5.2'.
	self
		assert: view numberOfEdges
		equals: 1
		description: 'testShouldAllowBidirection:5.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testShouldAllowBidirection:5.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testShouldAllowBidirection:5.5'.
	self
		assert: view edges size
		equals: 1
		description: 'testShouldAllowBidirection:5.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testShouldAllowBidirection:5.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testShouldAllowBidirection:5.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testShouldAllowBidirection:5.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:5.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testShouldAllowBidirection:5.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:5.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testShouldAllowBidirection:5.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testShouldAllowBidirection:5.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testShouldAllowBidirection:5.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:5.16'.
	self
		assert: view canvas numberOfShapes
		equals: 11
		description: 'testShouldAllowBidirection:5.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testShouldAllowBidirection:5.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testShouldAllowBidirection:5.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:5.20'.
	self
		assert: view elements size
		equals: 10
		description: 'testShouldAllowBidirection:5.21'.
	self
		assert: elements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:5.1'.
	self
		assert: elements size
		equals: 2
		description: 'testShouldAllowBidirection:5.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testShouldNotAllowBidirection [
	<madeBySmallAmp>
	| tmp_oUQie0jGQN3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldNotAllowBidirection:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldNotAllowBidirection:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldNotAllowBidirection:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.18'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldNotAllowBidirection:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldNotAllowBidirection:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldNotAllowBidirection:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:2.18'.
	tmp_oUQie0jGQN3 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testShouldNotAllowBidirection:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testShouldNotAllowBidirection:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection:3.11'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testShouldNotAllowBidirection:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.13'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.15'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:3.18'.
	self
		assert: tmp_oUQie0jGQN3 class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.1'.
	self
		assert: tmp_oUQie0jGQN3 size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple [
	<madeBySmallAmp>
	| tmp_7DC2PCc7dd3 tmp_Tp3X0Sd5gq4 |
	tmp_7DC2PCc7dd3 := RSEdgeBuilder line.
	self
		assert: tmp_7DC2PCc7dd3 class
		equals: RSEdgeBuilder
		description: 'testSimple:1.1'.
	self
		assert: tmp_7DC2PCc7dd3 isBidirectional class
		equals: True
		description: 'testSimple:1.2'.
	self
		assert: tmp_7DC2PCc7dd3 isBidirectional
		equals: true
		description: 'testSimple:1.3'.
	self
		assert: tmp_7DC2PCc7dd3 toObjects class
		equals: Array
		description: 'testSimple:1.4'.
	self
		assert: tmp_7DC2PCc7dd3 toObjects size
		equals: 0
		description: 'testSimple:1.5'.
	self
		assert: tmp_7DC2PCc7dd3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:1.6'.
	self
		assert: tmp_7DC2PCc7dd3 controlPoints
		equals: nil
		description: 'testSimple:1.7'.
	self
		assert: tmp_7DC2PCc7dd3 toElements class
		equals: Array
		description: 'testSimple:1.8'.
	self
		assert: tmp_7DC2PCc7dd3 toElements size
		equals: 0
		description: 'testSimple:1.9'.
	self
		assert: tmp_7DC2PCc7dd3 view class
		equals: UndefinedObject
		description: 'testSimple:1.10'.
	self
		assert: tmp_7DC2PCc7dd3 view
		equals: nil
		description: 'testSimple:1.11'.
	self
		assert: tmp_7DC2PCc7dd3 fromElements class
		equals: Array
		description: 'testSimple:1.12'.
	self
		assert: tmp_7DC2PCc7dd3 fromElements size
		equals: 0
		description: 'testSimple:1.13'.
	self
		assert: tmp_7DC2PCc7dd3 fromObjects class
		equals: Array
		description: 'testSimple:1.14'.
	self
		assert: tmp_7DC2PCc7dd3 fromObjects size
		equals: 0
		description: 'testSimple:1.15'.
	self
		assert: tmp_7DC2PCc7dd3 viewElements class
		equals: Array
		description: 'testSimple:1.16'.
	self
		assert: tmp_7DC2PCc7dd3 viewElements size
		equals: 0
		description: 'testSimple:1.17'.
	tmp_7DC2PCc7dd3 view: view.
	self
		assert: tmp_7DC2PCc7dd3 class
		equals: RSEdgeBuilder
		description: 'testSimple:2.1'.
	self
		assert: tmp_7DC2PCc7dd3 isBidirectional class
		equals: True
		description: 'testSimple:2.2'.
	self
		assert: tmp_7DC2PCc7dd3 isBidirectional
		equals: true
		description: 'testSimple:2.3'.
	self
		assert: tmp_7DC2PCc7dd3 toObjects class
		equals: TSGroup
		description: 'testSimple:2.4'.
	self
		assert: tmp_7DC2PCc7dd3 toObjects size
		equals: 10
		description: 'testSimple:2.5'.
	self
		assert: tmp_7DC2PCc7dd3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:2.6'.
	self
		assert: tmp_7DC2PCc7dd3 controlPoints
		equals: nil
		description: 'testSimple:2.7'.
	self
		assert: tmp_7DC2PCc7dd3 toElements class
		equals: TSGroup
		description: 'testSimple:2.8'.
	self
		assert: tmp_7DC2PCc7dd3 toElements size
		equals: 10
		description: 'testSimple:2.9'.
	self
		assert: tmp_7DC2PCc7dd3 view class
		equals: RSView
		description: 'testSimple:2.10'.
	self
		assert: tmp_7DC2PCc7dd3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple:2.11'.
	self
		assert: tmp_7DC2PCc7dd3 view numberOfEdges
		equals: 0
		description: 'testSimple:2.12'.
	self
		assert: tmp_7DC2PCc7dd3 fromElements class
		equals: TSGroup
		description: 'testSimple:2.13'.
	self
		assert: tmp_7DC2PCc7dd3 fromElements size
		equals: 10
		description: 'testSimple:2.14'.
	self
		assert: tmp_7DC2PCc7dd3 fromObjects class
		equals: TSGroup
		description: 'testSimple:2.15'.
	self
		assert: tmp_7DC2PCc7dd3 fromObjects size
		equals: 10
		description: 'testSimple:2.16'.
	self
		assert: tmp_7DC2PCc7dd3 viewElements class
		equals: TSGroup
		description: 'testSimple:2.17'.
	self
		assert: tmp_7DC2PCc7dd3 viewElements size
		equals: 10
		description: 'testSimple:2.18'.
	tmp_Tp3X0Sd5gq4 := RSEdgeBuilder line.
	self
		assert: tmp_Tp3X0Sd5gq4 class
		equals: RSEdgeBuilder
		description: 'testSimple:3.1'.
	self
		assert: tmp_Tp3X0Sd5gq4 isBidirectional class
		equals: True
		description: 'testSimple:3.2'.
	self
		assert: tmp_Tp3X0Sd5gq4 isBidirectional
		equals: true
		description: 'testSimple:3.3'.
	self
		assert: tmp_Tp3X0Sd5gq4 toObjects class
		equals: Array
		description: 'testSimple:3.4'.
	self
		assert: tmp_Tp3X0Sd5gq4 toObjects size
		equals: 0
		description: 'testSimple:3.5'.
	self
		assert: tmp_Tp3X0Sd5gq4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:3.6'.
	self
		assert: tmp_Tp3X0Sd5gq4 controlPoints
		equals: nil
		description: 'testSimple:3.7'.
	self
		assert: tmp_Tp3X0Sd5gq4 toElements class
		equals: Array
		description: 'testSimple:3.8'.
	self
		assert: tmp_Tp3X0Sd5gq4 toElements size
		equals: 0
		description: 'testSimple:3.9'.
	self
		assert: tmp_Tp3X0Sd5gq4 view class
		equals: UndefinedObject
		description: 'testSimple:3.10'.
	self
		assert: tmp_Tp3X0Sd5gq4 view
		equals: nil
		description: 'testSimple:3.11'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromElements class
		equals: Array
		description: 'testSimple:3.12'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromElements size
		equals: 0
		description: 'testSimple:3.13'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromObjects class
		equals: Array
		description: 'testSimple:3.14'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromObjects size
		equals: 0
		description: 'testSimple:3.15'.
	self
		assert: tmp_Tp3X0Sd5gq4 viewElements class
		equals: Array
		description: 'testSimple:3.16'.
	self
		assert: tmp_Tp3X0Sd5gq4 viewElements size
		equals: 0
		description: 'testSimple:3.17'.
	tmp_Tp3X0Sd5gq4
		useElementAssociations:
			(Array
				with: elements first -> elements second
				with: elements second -> elements third).
	self
		assert: tmp_Tp3X0Sd5gq4 class
		equals: RSEdgeBuilder
		description: 'testSimple:4.1'.
	self
		assert: tmp_Tp3X0Sd5gq4 isBidirectional class
		equals: True
		description: 'testSimple:4.2'.
	self
		assert: tmp_Tp3X0Sd5gq4 isBidirectional
		equals: true
		description: 'testSimple:4.3'.
	self
		assert: tmp_Tp3X0Sd5gq4 toObjects class
		equals: Array
		description: 'testSimple:4.4'.
	self
		assert: tmp_Tp3X0Sd5gq4 toObjects size
		equals: 0
		description: 'testSimple:4.5'.
	self
		assert: tmp_Tp3X0Sd5gq4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:4.6'.
	self
		assert: tmp_Tp3X0Sd5gq4 controlPoints
		equals: nil
		description: 'testSimple:4.7'.
	self
		assert: tmp_Tp3X0Sd5gq4 toElements class
		equals: Array
		description: 'testSimple:4.8'.
	self
		assert: tmp_Tp3X0Sd5gq4 toElements size
		equals: 0
		description: 'testSimple:4.9'.
	self
		assert: tmp_Tp3X0Sd5gq4 view class
		equals: UndefinedObject
		description: 'testSimple:4.10'.
	self
		assert: tmp_Tp3X0Sd5gq4 view
		equals: nil
		description: 'testSimple:4.11'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromElements class
		equals: Array
		description: 'testSimple:4.12'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromElements size
		equals: 0
		description: 'testSimple:4.13'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromObjects class
		equals: Array
		description: 'testSimple:4.14'.
	self
		assert: tmp_Tp3X0Sd5gq4 fromObjects size
		equals: 0
		description: 'testSimple:4.15'.
	self
		assert: tmp_Tp3X0Sd5gq4 viewElements class
		equals: Array
		description: 'testSimple:4.16'.
	self
		assert: tmp_Tp3X0Sd5gq4 viewElements size
		equals: 0
		description: 'testSimple:4.17'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple2 [
	<madeBySmallAmp>
	| tmp_G0nGA1hELP3 tmp_Jfjc3LdIUk4 |
	tmp_G0nGA1hELP3 := RSEdgeBuilder line.
	self
		assert: tmp_G0nGA1hELP3 class
		equals: RSEdgeBuilder
		description: 'testSimple2:1.1'.
	self
		assert: tmp_G0nGA1hELP3 isBidirectional class
		equals: True
		description: 'testSimple2:1.2'.
	self
		assert: tmp_G0nGA1hELP3 isBidirectional
		equals: true
		description: 'testSimple2:1.3'.
	self
		assert: tmp_G0nGA1hELP3 toObjects class
		equals: Array
		description: 'testSimple2:1.4'.
	self
		assert: tmp_G0nGA1hELP3 toObjects size
		equals: 0
		description: 'testSimple2:1.5'.
	self
		assert: tmp_G0nGA1hELP3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:1.6'.
	self
		assert: tmp_G0nGA1hELP3 controlPoints
		equals: nil
		description: 'testSimple2:1.7'.
	self
		assert: tmp_G0nGA1hELP3 toElements class
		equals: Array
		description: 'testSimple2:1.8'.
	self
		assert: tmp_G0nGA1hELP3 toElements size
		equals: 0
		description: 'testSimple2:1.9'.
	self
		assert: tmp_G0nGA1hELP3 view class
		equals: UndefinedObject
		description: 'testSimple2:1.10'.
	self
		assert: tmp_G0nGA1hELP3 view
		equals: nil
		description: 'testSimple2:1.11'.
	self
		assert: tmp_G0nGA1hELP3 fromElements class
		equals: Array
		description: 'testSimple2:1.12'.
	self
		assert: tmp_G0nGA1hELP3 fromElements size
		equals: 0
		description: 'testSimple2:1.13'.
	self
		assert: tmp_G0nGA1hELP3 fromObjects class
		equals: Array
		description: 'testSimple2:1.14'.
	self
		assert: tmp_G0nGA1hELP3 fromObjects size
		equals: 0
		description: 'testSimple2:1.15'.
	self
		assert: tmp_G0nGA1hELP3 viewElements class
		equals: Array
		description: 'testSimple2:1.16'.
	self
		assert: tmp_G0nGA1hELP3 viewElements size
		equals: 0
		description: 'testSimple2:1.17'.
	tmp_G0nGA1hELP3 view: view.
	self
		assert: tmp_G0nGA1hELP3 class
		equals: RSEdgeBuilder
		description: 'testSimple2:2.1'.
	self
		assert: tmp_G0nGA1hELP3 isBidirectional class
		equals: True
		description: 'testSimple2:2.2'.
	self
		assert: tmp_G0nGA1hELP3 isBidirectional
		equals: true
		description: 'testSimple2:2.3'.
	self
		assert: tmp_G0nGA1hELP3 toObjects class
		equals: TSGroup
		description: 'testSimple2:2.4'.
	self
		assert: tmp_G0nGA1hELP3 toObjects size
		equals: 10
		description: 'testSimple2:2.5'.
	self
		assert: tmp_G0nGA1hELP3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:2.6'.
	self
		assert: tmp_G0nGA1hELP3 controlPoints
		equals: nil
		description: 'testSimple2:2.7'.
	self
		assert: tmp_G0nGA1hELP3 toElements class
		equals: TSGroup
		description: 'testSimple2:2.8'.
	self
		assert: tmp_G0nGA1hELP3 toElements size
		equals: 10
		description: 'testSimple2:2.9'.
	self
		assert: tmp_G0nGA1hELP3 view class
		equals: RSView
		description: 'testSimple2:2.10'.
	self
		assert: tmp_G0nGA1hELP3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple2:2.11'.
	self
		assert: tmp_G0nGA1hELP3 view numberOfEdges
		equals: 0
		description: 'testSimple2:2.12'.
	self
		assert: tmp_G0nGA1hELP3 fromElements class
		equals: TSGroup
		description: 'testSimple2:2.13'.
	self
		assert: tmp_G0nGA1hELP3 fromElements size
		equals: 10
		description: 'testSimple2:2.14'.
	self
		assert: tmp_G0nGA1hELP3 fromObjects class
		equals: TSGroup
		description: 'testSimple2:2.15'.
	self
		assert: tmp_G0nGA1hELP3 fromObjects size
		equals: 10
		description: 'testSimple2:2.16'.
	self
		assert: tmp_G0nGA1hELP3 viewElements class
		equals: TSGroup
		description: 'testSimple2:2.17'.
	self
		assert: tmp_G0nGA1hELP3 viewElements size
		equals: 10
		description: 'testSimple2:2.18'.
	tmp_Jfjc3LdIUk4 := RSEdgeBuilder line.
	self
		assert: tmp_Jfjc3LdIUk4 class
		equals: RSEdgeBuilder
		description: 'testSimple2:3.1'.
	self
		assert: tmp_Jfjc3LdIUk4 isBidirectional class
		equals: True
		description: 'testSimple2:3.2'.
	self
		assert: tmp_Jfjc3LdIUk4 isBidirectional
		equals: true
		description: 'testSimple2:3.3'.
	self
		assert: tmp_Jfjc3LdIUk4 toObjects class
		equals: Array
		description: 'testSimple2:3.4'.
	self
		assert: tmp_Jfjc3LdIUk4 toObjects size
		equals: 0
		description: 'testSimple2:3.5'.
	self
		assert: tmp_Jfjc3LdIUk4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:3.6'.
	self
		assert: tmp_Jfjc3LdIUk4 controlPoints
		equals: nil
		description: 'testSimple2:3.7'.
	self
		assert: tmp_Jfjc3LdIUk4 toElements class
		equals: Array
		description: 'testSimple2:3.8'.
	self
		assert: tmp_Jfjc3LdIUk4 toElements size
		equals: 0
		description: 'testSimple2:3.9'.
	self
		assert: tmp_Jfjc3LdIUk4 view class
		equals: UndefinedObject
		description: 'testSimple2:3.10'.
	self
		assert: tmp_Jfjc3LdIUk4 view
		equals: nil
		description: 'testSimple2:3.11'.
	self
		assert: tmp_Jfjc3LdIUk4 fromElements class
		equals: Array
		description: 'testSimple2:3.12'.
	self
		assert: tmp_Jfjc3LdIUk4 fromElements size
		equals: 0
		description: 'testSimple2:3.13'.
	self
		assert: tmp_Jfjc3LdIUk4 fromObjects class
		equals: Array
		description: 'testSimple2:3.14'.
	self
		assert: tmp_Jfjc3LdIUk4 fromObjects size
		equals: 0
		description: 'testSimple2:3.15'.
	self
		assert: tmp_Jfjc3LdIUk4 viewElements class
		equals: Array
		description: 'testSimple2:3.16'.
	self
		assert: tmp_Jfjc3LdIUk4 viewElements size
		equals: 0
		description: 'testSimple2:3.17'.
	self
		should: [ tmp_Jfjc3LdIUk4
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testSimple2:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple3 [
	<madeBySmallAmp>
	| tmp_coCHd287to1 tmp_AB54lYUlBL3 tmp_VMqpJZxesX5 tmp_4e9RuUmXcg7 tmp_I5Dv6yUEC88 |
	tmp_AB54lYUlBL3 := RSEdgeBuilder line.
	self
		assert: tmp_AB54lYUlBL3 class
		equals: RSEdgeBuilder
		description: 'testSimple3:1.1'.
	self
		assert: tmp_AB54lYUlBL3 isBidirectional class
		equals: True
		description: 'testSimple3:1.2'.
	self
		assert: tmp_AB54lYUlBL3 isBidirectional
		equals: true
		description: 'testSimple3:1.3'.
	self
		assert: tmp_AB54lYUlBL3 toObjects class
		equals: Array
		description: 'testSimple3:1.4'.
	self
		assert: tmp_AB54lYUlBL3 toObjects size
		equals: 0
		description: 'testSimple3:1.5'.
	self
		assert: tmp_AB54lYUlBL3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:1.6'.
	self
		assert: tmp_AB54lYUlBL3 controlPoints
		equals: nil
		description: 'testSimple3:1.7'.
	self
		assert: tmp_AB54lYUlBL3 toElements class
		equals: Array
		description: 'testSimple3:1.8'.
	self
		assert: tmp_AB54lYUlBL3 toElements size
		equals: 0
		description: 'testSimple3:1.9'.
	self
		assert: tmp_AB54lYUlBL3 view class
		equals: UndefinedObject
		description: 'testSimple3:1.10'.
	self
		assert: tmp_AB54lYUlBL3 view
		equals: nil
		description: 'testSimple3:1.11'.
	self
		assert: tmp_AB54lYUlBL3 fromElements class
		equals: Array
		description: 'testSimple3:1.12'.
	self
		assert: tmp_AB54lYUlBL3 fromElements size
		equals: 0
		description: 'testSimple3:1.13'.
	self
		assert: tmp_AB54lYUlBL3 fromObjects class
		equals: Array
		description: 'testSimple3:1.14'.
	self
		assert: tmp_AB54lYUlBL3 fromObjects size
		equals: 0
		description: 'testSimple3:1.15'.
	self
		assert: tmp_AB54lYUlBL3 viewElements class
		equals: Array
		description: 'testSimple3:1.16'.
	self
		assert: tmp_AB54lYUlBL3 viewElements size
		equals: 0
		description: 'testSimple3:1.17'.
	tmp_AB54lYUlBL3 view: view.
	self
		assert: tmp_AB54lYUlBL3 class
		equals: RSEdgeBuilder
		description: 'testSimple3:2.1'.
	self
		assert: tmp_AB54lYUlBL3 isBidirectional class
		equals: True
		description: 'testSimple3:2.2'.
	self
		assert: tmp_AB54lYUlBL3 isBidirectional
		equals: true
		description: 'testSimple3:2.3'.
	self
		assert: tmp_AB54lYUlBL3 toObjects class
		equals: TSGroup
		description: 'testSimple3:2.4'.
	self
		assert: tmp_AB54lYUlBL3 toObjects size
		equals: 10
		description: 'testSimple3:2.5'.
	self
		assert: tmp_AB54lYUlBL3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:2.6'.
	self
		assert: tmp_AB54lYUlBL3 controlPoints
		equals: nil
		description: 'testSimple3:2.7'.
	self
		assert: tmp_AB54lYUlBL3 toElements class
		equals: TSGroup
		description: 'testSimple3:2.8'.
	self
		assert: tmp_AB54lYUlBL3 toElements size
		equals: 10
		description: 'testSimple3:2.9'.
	self
		assert: tmp_AB54lYUlBL3 view class
		equals: RSView
		description: 'testSimple3:2.10'.
	self
		assert: tmp_AB54lYUlBL3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple3:2.11'.
	self
		assert: tmp_AB54lYUlBL3 view numberOfEdges
		equals: 0
		description: 'testSimple3:2.12'.
	self
		assert: tmp_AB54lYUlBL3 fromElements class
		equals: TSGroup
		description: 'testSimple3:2.13'.
	self
		assert: tmp_AB54lYUlBL3 fromElements size
		equals: 10
		description: 'testSimple3:2.14'.
	self
		assert: tmp_AB54lYUlBL3 fromObjects class
		equals: TSGroup
		description: 'testSimple3:2.15'.
	self
		assert: tmp_AB54lYUlBL3 fromObjects size
		equals: 10
		description: 'testSimple3:2.16'.
	self
		assert: tmp_AB54lYUlBL3 viewElements class
		equals: TSGroup
		description: 'testSimple3:2.17'.
	self
		assert: tmp_AB54lYUlBL3 viewElements size
		equals: 10
		description: 'testSimple3:2.18'.
	tmp_VMqpJZxesX5 := RSEdgeBuilder line.
	self
		assert: tmp_VMqpJZxesX5 class
		equals: RSEdgeBuilder
		description: 'testSimple3:3.1'.
	self
		assert: tmp_VMqpJZxesX5 isBidirectional class
		equals: True
		description: 'testSimple3:3.2'.
	self
		assert: tmp_VMqpJZxesX5 isBidirectional
		equals: true
		description: 'testSimple3:3.3'.
	self
		assert: tmp_VMqpJZxesX5 toObjects class
		equals: Array
		description: 'testSimple3:3.4'.
	self
		assert: tmp_VMqpJZxesX5 toObjects size
		equals: 0
		description: 'testSimple3:3.5'.
	self
		assert: tmp_VMqpJZxesX5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:3.6'.
	self
		assert: tmp_VMqpJZxesX5 controlPoints
		equals: nil
		description: 'testSimple3:3.7'.
	self
		assert: tmp_VMqpJZxesX5 toElements class
		equals: Array
		description: 'testSimple3:3.8'.
	self
		assert: tmp_VMqpJZxesX5 toElements size
		equals: 0
		description: 'testSimple3:3.9'.
	self
		assert: tmp_VMqpJZxesX5 view class
		equals: UndefinedObject
		description: 'testSimple3:3.10'.
	self
		assert: tmp_VMqpJZxesX5 view
		equals: nil
		description: 'testSimple3:3.11'.
	self
		assert: tmp_VMqpJZxesX5 fromElements class
		equals: Array
		description: 'testSimple3:3.12'.
	self
		assert: tmp_VMqpJZxesX5 fromElements size
		equals: 0
		description: 'testSimple3:3.13'.
	self
		assert: tmp_VMqpJZxesX5 fromObjects class
		equals: Array
		description: 'testSimple3:3.14'.
	self
		assert: tmp_VMqpJZxesX5 fromObjects size
		equals: 0
		description: 'testSimple3:3.15'.
	self
		assert: tmp_VMqpJZxesX5 viewElements class
		equals: Array
		description: 'testSimple3:3.16'.
	self
		assert: tmp_VMqpJZxesX5 viewElements size
		equals: 0
		description: 'testSimple3:3.17'.
	self
		should: [ tmp_VMqpJZxesX5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple3:4.1'.
	tmp_4e9RuUmXcg7 := RSEdgeBuilder line.
	self
		assert: tmp_4e9RuUmXcg7 class
		equals: RSEdgeBuilder
		description: 'testSimple3:5.1'.
	self
		assert: tmp_4e9RuUmXcg7 isBidirectional class
		equals: True
		description: 'testSimple3:5.2'.
	self
		assert: tmp_4e9RuUmXcg7 isBidirectional
		equals: true
		description: 'testSimple3:5.3'.
	self
		assert: tmp_4e9RuUmXcg7 toObjects class
		equals: Array
		description: 'testSimple3:5.4'.
	self
		assert: tmp_4e9RuUmXcg7 toObjects size
		equals: 0
		description: 'testSimple3:5.5'.
	self
		assert: tmp_4e9RuUmXcg7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:5.6'.
	self
		assert: tmp_4e9RuUmXcg7 controlPoints
		equals: nil
		description: 'testSimple3:5.7'.
	self
		assert: tmp_4e9RuUmXcg7 toElements class
		equals: Array
		description: 'testSimple3:5.8'.
	self
		assert: tmp_4e9RuUmXcg7 toElements size
		equals: 0
		description: 'testSimple3:5.9'.
	self
		assert: tmp_4e9RuUmXcg7 view class
		equals: UndefinedObject
		description: 'testSimple3:5.10'.
	self
		assert: tmp_4e9RuUmXcg7 view
		equals: nil
		description: 'testSimple3:5.11'.
	self
		assert: tmp_4e9RuUmXcg7 fromElements class
		equals: Array
		description: 'testSimple3:5.12'.
	self
		assert: tmp_4e9RuUmXcg7 fromElements size
		equals: 0
		description: 'testSimple3:5.13'.
	self
		assert: tmp_4e9RuUmXcg7 fromObjects class
		equals: Array
		description: 'testSimple3:5.14'.
	self
		assert: tmp_4e9RuUmXcg7 fromObjects size
		equals: 0
		description: 'testSimple3:5.15'.
	self
		assert: tmp_4e9RuUmXcg7 viewElements class
		equals: Array
		description: 'testSimple3:5.16'.
	self
		assert: tmp_4e9RuUmXcg7 viewElements size
		equals: 0
		description: 'testSimple3:5.17'.
	self
		should: [ tmp_4e9RuUmXcg7 toObjects: (1 to: 10) ]
		raise: AssertionFailure
		description: 'testSimple3:6.1'.
	tmp_I5Dv6yUEC88 := RSEdgeBuilder line.
	self
		assert: tmp_I5Dv6yUEC88 class
		equals: RSEdgeBuilder
		description: 'testSimple3:7.1'.
	self
		assert: tmp_I5Dv6yUEC88 isBidirectional class
		equals: True
		description: 'testSimple3:7.2'.
	self
		assert: tmp_I5Dv6yUEC88 isBidirectional
		equals: true
		description: 'testSimple3:7.3'.
	self
		assert: tmp_I5Dv6yUEC88 toObjects class
		equals: Array
		description: 'testSimple3:7.4'.
	self
		assert: tmp_I5Dv6yUEC88 toObjects size
		equals: 0
		description: 'testSimple3:7.5'.
	self
		assert: tmp_I5Dv6yUEC88 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:7.6'.
	self
		assert: tmp_I5Dv6yUEC88 controlPoints
		equals: nil
		description: 'testSimple3:7.7'.
	self
		assert: tmp_I5Dv6yUEC88 toElements class
		equals: Array
		description: 'testSimple3:7.8'.
	self
		assert: tmp_I5Dv6yUEC88 toElements size
		equals: 0
		description: 'testSimple3:7.9'.
	self
		assert: tmp_I5Dv6yUEC88 view class
		equals: UndefinedObject
		description: 'testSimple3:7.10'.
	self
		assert: tmp_I5Dv6yUEC88 view
		equals: nil
		description: 'testSimple3:7.11'.
	self
		assert: tmp_I5Dv6yUEC88 fromElements class
		equals: Array
		description: 'testSimple3:7.12'.
	self
		assert: tmp_I5Dv6yUEC88 fromElements size
		equals: 0
		description: 'testSimple3:7.13'.
	self
		assert: tmp_I5Dv6yUEC88 fromObjects class
		equals: Array
		description: 'testSimple3:7.14'.
	self
		assert: tmp_I5Dv6yUEC88 fromObjects size
		equals: 0
		description: 'testSimple3:7.15'.
	self
		assert: tmp_I5Dv6yUEC88 viewElements class
		equals: Array
		description: 'testSimple3:7.16'.
	self
		assert: tmp_I5Dv6yUEC88 viewElements size
		equals: 0
		description: 'testSimple3:7.17'.
	tmp_coCHd287to1 := tmp_I5Dv6yUEC88
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_I5Dv6yUEC88 class
		equals: RSEdgeBuilder
		description: 'testSimple3:8.1'.
	self
		assert: tmp_I5Dv6yUEC88 isBidirectional class
		equals: True
		description: 'testSimple3:8.2'.
	self
		assert: tmp_I5Dv6yUEC88 isBidirectional
		equals: true
		description: 'testSimple3:8.3'.
	self
		assert: tmp_I5Dv6yUEC88 toObjects class
		equals: Array
		description: 'testSimple3:8.4'.
	self
		assert: tmp_I5Dv6yUEC88 toObjects size
		equals: 0
		description: 'testSimple3:8.5'.
	self
		assert: tmp_I5Dv6yUEC88 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:8.6'.
	self
		assert: tmp_I5Dv6yUEC88 controlPoints
		equals: nil
		description: 'testSimple3:8.7'.
	self
		assert: tmp_I5Dv6yUEC88 toElements class
		equals: Array
		description: 'testSimple3:8.8'.
	self
		assert: tmp_I5Dv6yUEC88 toElements size
		equals: 0
		description: 'testSimple3:8.9'.
	self
		assert: tmp_I5Dv6yUEC88 view class
		equals: UndefinedObject
		description: 'testSimple3:8.10'.
	self
		assert: tmp_I5Dv6yUEC88 view
		equals: nil
		description: 'testSimple3:8.11'.
	self
		assert: tmp_I5Dv6yUEC88 fromElements class
		equals: Array
		description: 'testSimple3:8.12'.
	self
		assert: tmp_I5Dv6yUEC88 fromElements size
		equals: 0
		description: 'testSimple3:8.13'.
	self
		assert: tmp_I5Dv6yUEC88 fromObjects class
		equals: Array
		description: 'testSimple3:8.14'.
	self
		assert: tmp_I5Dv6yUEC88 fromObjects size
		equals: 0
		description: 'testSimple3:8.15'.
	self
		assert: tmp_I5Dv6yUEC88 viewElements class
		equals: Array
		description: 'testSimple3:8.16'.
	self
		assert: tmp_I5Dv6yUEC88 viewElements size
		equals: 0
		description: 'testSimple3:8.17'.
	self
		assert: tmp_coCHd287to1 class
		equals: TSGroup
		description: 'testSimple3:8.1'.
	self
		assert: tmp_coCHd287to1 size
		equals: 0
		description: 'testSimple3:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple4 [
	<madeBySmallAmp>
	| tmp_g4eTLdBAiG1 tmp_GZ1Y7ZZtTO3 tmp_tqIYuxwBLt5 tmp_rEPediEdoD7 tmp_YF7tH0pWmH8 |
	tmp_GZ1Y7ZZtTO3 := RSEdgeBuilder line.
	self
		assert: tmp_GZ1Y7ZZtTO3 class
		equals: RSEdgeBuilder
		description: 'testSimple4:1.1'.
	self
		assert: tmp_GZ1Y7ZZtTO3 isBidirectional class
		equals: True
		description: 'testSimple4:1.2'.
	self
		assert: tmp_GZ1Y7ZZtTO3 isBidirectional
		equals: true
		description: 'testSimple4:1.3'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toObjects class
		equals: Array
		description: 'testSimple4:1.4'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toObjects size
		equals: 0
		description: 'testSimple4:1.5'.
	self
		assert: tmp_GZ1Y7ZZtTO3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:1.6'.
	self
		assert: tmp_GZ1Y7ZZtTO3 controlPoints
		equals: nil
		description: 'testSimple4:1.7'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toElements class
		equals: Array
		description: 'testSimple4:1.8'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toElements size
		equals: 0
		description: 'testSimple4:1.9'.
	self
		assert: tmp_GZ1Y7ZZtTO3 view class
		equals: UndefinedObject
		description: 'testSimple4:1.10'.
	self
		assert: tmp_GZ1Y7ZZtTO3 view
		equals: nil
		description: 'testSimple4:1.11'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromElements class
		equals: Array
		description: 'testSimple4:1.12'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromElements size
		equals: 0
		description: 'testSimple4:1.13'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromObjects class
		equals: Array
		description: 'testSimple4:1.14'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromObjects size
		equals: 0
		description: 'testSimple4:1.15'.
	self
		assert: tmp_GZ1Y7ZZtTO3 viewElements class
		equals: Array
		description: 'testSimple4:1.16'.
	self
		assert: tmp_GZ1Y7ZZtTO3 viewElements size
		equals: 0
		description: 'testSimple4:1.17'.
	tmp_GZ1Y7ZZtTO3 view: view.
	self
		assert: tmp_GZ1Y7ZZtTO3 class
		equals: RSEdgeBuilder
		description: 'testSimple4:2.1'.
	self
		assert: tmp_GZ1Y7ZZtTO3 isBidirectional class
		equals: True
		description: 'testSimple4:2.2'.
	self
		assert: tmp_GZ1Y7ZZtTO3 isBidirectional
		equals: true
		description: 'testSimple4:2.3'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toObjects class
		equals: TSGroup
		description: 'testSimple4:2.4'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toObjects size
		equals: 10
		description: 'testSimple4:2.5'.
	self
		assert: tmp_GZ1Y7ZZtTO3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:2.6'.
	self
		assert: tmp_GZ1Y7ZZtTO3 controlPoints
		equals: nil
		description: 'testSimple4:2.7'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toElements class
		equals: TSGroup
		description: 'testSimple4:2.8'.
	self
		assert: tmp_GZ1Y7ZZtTO3 toElements size
		equals: 10
		description: 'testSimple4:2.9'.
	self
		assert: tmp_GZ1Y7ZZtTO3 view class
		equals: RSView
		description: 'testSimple4:2.10'.
	self
		assert: tmp_GZ1Y7ZZtTO3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple4:2.11'.
	self
		assert: tmp_GZ1Y7ZZtTO3 view numberOfEdges
		equals: 0
		description: 'testSimple4:2.12'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromElements class
		equals: TSGroup
		description: 'testSimple4:2.13'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromElements size
		equals: 10
		description: 'testSimple4:2.14'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromObjects class
		equals: TSGroup
		description: 'testSimple4:2.15'.
	self
		assert: tmp_GZ1Y7ZZtTO3 fromObjects size
		equals: 10
		description: 'testSimple4:2.16'.
	self
		assert: tmp_GZ1Y7ZZtTO3 viewElements class
		equals: TSGroup
		description: 'testSimple4:2.17'.
	self
		assert: tmp_GZ1Y7ZZtTO3 viewElements size
		equals: 10
		description: 'testSimple4:2.18'.
	tmp_tqIYuxwBLt5 := RSEdgeBuilder line.
	self
		assert: tmp_tqIYuxwBLt5 class
		equals: RSEdgeBuilder
		description: 'testSimple4:3.1'.
	self
		assert: tmp_tqIYuxwBLt5 isBidirectional class
		equals: True
		description: 'testSimple4:3.2'.
	self
		assert: tmp_tqIYuxwBLt5 isBidirectional
		equals: true
		description: 'testSimple4:3.3'.
	self
		assert: tmp_tqIYuxwBLt5 toObjects class
		equals: Array
		description: 'testSimple4:3.4'.
	self
		assert: tmp_tqIYuxwBLt5 toObjects size
		equals: 0
		description: 'testSimple4:3.5'.
	self
		assert: tmp_tqIYuxwBLt5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:3.6'.
	self
		assert: tmp_tqIYuxwBLt5 controlPoints
		equals: nil
		description: 'testSimple4:3.7'.
	self
		assert: tmp_tqIYuxwBLt5 toElements class
		equals: Array
		description: 'testSimple4:3.8'.
	self
		assert: tmp_tqIYuxwBLt5 toElements size
		equals: 0
		description: 'testSimple4:3.9'.
	self
		assert: tmp_tqIYuxwBLt5 view class
		equals: UndefinedObject
		description: 'testSimple4:3.10'.
	self
		assert: tmp_tqIYuxwBLt5 view
		equals: nil
		description: 'testSimple4:3.11'.
	self
		assert: tmp_tqIYuxwBLt5 fromElements class
		equals: Array
		description: 'testSimple4:3.12'.
	self
		assert: tmp_tqIYuxwBLt5 fromElements size
		equals: 0
		description: 'testSimple4:3.13'.
	self
		assert: tmp_tqIYuxwBLt5 fromObjects class
		equals: Array
		description: 'testSimple4:3.14'.
	self
		assert: tmp_tqIYuxwBLt5 fromObjects size
		equals: 0
		description: 'testSimple4:3.15'.
	self
		assert: tmp_tqIYuxwBLt5 viewElements class
		equals: Array
		description: 'testSimple4:3.16'.
	self
		assert: tmp_tqIYuxwBLt5 viewElements size
		equals: 0
		description: 'testSimple4:3.17'.
	self
		should: [ tmp_tqIYuxwBLt5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4:4.1'.
	tmp_rEPediEdoD7 := RSEdgeBuilder line.
	self
		assert: tmp_rEPediEdoD7 class
		equals: RSEdgeBuilder
		description: 'testSimple4:5.1'.
	self
		assert: tmp_rEPediEdoD7 isBidirectional class
		equals: True
		description: 'testSimple4:5.2'.
	self
		assert: tmp_rEPediEdoD7 isBidirectional
		equals: true
		description: 'testSimple4:5.3'.
	self
		assert: tmp_rEPediEdoD7 toObjects class
		equals: Array
		description: 'testSimple4:5.4'.
	self
		assert: tmp_rEPediEdoD7 toObjects size
		equals: 0
		description: 'testSimple4:5.5'.
	self
		assert: tmp_rEPediEdoD7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:5.6'.
	self
		assert: tmp_rEPediEdoD7 controlPoints
		equals: nil
		description: 'testSimple4:5.7'.
	self
		assert: tmp_rEPediEdoD7 toElements class
		equals: Array
		description: 'testSimple4:5.8'.
	self
		assert: tmp_rEPediEdoD7 toElements size
		equals: 0
		description: 'testSimple4:5.9'.
	self
		assert: tmp_rEPediEdoD7 view class
		equals: UndefinedObject
		description: 'testSimple4:5.10'.
	self
		assert: tmp_rEPediEdoD7 view
		equals: nil
		description: 'testSimple4:5.11'.
	self
		assert: tmp_rEPediEdoD7 fromElements class
		equals: Array
		description: 'testSimple4:5.12'.
	self
		assert: tmp_rEPediEdoD7 fromElements size
		equals: 0
		description: 'testSimple4:5.13'.
	self
		assert: tmp_rEPediEdoD7 fromObjects class
		equals: Array
		description: 'testSimple4:5.14'.
	self
		assert: tmp_rEPediEdoD7 fromObjects size
		equals: 0
		description: 'testSimple4:5.15'.
	self
		assert: tmp_rEPediEdoD7 viewElements class
		equals: Array
		description: 'testSimple4:5.16'.
	self
		assert: tmp_rEPediEdoD7 viewElements size
		equals: 0
		description: 'testSimple4:5.17'.
	self
		should: [ tmp_rEPediEdoD7 toObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4:6.1'.
	tmp_YF7tH0pWmH8 := RSEdgeBuilder line.
	self
		assert: tmp_YF7tH0pWmH8 class
		equals: RSEdgeBuilder
		description: 'testSimple4:7.1'.
	self
		assert: tmp_YF7tH0pWmH8 isBidirectional class
		equals: True
		description: 'testSimple4:7.2'.
	self
		assert: tmp_YF7tH0pWmH8 isBidirectional
		equals: true
		description: 'testSimple4:7.3'.
	self
		assert: tmp_YF7tH0pWmH8 toObjects class
		equals: Array
		description: 'testSimple4:7.4'.
	self
		assert: tmp_YF7tH0pWmH8 toObjects size
		equals: 0
		description: 'testSimple4:7.5'.
	self
		assert: tmp_YF7tH0pWmH8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:7.6'.
	self
		assert: tmp_YF7tH0pWmH8 controlPoints
		equals: nil
		description: 'testSimple4:7.7'.
	self
		assert: tmp_YF7tH0pWmH8 toElements class
		equals: Array
		description: 'testSimple4:7.8'.
	self
		assert: tmp_YF7tH0pWmH8 toElements size
		equals: 0
		description: 'testSimple4:7.9'.
	self
		assert: tmp_YF7tH0pWmH8 view class
		equals: UndefinedObject
		description: 'testSimple4:7.10'.
	self
		assert: tmp_YF7tH0pWmH8 view
		equals: nil
		description: 'testSimple4:7.11'.
	self
		assert: tmp_YF7tH0pWmH8 fromElements class
		equals: Array
		description: 'testSimple4:7.12'.
	self
		assert: tmp_YF7tH0pWmH8 fromElements size
		equals: 0
		description: 'testSimple4:7.13'.
	self
		assert: tmp_YF7tH0pWmH8 fromObjects class
		equals: Array
		description: 'testSimple4:7.14'.
	self
		assert: tmp_YF7tH0pWmH8 fromObjects size
		equals: 0
		description: 'testSimple4:7.15'.
	self
		assert: tmp_YF7tH0pWmH8 viewElements class
		equals: Array
		description: 'testSimple4:7.16'.
	self
		assert: tmp_YF7tH0pWmH8 viewElements size
		equals: 0
		description: 'testSimple4:7.17'.
	tmp_g4eTLdBAiG1 := tmp_YF7tH0pWmH8
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_YF7tH0pWmH8 class
		equals: RSEdgeBuilder
		description: 'testSimple4:8.1'.
	self
		assert: tmp_YF7tH0pWmH8 isBidirectional class
		equals: True
		description: 'testSimple4:8.2'.
	self
		assert: tmp_YF7tH0pWmH8 isBidirectional
		equals: true
		description: 'testSimple4:8.3'.
	self
		assert: tmp_YF7tH0pWmH8 toObjects class
		equals: Array
		description: 'testSimple4:8.4'.
	self
		assert: tmp_YF7tH0pWmH8 toObjects size
		equals: 0
		description: 'testSimple4:8.5'.
	self
		assert: tmp_YF7tH0pWmH8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:8.6'.
	self
		assert: tmp_YF7tH0pWmH8 controlPoints
		equals: nil
		description: 'testSimple4:8.7'.
	self
		assert: tmp_YF7tH0pWmH8 toElements class
		equals: Array
		description: 'testSimple4:8.8'.
	self
		assert: tmp_YF7tH0pWmH8 toElements size
		equals: 0
		description: 'testSimple4:8.9'.
	self
		assert: tmp_YF7tH0pWmH8 view class
		equals: UndefinedObject
		description: 'testSimple4:8.10'.
	self
		assert: tmp_YF7tH0pWmH8 view
		equals: nil
		description: 'testSimple4:8.11'.
	self
		assert: tmp_YF7tH0pWmH8 fromElements class
		equals: Array
		description: 'testSimple4:8.12'.
	self
		assert: tmp_YF7tH0pWmH8 fromElements size
		equals: 0
		description: 'testSimple4:8.13'.
	self
		assert: tmp_YF7tH0pWmH8 fromObjects class
		equals: Array
		description: 'testSimple4:8.14'.
	self
		assert: tmp_YF7tH0pWmH8 fromObjects size
		equals: 0
		description: 'testSimple4:8.15'.
	self
		assert: tmp_YF7tH0pWmH8 viewElements class
		equals: Array
		description: 'testSimple4:8.16'.
	self
		assert: tmp_YF7tH0pWmH8 viewElements size
		equals: 0
		description: 'testSimple4:8.17'.
	self
		assert: tmp_g4eTLdBAiG1 class
		equals: TSGroup
		description: 'testSimple4:8.1'.
	self
		assert: tmp_g4eTLdBAiG1 size
		equals: 0
		description: 'testSimple4:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple5 [
	<madeBySmallAmp>
	| tmp_mV4IiiRyu41 tmp_oZeclfB0BL3 tmp_02QncjsGGk5 tmp_K3uPWdoSid6 |
	tmp_oZeclfB0BL3 := RSEdgeBuilder line.
	self
		assert: tmp_oZeclfB0BL3 class
		equals: RSEdgeBuilder
		description: 'testSimple5:1.1'.
	self
		assert: tmp_oZeclfB0BL3 isBidirectional class
		equals: True
		description: 'testSimple5:1.2'.
	self
		assert: tmp_oZeclfB0BL3 isBidirectional
		equals: true
		description: 'testSimple5:1.3'.
	self
		assert: tmp_oZeclfB0BL3 toObjects class
		equals: Array
		description: 'testSimple5:1.4'.
	self
		assert: tmp_oZeclfB0BL3 toObjects size
		equals: 0
		description: 'testSimple5:1.5'.
	self
		assert: tmp_oZeclfB0BL3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:1.6'.
	self
		assert: tmp_oZeclfB0BL3 controlPoints
		equals: nil
		description: 'testSimple5:1.7'.
	self
		assert: tmp_oZeclfB0BL3 toElements class
		equals: Array
		description: 'testSimple5:1.8'.
	self
		assert: tmp_oZeclfB0BL3 toElements size
		equals: 0
		description: 'testSimple5:1.9'.
	self
		assert: tmp_oZeclfB0BL3 view class
		equals: UndefinedObject
		description: 'testSimple5:1.10'.
	self
		assert: tmp_oZeclfB0BL3 view
		equals: nil
		description: 'testSimple5:1.11'.
	self
		assert: tmp_oZeclfB0BL3 fromElements class
		equals: Array
		description: 'testSimple5:1.12'.
	self
		assert: tmp_oZeclfB0BL3 fromElements size
		equals: 0
		description: 'testSimple5:1.13'.
	self
		assert: tmp_oZeclfB0BL3 fromObjects class
		equals: Array
		description: 'testSimple5:1.14'.
	self
		assert: tmp_oZeclfB0BL3 fromObjects size
		equals: 0
		description: 'testSimple5:1.15'.
	self
		assert: tmp_oZeclfB0BL3 viewElements class
		equals: Array
		description: 'testSimple5:1.16'.
	self
		assert: tmp_oZeclfB0BL3 viewElements size
		equals: 0
		description: 'testSimple5:1.17'.
	tmp_oZeclfB0BL3 view: view.
	self
		assert: tmp_oZeclfB0BL3 class
		equals: RSEdgeBuilder
		description: 'testSimple5:2.1'.
	self
		assert: tmp_oZeclfB0BL3 isBidirectional class
		equals: True
		description: 'testSimple5:2.2'.
	self
		assert: tmp_oZeclfB0BL3 isBidirectional
		equals: true
		description: 'testSimple5:2.3'.
	self
		assert: tmp_oZeclfB0BL3 toObjects class
		equals: TSGroup
		description: 'testSimple5:2.4'.
	self
		assert: tmp_oZeclfB0BL3 toObjects size
		equals: 10
		description: 'testSimple5:2.5'.
	self
		assert: tmp_oZeclfB0BL3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:2.6'.
	self
		assert: tmp_oZeclfB0BL3 controlPoints
		equals: nil
		description: 'testSimple5:2.7'.
	self
		assert: tmp_oZeclfB0BL3 toElements class
		equals: TSGroup
		description: 'testSimple5:2.8'.
	self
		assert: tmp_oZeclfB0BL3 toElements size
		equals: 10
		description: 'testSimple5:2.9'.
	self
		assert: tmp_oZeclfB0BL3 view class
		equals: RSView
		description: 'testSimple5:2.10'.
	self
		assert: tmp_oZeclfB0BL3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple5:2.11'.
	self
		assert: tmp_oZeclfB0BL3 view numberOfEdges
		equals: 0
		description: 'testSimple5:2.12'.
	self
		assert: tmp_oZeclfB0BL3 fromElements class
		equals: TSGroup
		description: 'testSimple5:2.13'.
	self
		assert: tmp_oZeclfB0BL3 fromElements size
		equals: 10
		description: 'testSimple5:2.14'.
	self
		assert: tmp_oZeclfB0BL3 fromObjects class
		equals: TSGroup
		description: 'testSimple5:2.15'.
	self
		assert: tmp_oZeclfB0BL3 fromObjects size
		equals: 10
		description: 'testSimple5:2.16'.
	self
		assert: tmp_oZeclfB0BL3 viewElements class
		equals: TSGroup
		description: 'testSimple5:2.17'.
	self
		assert: tmp_oZeclfB0BL3 viewElements size
		equals: 10
		description: 'testSimple5:2.18'.
	tmp_02QncjsGGk5 := RSEdgeBuilder line.
	self
		assert: tmp_02QncjsGGk5 class
		equals: RSEdgeBuilder
		description: 'testSimple5:3.1'.
	self
		assert: tmp_02QncjsGGk5 isBidirectional class
		equals: True
		description: 'testSimple5:3.2'.
	self
		assert: tmp_02QncjsGGk5 isBidirectional
		equals: true
		description: 'testSimple5:3.3'.
	self
		assert: tmp_02QncjsGGk5 toObjects class
		equals: Array
		description: 'testSimple5:3.4'.
	self
		assert: tmp_02QncjsGGk5 toObjects size
		equals: 0
		description: 'testSimple5:3.5'.
	self
		assert: tmp_02QncjsGGk5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:3.6'.
	self
		assert: tmp_02QncjsGGk5 controlPoints
		equals: nil
		description: 'testSimple5:3.7'.
	self
		assert: tmp_02QncjsGGk5 toElements class
		equals: Array
		description: 'testSimple5:3.8'.
	self
		assert: tmp_02QncjsGGk5 toElements size
		equals: 0
		description: 'testSimple5:3.9'.
	self
		assert: tmp_02QncjsGGk5 view class
		equals: UndefinedObject
		description: 'testSimple5:3.10'.
	self
		assert: tmp_02QncjsGGk5 view
		equals: nil
		description: 'testSimple5:3.11'.
	self
		assert: tmp_02QncjsGGk5 fromElements class
		equals: Array
		description: 'testSimple5:3.12'.
	self
		assert: tmp_02QncjsGGk5 fromElements size
		equals: 0
		description: 'testSimple5:3.13'.
	self
		assert: tmp_02QncjsGGk5 fromObjects class
		equals: Array
		description: 'testSimple5:3.14'.
	self
		assert: tmp_02QncjsGGk5 fromObjects size
		equals: 0
		description: 'testSimple5:3.15'.
	self
		assert: tmp_02QncjsGGk5 viewElements class
		equals: Array
		description: 'testSimple5:3.16'.
	self
		assert: tmp_02QncjsGGk5 viewElements size
		equals: 0
		description: 'testSimple5:3.17'.
	self
		should: [ tmp_02QncjsGGk5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple5:4.1'.
	tmp_K3uPWdoSid6 := RSEdgeBuilder line.
	self
		assert: tmp_K3uPWdoSid6 class
		equals: RSEdgeBuilder
		description: 'testSimple5:5.1'.
	self
		assert: tmp_K3uPWdoSid6 isBidirectional class
		equals: True
		description: 'testSimple5:5.2'.
	self
		assert: tmp_K3uPWdoSid6 isBidirectional
		equals: true
		description: 'testSimple5:5.3'.
	self
		assert: tmp_K3uPWdoSid6 toObjects class
		equals: Array
		description: 'testSimple5:5.4'.
	self
		assert: tmp_K3uPWdoSid6 toObjects size
		equals: 0
		description: 'testSimple5:5.5'.
	self
		assert: tmp_K3uPWdoSid6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:5.6'.
	self
		assert: tmp_K3uPWdoSid6 controlPoints
		equals: nil
		description: 'testSimple5:5.7'.
	self
		assert: tmp_K3uPWdoSid6 toElements class
		equals: Array
		description: 'testSimple5:5.8'.
	self
		assert: tmp_K3uPWdoSid6 toElements size
		equals: 0
		description: 'testSimple5:5.9'.
	self
		assert: tmp_K3uPWdoSid6 view class
		equals: UndefinedObject
		description: 'testSimple5:5.10'.
	self
		assert: tmp_K3uPWdoSid6 view
		equals: nil
		description: 'testSimple5:5.11'.
	self
		assert: tmp_K3uPWdoSid6 fromElements class
		equals: Array
		description: 'testSimple5:5.12'.
	self
		assert: tmp_K3uPWdoSid6 fromElements size
		equals: 0
		description: 'testSimple5:5.13'.
	self
		assert: tmp_K3uPWdoSid6 fromObjects class
		equals: Array
		description: 'testSimple5:5.14'.
	self
		assert: tmp_K3uPWdoSid6 fromObjects size
		equals: 0
		description: 'testSimple5:5.15'.
	self
		assert: tmp_K3uPWdoSid6 viewElements class
		equals: Array
		description: 'testSimple5:5.16'.
	self
		assert: tmp_K3uPWdoSid6 viewElements size
		equals: 0
		description: 'testSimple5:5.17'.
	tmp_mV4IiiRyu41 := tmp_K3uPWdoSid6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self
		assert: tmp_K3uPWdoSid6 class
		equals: RSEdgeBuilder
		description: 'testSimple5:6.1'.
	self
		assert: tmp_K3uPWdoSid6 isBidirectional class
		equals: True
		description: 'testSimple5:6.2'.
	self
		assert: tmp_K3uPWdoSid6 isBidirectional
		equals: true
		description: 'testSimple5:6.3'.
	self
		assert: tmp_K3uPWdoSid6 toObjects class
		equals: Array
		description: 'testSimple5:6.4'.
	self
		assert: tmp_K3uPWdoSid6 toObjects size
		equals: 0
		description: 'testSimple5:6.5'.
	self
		assert: tmp_K3uPWdoSid6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:6.6'.
	self
		assert: tmp_K3uPWdoSid6 controlPoints
		equals: nil
		description: 'testSimple5:6.7'.
	self
		assert: tmp_K3uPWdoSid6 toElements class
		equals: Array
		description: 'testSimple5:6.8'.
	self
		assert: tmp_K3uPWdoSid6 toElements size
		equals: 0
		description: 'testSimple5:6.9'.
	self
		assert: tmp_K3uPWdoSid6 view class
		equals: UndefinedObject
		description: 'testSimple5:6.10'.
	self
		assert: tmp_K3uPWdoSid6 view
		equals: nil
		description: 'testSimple5:6.11'.
	self
		assert: tmp_K3uPWdoSid6 fromElements class
		equals: Array
		description: 'testSimple5:6.12'.
	self
		assert: tmp_K3uPWdoSid6 fromElements size
		equals: 0
		description: 'testSimple5:6.13'.
	self
		assert: tmp_K3uPWdoSid6 fromObjects class
		equals: Array
		description: 'testSimple5:6.14'.
	self
		assert: tmp_K3uPWdoSid6 fromObjects size
		equals: 0
		description: 'testSimple5:6.15'.
	self
		assert: tmp_K3uPWdoSid6 viewElements class
		equals: Array
		description: 'testSimple5:6.16'.
	self
		assert: tmp_K3uPWdoSid6 viewElements size
		equals: 0
		description: 'testSimple5:6.17'.
	self
		assert: tmp_mV4IiiRyu41 class
		equals: TSGroup
		description: 'testSimple5:6.1'.
	self
		assert: tmp_mV4IiiRyu41 size
		equals: 0
		description: 'testSimple5:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple6 [
	<madeBySmallAmp>
	| tmp_cAIuEanY291 tmp_t1aOPaVLqZ3 tmp_hSzcnH6TAu5 tmp_zhT4kW7eEa6 |
	tmp_t1aOPaVLqZ3 := RSEdgeBuilder line.
	self
		assert: tmp_t1aOPaVLqZ3 class
		equals: RSEdgeBuilder
		description: 'testSimple6:1.1'.
	self
		assert: tmp_t1aOPaVLqZ3 isBidirectional class
		equals: True
		description: 'testSimple6:1.2'.
	self
		assert: tmp_t1aOPaVLqZ3 isBidirectional
		equals: true
		description: 'testSimple6:1.3'.
	self
		assert: tmp_t1aOPaVLqZ3 toObjects class
		equals: Array
		description: 'testSimple6:1.4'.
	self
		assert: tmp_t1aOPaVLqZ3 toObjects size
		equals: 0
		description: 'testSimple6:1.5'.
	self
		assert: tmp_t1aOPaVLqZ3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:1.6'.
	self
		assert: tmp_t1aOPaVLqZ3 controlPoints
		equals: nil
		description: 'testSimple6:1.7'.
	self
		assert: tmp_t1aOPaVLqZ3 toElements class
		equals: Array
		description: 'testSimple6:1.8'.
	self
		assert: tmp_t1aOPaVLqZ3 toElements size
		equals: 0
		description: 'testSimple6:1.9'.
	self
		assert: tmp_t1aOPaVLqZ3 view class
		equals: UndefinedObject
		description: 'testSimple6:1.10'.
	self
		assert: tmp_t1aOPaVLqZ3 view
		equals: nil
		description: 'testSimple6:1.11'.
	self
		assert: tmp_t1aOPaVLqZ3 fromElements class
		equals: Array
		description: 'testSimple6:1.12'.
	self
		assert: tmp_t1aOPaVLqZ3 fromElements size
		equals: 0
		description: 'testSimple6:1.13'.
	self
		assert: tmp_t1aOPaVLqZ3 fromObjects class
		equals: Array
		description: 'testSimple6:1.14'.
	self
		assert: tmp_t1aOPaVLqZ3 fromObjects size
		equals: 0
		description: 'testSimple6:1.15'.
	self
		assert: tmp_t1aOPaVLqZ3 viewElements class
		equals: Array
		description: 'testSimple6:1.16'.
	self
		assert: tmp_t1aOPaVLqZ3 viewElements size
		equals: 0
		description: 'testSimple6:1.17'.
	tmp_t1aOPaVLqZ3 view: view.
	self
		assert: tmp_t1aOPaVLqZ3 class
		equals: RSEdgeBuilder
		description: 'testSimple6:2.1'.
	self
		assert: tmp_t1aOPaVLqZ3 isBidirectional class
		equals: True
		description: 'testSimple6:2.2'.
	self
		assert: tmp_t1aOPaVLqZ3 isBidirectional
		equals: true
		description: 'testSimple6:2.3'.
	self
		assert: tmp_t1aOPaVLqZ3 toObjects class
		equals: TSGroup
		description: 'testSimple6:2.4'.
	self
		assert: tmp_t1aOPaVLqZ3 toObjects size
		equals: 10
		description: 'testSimple6:2.5'.
	self
		assert: tmp_t1aOPaVLqZ3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:2.6'.
	self
		assert: tmp_t1aOPaVLqZ3 controlPoints
		equals: nil
		description: 'testSimple6:2.7'.
	self
		assert: tmp_t1aOPaVLqZ3 toElements class
		equals: TSGroup
		description: 'testSimple6:2.8'.
	self
		assert: tmp_t1aOPaVLqZ3 toElements size
		equals: 10
		description: 'testSimple6:2.9'.
	self
		assert: tmp_t1aOPaVLqZ3 view class
		equals: RSView
		description: 'testSimple6:2.10'.
	self
		assert: tmp_t1aOPaVLqZ3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple6:2.11'.
	self
		assert: tmp_t1aOPaVLqZ3 view numberOfEdges
		equals: 0
		description: 'testSimple6:2.12'.
	self
		assert: tmp_t1aOPaVLqZ3 fromElements class
		equals: TSGroup
		description: 'testSimple6:2.13'.
	self
		assert: tmp_t1aOPaVLqZ3 fromElements size
		equals: 10
		description: 'testSimple6:2.14'.
	self
		assert: tmp_t1aOPaVLqZ3 fromObjects class
		equals: TSGroup
		description: 'testSimple6:2.15'.
	self
		assert: tmp_t1aOPaVLqZ3 fromObjects size
		equals: 10
		description: 'testSimple6:2.16'.
	self
		assert: tmp_t1aOPaVLqZ3 viewElements class
		equals: TSGroup
		description: 'testSimple6:2.17'.
	self
		assert: tmp_t1aOPaVLqZ3 viewElements size
		equals: 10
		description: 'testSimple6:2.18'.
	tmp_hSzcnH6TAu5 := RSEdgeBuilder line.
	self
		assert: tmp_hSzcnH6TAu5 class
		equals: RSEdgeBuilder
		description: 'testSimple6:3.1'.
	self
		assert: tmp_hSzcnH6TAu5 isBidirectional class
		equals: True
		description: 'testSimple6:3.2'.
	self
		assert: tmp_hSzcnH6TAu5 isBidirectional
		equals: true
		description: 'testSimple6:3.3'.
	self
		assert: tmp_hSzcnH6TAu5 toObjects class
		equals: Array
		description: 'testSimple6:3.4'.
	self
		assert: tmp_hSzcnH6TAu5 toObjects size
		equals: 0
		description: 'testSimple6:3.5'.
	self
		assert: tmp_hSzcnH6TAu5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:3.6'.
	self
		assert: tmp_hSzcnH6TAu5 controlPoints
		equals: nil
		description: 'testSimple6:3.7'.
	self
		assert: tmp_hSzcnH6TAu5 toElements class
		equals: Array
		description: 'testSimple6:3.8'.
	self
		assert: tmp_hSzcnH6TAu5 toElements size
		equals: 0
		description: 'testSimple6:3.9'.
	self
		assert: tmp_hSzcnH6TAu5 view class
		equals: UndefinedObject
		description: 'testSimple6:3.10'.
	self
		assert: tmp_hSzcnH6TAu5 view
		equals: nil
		description: 'testSimple6:3.11'.
	self
		assert: tmp_hSzcnH6TAu5 fromElements class
		equals: Array
		description: 'testSimple6:3.12'.
	self
		assert: tmp_hSzcnH6TAu5 fromElements size
		equals: 0
		description: 'testSimple6:3.13'.
	self
		assert: tmp_hSzcnH6TAu5 fromObjects class
		equals: Array
		description: 'testSimple6:3.14'.
	self
		assert: tmp_hSzcnH6TAu5 fromObjects size
		equals: 0
		description: 'testSimple6:3.15'.
	self
		assert: tmp_hSzcnH6TAu5 viewElements class
		equals: Array
		description: 'testSimple6:3.16'.
	self
		assert: tmp_hSzcnH6TAu5 viewElements size
		equals: 0
		description: 'testSimple6:3.17'.
	self
		should: [ tmp_hSzcnH6TAu5 fromObjects: (Array with: 2) ]
		raise: AssertionFailure
		description: 'testSimple6:4.1'.
	tmp_zhT4kW7eEa6 := RSEdgeBuilder line.
	self
		assert: tmp_zhT4kW7eEa6 class
		equals: RSEdgeBuilder
		description: 'testSimple6:5.1'.
	self
		assert: tmp_zhT4kW7eEa6 isBidirectional class
		equals: True
		description: 'testSimple6:5.2'.
	self
		assert: tmp_zhT4kW7eEa6 isBidirectional
		equals: true
		description: 'testSimple6:5.3'.
	self
		assert: tmp_zhT4kW7eEa6 toObjects class
		equals: Array
		description: 'testSimple6:5.4'.
	self
		assert: tmp_zhT4kW7eEa6 toObjects size
		equals: 0
		description: 'testSimple6:5.5'.
	self
		assert: tmp_zhT4kW7eEa6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:5.6'.
	self
		assert: tmp_zhT4kW7eEa6 controlPoints
		equals: nil
		description: 'testSimple6:5.7'.
	self
		assert: tmp_zhT4kW7eEa6 toElements class
		equals: Array
		description: 'testSimple6:5.8'.
	self
		assert: tmp_zhT4kW7eEa6 toElements size
		equals: 0
		description: 'testSimple6:5.9'.
	self
		assert: tmp_zhT4kW7eEa6 view class
		equals: UndefinedObject
		description: 'testSimple6:5.10'.
	self
		assert: tmp_zhT4kW7eEa6 view
		equals: nil
		description: 'testSimple6:5.11'.
	self
		assert: tmp_zhT4kW7eEa6 fromElements class
		equals: Array
		description: 'testSimple6:5.12'.
	self
		assert: tmp_zhT4kW7eEa6 fromElements size
		equals: 0
		description: 'testSimple6:5.13'.
	self
		assert: tmp_zhT4kW7eEa6 fromObjects class
		equals: Array
		description: 'testSimple6:5.14'.
	self
		assert: tmp_zhT4kW7eEa6 fromObjects size
		equals: 0
		description: 'testSimple6:5.15'.
	self
		assert: tmp_zhT4kW7eEa6 viewElements class
		equals: Array
		description: 'testSimple6:5.16'.
	self
		assert: tmp_zhT4kW7eEa6 viewElements size
		equals: 0
		description: 'testSimple6:5.17'.
	tmp_cAIuEanY291 := tmp_zhT4kW7eEa6
		connectFromAll: (Array with: 2)
		to: 3.
	self
		assert: tmp_zhT4kW7eEa6 class
		equals: RSEdgeBuilder
		description: 'testSimple6:6.1'.
	self
		assert: tmp_zhT4kW7eEa6 isBidirectional class
		equals: True
		description: 'testSimple6:6.2'.
	self
		assert: tmp_zhT4kW7eEa6 isBidirectional
		equals: true
		description: 'testSimple6:6.3'.
	self
		assert: tmp_zhT4kW7eEa6 toObjects class
		equals: Array
		description: 'testSimple6:6.4'.
	self
		assert: tmp_zhT4kW7eEa6 toObjects size
		equals: 0
		description: 'testSimple6:6.5'.
	self
		assert: tmp_zhT4kW7eEa6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:6.6'.
	self
		assert: tmp_zhT4kW7eEa6 controlPoints
		equals: nil
		description: 'testSimple6:6.7'.
	self
		assert: tmp_zhT4kW7eEa6 toElements class
		equals: Array
		description: 'testSimple6:6.8'.
	self
		assert: tmp_zhT4kW7eEa6 toElements size
		equals: 0
		description: 'testSimple6:6.9'.
	self
		assert: tmp_zhT4kW7eEa6 view class
		equals: UndefinedObject
		description: 'testSimple6:6.10'.
	self
		assert: tmp_zhT4kW7eEa6 view
		equals: nil
		description: 'testSimple6:6.11'.
	self
		assert: tmp_zhT4kW7eEa6 fromElements class
		equals: Array
		description: 'testSimple6:6.12'.
	self
		assert: tmp_zhT4kW7eEa6 fromElements size
		equals: 0
		description: 'testSimple6:6.13'.
	self
		assert: tmp_zhT4kW7eEa6 fromObjects class
		equals: Array
		description: 'testSimple6:6.14'.
	self
		assert: tmp_zhT4kW7eEa6 fromObjects size
		equals: 0
		description: 'testSimple6:6.15'.
	self
		assert: tmp_zhT4kW7eEa6 viewElements class
		equals: Array
		description: 'testSimple6:6.16'.
	self
		assert: tmp_zhT4kW7eEa6 viewElements size
		equals: 0
		description: 'testSimple6:6.17'.
	self
		assert: tmp_cAIuEanY291 class
		equals: TSGroup
		description: 'testSimple6:6.1'.
	self
		assert: tmp_cAIuEanY291 size
		equals: 0
		description: 'testSimple6:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSimple7 [
	<madeBySmallAmp>
	| tmp_mwgFexsxDb3 tmp_GGYM9gXzeK5 tmp_UIpj3WfcVH7 tmp_KvcwFBLpUd8 |
	tmp_mwgFexsxDb3 := RSEdgeBuilder line.
	self
		assert: tmp_mwgFexsxDb3 class
		equals: RSEdgeBuilder
		description: 'testSimple7:1.1'.
	self
		assert: tmp_mwgFexsxDb3 isBidirectional class
		equals: True
		description: 'testSimple7:1.2'.
	self
		assert: tmp_mwgFexsxDb3 isBidirectional
		equals: true
		description: 'testSimple7:1.3'.
	self
		assert: tmp_mwgFexsxDb3 toObjects class
		equals: Array
		description: 'testSimple7:1.4'.
	self
		assert: tmp_mwgFexsxDb3 toObjects size
		equals: 0
		description: 'testSimple7:1.5'.
	self
		assert: tmp_mwgFexsxDb3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:1.6'.
	self
		assert: tmp_mwgFexsxDb3 controlPoints
		equals: nil
		description: 'testSimple7:1.7'.
	self
		assert: tmp_mwgFexsxDb3 toElements class
		equals: Array
		description: 'testSimple7:1.8'.
	self
		assert: tmp_mwgFexsxDb3 toElements size
		equals: 0
		description: 'testSimple7:1.9'.
	self
		assert: tmp_mwgFexsxDb3 view class
		equals: UndefinedObject
		description: 'testSimple7:1.10'.
	self
		assert: tmp_mwgFexsxDb3 view
		equals: nil
		description: 'testSimple7:1.11'.
	self
		assert: tmp_mwgFexsxDb3 fromElements class
		equals: Array
		description: 'testSimple7:1.12'.
	self
		assert: tmp_mwgFexsxDb3 fromElements size
		equals: 0
		description: 'testSimple7:1.13'.
	self
		assert: tmp_mwgFexsxDb3 fromObjects class
		equals: Array
		description: 'testSimple7:1.14'.
	self
		assert: tmp_mwgFexsxDb3 fromObjects size
		equals: 0
		description: 'testSimple7:1.15'.
	self
		assert: tmp_mwgFexsxDb3 viewElements class
		equals: Array
		description: 'testSimple7:1.16'.
	self
		assert: tmp_mwgFexsxDb3 viewElements size
		equals: 0
		description: 'testSimple7:1.17'.
	tmp_mwgFexsxDb3 view: view.
	self
		assert: tmp_mwgFexsxDb3 class
		equals: RSEdgeBuilder
		description: 'testSimple7:2.1'.
	self
		assert: tmp_mwgFexsxDb3 isBidirectional class
		equals: True
		description: 'testSimple7:2.2'.
	self
		assert: tmp_mwgFexsxDb3 isBidirectional
		equals: true
		description: 'testSimple7:2.3'.
	self
		assert: tmp_mwgFexsxDb3 toObjects class
		equals: TSGroup
		description: 'testSimple7:2.4'.
	self
		assert: tmp_mwgFexsxDb3 toObjects size
		equals: 10
		description: 'testSimple7:2.5'.
	self
		assert: tmp_mwgFexsxDb3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:2.6'.
	self
		assert: tmp_mwgFexsxDb3 controlPoints
		equals: nil
		description: 'testSimple7:2.7'.
	self
		assert: tmp_mwgFexsxDb3 toElements class
		equals: TSGroup
		description: 'testSimple7:2.8'.
	self
		assert: tmp_mwgFexsxDb3 toElements size
		equals: 10
		description: 'testSimple7:2.9'.
	self
		assert: tmp_mwgFexsxDb3 view class
		equals: RSView
		description: 'testSimple7:2.10'.
	self
		assert: tmp_mwgFexsxDb3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple7:2.11'.
	self
		assert: tmp_mwgFexsxDb3 view numberOfEdges
		equals: 0
		description: 'testSimple7:2.12'.
	self
		assert: tmp_mwgFexsxDb3 fromElements class
		equals: TSGroup
		description: 'testSimple7:2.13'.
	self
		assert: tmp_mwgFexsxDb3 fromElements size
		equals: 10
		description: 'testSimple7:2.14'.
	self
		assert: tmp_mwgFexsxDb3 fromObjects class
		equals: TSGroup
		description: 'testSimple7:2.15'.
	self
		assert: tmp_mwgFexsxDb3 fromObjects size
		equals: 10
		description: 'testSimple7:2.16'.
	self
		assert: tmp_mwgFexsxDb3 viewElements class
		equals: TSGroup
		description: 'testSimple7:2.17'.
	self
		assert: tmp_mwgFexsxDb3 viewElements size
		equals: 10
		description: 'testSimple7:2.18'.
	tmp_GGYM9gXzeK5 := RSEdgeBuilder line.
	self
		assert: tmp_GGYM9gXzeK5 class
		equals: RSEdgeBuilder
		description: 'testSimple7:3.1'.
	self
		assert: tmp_GGYM9gXzeK5 isBidirectional class
		equals: True
		description: 'testSimple7:3.2'.
	self
		assert: tmp_GGYM9gXzeK5 isBidirectional
		equals: true
		description: 'testSimple7:3.3'.
	self
		assert: tmp_GGYM9gXzeK5 toObjects class
		equals: Array
		description: 'testSimple7:3.4'.
	self
		assert: tmp_GGYM9gXzeK5 toObjects size
		equals: 0
		description: 'testSimple7:3.5'.
	self
		assert: tmp_GGYM9gXzeK5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:3.6'.
	self
		assert: tmp_GGYM9gXzeK5 controlPoints
		equals: nil
		description: 'testSimple7:3.7'.
	self
		assert: tmp_GGYM9gXzeK5 toElements class
		equals: Array
		description: 'testSimple7:3.8'.
	self
		assert: tmp_GGYM9gXzeK5 toElements size
		equals: 0
		description: 'testSimple7:3.9'.
	self
		assert: tmp_GGYM9gXzeK5 view class
		equals: UndefinedObject
		description: 'testSimple7:3.10'.
	self
		assert: tmp_GGYM9gXzeK5 view
		equals: nil
		description: 'testSimple7:3.11'.
	self
		assert: tmp_GGYM9gXzeK5 fromElements class
		equals: Array
		description: 'testSimple7:3.12'.
	self
		assert: tmp_GGYM9gXzeK5 fromElements size
		equals: 0
		description: 'testSimple7:3.13'.
	self
		assert: tmp_GGYM9gXzeK5 fromObjects class
		equals: Array
		description: 'testSimple7:3.14'.
	self
		assert: tmp_GGYM9gXzeK5 fromObjects size
		equals: 0
		description: 'testSimple7:3.15'.
	self
		assert: tmp_GGYM9gXzeK5 viewElements class
		equals: Array
		description: 'testSimple7:3.16'.
	self
		assert: tmp_GGYM9gXzeK5 viewElements size
		equals: 0
		description: 'testSimple7:3.17'.
	self
		should: [ tmp_GGYM9gXzeK5 useAssociation: 1 -> 2 ]
		raise: MessageNotUnderstood
		description: 'testSimple7:4.1'.
	tmp_UIpj3WfcVH7 := RSEdgeBuilder line.
	self
		assert: tmp_UIpj3WfcVH7 class
		equals: RSEdgeBuilder
		description: 'testSimple7:5.1'.
	self
		assert: tmp_UIpj3WfcVH7 isBidirectional class
		equals: True
		description: 'testSimple7:5.2'.
	self
		assert: tmp_UIpj3WfcVH7 isBidirectional
		equals: true
		description: 'testSimple7:5.3'.
	self
		assert: tmp_UIpj3WfcVH7 toObjects class
		equals: Array
		description: 'testSimple7:5.4'.
	self
		assert: tmp_UIpj3WfcVH7 toObjects size
		equals: 0
		description: 'testSimple7:5.5'.
	self
		assert: tmp_UIpj3WfcVH7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:5.6'.
	self
		assert: tmp_UIpj3WfcVH7 controlPoints
		equals: nil
		description: 'testSimple7:5.7'.
	self
		assert: tmp_UIpj3WfcVH7 toElements class
		equals: Array
		description: 'testSimple7:5.8'.
	self
		assert: tmp_UIpj3WfcVH7 toElements size
		equals: 0
		description: 'testSimple7:5.9'.
	self
		assert: tmp_UIpj3WfcVH7 view class
		equals: UndefinedObject
		description: 'testSimple7:5.10'.
	self
		assert: tmp_UIpj3WfcVH7 view
		equals: nil
		description: 'testSimple7:5.11'.
	self
		assert: tmp_UIpj3WfcVH7 fromElements class
		equals: Array
		description: 'testSimple7:5.12'.
	self
		assert: tmp_UIpj3WfcVH7 fromElements size
		equals: 0
		description: 'testSimple7:5.13'.
	self
		assert: tmp_UIpj3WfcVH7 fromObjects class
		equals: Array
		description: 'testSimple7:5.14'.
	self
		assert: tmp_UIpj3WfcVH7 fromObjects size
		equals: 0
		description: 'testSimple7:5.15'.
	self
		assert: tmp_UIpj3WfcVH7 viewElements class
		equals: Array
		description: 'testSimple7:5.16'.
	self
		assert: tmp_UIpj3WfcVH7 viewElements size
		equals: 0
		description: 'testSimple7:5.17'.
	self
		should: [ tmp_UIpj3WfcVH7 useAssociation: 2 -> 3 ]
		raise: MessageNotUnderstood
		description: 'testSimple7:6.1'.
	tmp_KvcwFBLpUd8 := RSEdgeBuilder line.
	self
		assert: tmp_KvcwFBLpUd8 class
		equals: RSEdgeBuilder
		description: 'testSimple7:7.1'.
	self
		assert: tmp_KvcwFBLpUd8 isBidirectional class
		equals: True
		description: 'testSimple7:7.2'.
	self
		assert: tmp_KvcwFBLpUd8 isBidirectional
		equals: true
		description: 'testSimple7:7.3'.
	self
		assert: tmp_KvcwFBLpUd8 toObjects class
		equals: Array
		description: 'testSimple7:7.4'.
	self
		assert: tmp_KvcwFBLpUd8 toObjects size
		equals: 0
		description: 'testSimple7:7.5'.
	self
		assert: tmp_KvcwFBLpUd8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:7.6'.
	self
		assert: tmp_KvcwFBLpUd8 controlPoints
		equals: nil
		description: 'testSimple7:7.7'.
	self
		assert: tmp_KvcwFBLpUd8 toElements class
		equals: Array
		description: 'testSimple7:7.8'.
	self
		assert: tmp_KvcwFBLpUd8 toElements size
		equals: 0
		description: 'testSimple7:7.9'.
	self
		assert: tmp_KvcwFBLpUd8 view class
		equals: UndefinedObject
		description: 'testSimple7:7.10'.
	self
		assert: tmp_KvcwFBLpUd8 view
		equals: nil
		description: 'testSimple7:7.11'.
	self
		assert: tmp_KvcwFBLpUd8 fromElements class
		equals: Array
		description: 'testSimple7:7.12'.
	self
		assert: tmp_KvcwFBLpUd8 fromElements size
		equals: 0
		description: 'testSimple7:7.13'.
	self
		assert: tmp_KvcwFBLpUd8 fromObjects class
		equals: Array
		description: 'testSimple7:7.14'.
	self
		assert: tmp_KvcwFBLpUd8 fromObjects size
		equals: 0
		description: 'testSimple7:7.15'.
	self
		assert: tmp_KvcwFBLpUd8 viewElements class
		equals: Array
		description: 'testSimple7:7.16'.
	self
		assert: tmp_KvcwFBLpUd8 viewElements size
		equals: 0
		description: 'testSimple7:7.17'.
	self
		should: [ tmp_KvcwFBLpUd8 useAssociation: 5 -> 6 ]
		raise: MessageNotUnderstood
		description: 'testSimple7:8.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testSource [
	<madeBySmallAmp>
	| v es eb c tmp_6NQ2fHl2Kq4 tmp_ZBTKL0caSb5 tmp_qpfK6DBOqs6 |
	v := RSView new.
	self assert: v class equals: RSView description: 'testSource:1.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testSource:1.2'.
	self assert: v numberOfEdges equals: 0 description: 'testSource:1.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testSource:1.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testSource:1.5'.
	self assert: v edges size equals: 0 description: 'testSource:1.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testSource:1.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testSource:1.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testSource:1.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSource:1.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testSource:1.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testSource:1.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testSource:1.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testSource:1.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testSource:1.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSource:1.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testSource:1.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testSource:1.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testSource:1.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testSource:1.20'.
	self assert: v elements size equals: 0 description: 'testSource:1.21'.
	es := RSShapeBuilder box elementsOn: #(1 2 3).
	self assert: es class equals: TSGroup description: 'testSource:2.1'.
	self assert: es size equals: 3 description: 'testSource:2.2'.
	v addAll: es.
	self assert: v class equals: RSView description: 'testSource:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testSource:3.2'.
	self assert: v numberOfEdges equals: 0 description: 'testSource:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testSource:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testSource:3.5'.
	self assert: v edges size equals: 0 description: 'testSource:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testSource:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testSource:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testSource:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSource:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testSource:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testSource:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testSource:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testSource:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testSource:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSource:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testSource:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testSource:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testSource:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testSource:3.20'.
	self assert: v elements size equals: 3 description: 'testSource:3.21'.
	eb := RSEdgeBuilder line.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource:4.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testSource:4.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testSource:4.3'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testSource:4.4'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testSource:4.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource:4.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource:4.7'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testSource:4.8'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testSource:4.9'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testSource:4.10'.
	self assert: eb view equals: nil description: 'testSource:4.11'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testSource:4.12'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testSource:4.13'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testSource:4.14'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testSource:4.15'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testSource:4.16'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testSource:4.17'.
	eb view: v.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource:5.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testSource:5.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testSource:5.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testSource:5.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testSource:5.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource:5.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource:5.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testSource:5.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testSource:5.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testSource:5.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testSource:5.11'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testSource:5.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testSource:5.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testSource:5.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testSource:5.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testSource:5.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testSource:5.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testSource:5.18'.
	c := OrderedCollection new.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource:6.1'.
	self assert: c size equals: 0 description: 'testSource:6.2'.
	tmp_6NQ2fHl2Kq4 := c add: 1 -> 2.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource:7.1'.
	self assert: c size equals: 1 description: 'testSource:7.2'.
	self
		assert: tmp_6NQ2fHl2Kq4 class
		equals: Association
		description: 'testSource:7.1'.
	self
		assert: tmp_6NQ2fHl2Kq4 needsFullDefinition class
		equals: False
		description: 'testSource:7.2'.
	self
		assert: tmp_6NQ2fHl2Kq4 needsFullDefinition
		equals: false
		description: 'testSource:7.3'.
	tmp_ZBTKL0caSb5 := c add: 3 -> 1.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource:8.1'.
	self assert: c size equals: 2 description: 'testSource:8.2'.
	self
		assert: tmp_ZBTKL0caSb5 class
		equals: Association
		description: 'testSource:8.1'.
	self
		assert: tmp_ZBTKL0caSb5 needsFullDefinition class
		equals: False
		description: 'testSource:8.2'.
	self
		assert: tmp_ZBTKL0caSb5 needsFullDefinition
		equals: false
		description: 'testSource:8.3'.
	tmp_qpfK6DBOqs6 := eb source: c connectFrom: #key to: #value.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource:9.1'.
	self
		assert: eb isBidirectional class
		equals: True
		description: 'testSource:9.2'.
	self
		assert: eb isBidirectional
		equals: true
		description: 'testSource:9.3'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testSource:9.4'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testSource:9.5'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource:9.6'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource:9.7'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testSource:9.8'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testSource:9.9'.
	self
		assert: eb view class
		equals: RSView
		description: 'testSource:9.10'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testSource:9.11'.
	self
		assert: eb view numberOfEdges
		equals: 2
		description: 'testSource:9.12'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testSource:9.13'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testSource:9.14'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testSource:9.15'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testSource:9.16'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testSource:9.17'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testSource:9.18'.
	self
		assert: tmp_qpfK6DBOqs6 class
		equals: TSGroup
		description: 'testSource:9.1'.
	self
		assert: tmp_qpfK6DBOqs6 size
		equals: 2
		description: 'testSource:9.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testToObjects [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| tmp_rta274BD2P3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testToObjects:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testToObjects:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testToObjects:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testToObjects:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects:1.18'.
	b toObjects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects:2.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testToObjects:2.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testToObjects:2.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects:2.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testToObjects:2.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:2.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects:2.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects:2.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testToObjects:2.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects:2.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects:2.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects:2.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects:2.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects:2.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects:2.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects:2.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects:2.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects:2.18'.
	tmp_rta274BD2P3 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testToObjects:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testToObjects:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects:3.4'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testToObjects:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects:3.8'.
	self
		assert: b toElements size
		equals: 2
		description: 'testToObjects:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects:3.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects:3.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects:3.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects:3.18'.
	self
		assert: tmp_rta274BD2P3 class
		equals: TSGroup
		description: 'testToObjects:3.1'.
	self
		assert: tmp_rta274BD2P3 size
		equals: 0
		description: 'testToObjects:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testUseInLayout [
	<madeBySmallAmp>
	| tmp_OGUzkUrGlJ1 tmp_6awao25y0P4 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayout:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testUseInLayout:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testUseInLayout:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayout:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayout:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayout:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayout:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayout:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayout:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayout:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testUseInLayout:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayout:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayout:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayout:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayout:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayout:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayout:1.18'.
	tmp_6awao25y0P4 := TSTreeLayout on: view elements.
	self
		assert: tmp_6awao25y0P4 class
		equals: TSGroup
		description: 'testUseInLayout:2.1'.
	self
		assert: tmp_6awao25y0P4 size
		equals: 10
		description: 'testUseInLayout:2.2'.
	tmp_OGUzkUrGlJ1 := b connectTo: [ :v | v + 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayout:3.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testUseInLayout:3.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testUseInLayout:3.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayout:3.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayout:3.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout:3.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayout:3.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayout:3.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayout:3.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayout:3.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayout:3.11'.
	self
		assert: b view numberOfEdges
		equals: 9
		description: 'testUseInLayout:3.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayout:3.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayout:3.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayout:3.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayout:3.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayout:3.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayout:3.18'.
	self
		assert: tmp_OGUzkUrGlJ1 class
		equals: TSGroup
		description: 'testUseInLayout:3.1'.
	self
		assert: tmp_OGUzkUrGlJ1 size
		equals: 9
		description: 'testUseInLayout:3.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testUseInLayoutDefault [
	<madeBySmallAmp>
	| tmp_Cp8HK9YqMh3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayoutDefault:1.1'.
	self
		assert: b isBidirectional class
		equals: True
		description: 'testUseInLayoutDefault:1.2'.
	self
		assert: b isBidirectional
		equals: true
		description: 'testUseInLayoutDefault:1.3'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.4'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayoutDefault:1.5'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayoutDefault:1.6'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayoutDefault:1.7'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.8'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayoutDefault:1.9'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayoutDefault:1.10'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayoutDefault:1.11'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testUseInLayoutDefault:1.12'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.13'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayoutDefault:1.14'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.15'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayoutDefault:1.16'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.17'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayoutDefault:1.18'.
	tmp_Cp8HK9YqMh3 := TSTreeLayout on: view elements.
	self
		assert: tmp_Cp8HK9YqMh3 class
		equals: TSGroup
		description: 'testUseInLayoutDefault:2.1'.
	self
		assert: tmp_Cp8HK9YqMh3 size
		equals: 10
		description: 'testUseInLayoutDefault:2.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testWithMoveBehind [
	<madeBySmallAmp>
	| tmp_cTvZmnxrCe3 tmp_oDDSGJSV5F5 tmp_KhYFIZ5AJ96 |
	tmp_cTvZmnxrCe3 := RSEdgeBuilder new.
	self
		assert: tmp_cTvZmnxrCe3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:1.1'.
	self
		assert: tmp_cTvZmnxrCe3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind:1.2'.
	self
		assert: tmp_cTvZmnxrCe3 isBidirectional
		equals: true
		description: 'testWithMoveBehind:1.3'.
	self
		assert: tmp_cTvZmnxrCe3 toObjects class
		equals: Array
		description: 'testWithMoveBehind:1.4'.
	self
		assert: tmp_cTvZmnxrCe3 toObjects size
		equals: 0
		description: 'testWithMoveBehind:1.5'.
	self
		assert: tmp_cTvZmnxrCe3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:1.6'.
	self
		assert: tmp_cTvZmnxrCe3 controlPoints
		equals: nil
		description: 'testWithMoveBehind:1.7'.
	self
		assert: tmp_cTvZmnxrCe3 toElements class
		equals: Array
		description: 'testWithMoveBehind:1.8'.
	self
		assert: tmp_cTvZmnxrCe3 toElements size
		equals: 0
		description: 'testWithMoveBehind:1.9'.
	self
		assert: tmp_cTvZmnxrCe3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:1.10'.
	self
		assert: tmp_cTvZmnxrCe3 view
		equals: nil
		description: 'testWithMoveBehind:1.11'.
	self
		assert: tmp_cTvZmnxrCe3 fromElements class
		equals: Array
		description: 'testWithMoveBehind:1.12'.
	self
		assert: tmp_cTvZmnxrCe3 fromElements size
		equals: 0
		description: 'testWithMoveBehind:1.13'.
	self
		assert: tmp_cTvZmnxrCe3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:1.14'.
	self
		assert: tmp_cTvZmnxrCe3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:1.15'.
	self
		assert: tmp_cTvZmnxrCe3 viewElements class
		equals: Array
		description: 'testWithMoveBehind:1.16'.
	self
		assert: tmp_cTvZmnxrCe3 viewElements size
		equals: 0
		description: 'testWithMoveBehind:1.17'.
	tmp_cTvZmnxrCe3 view: view.
	self
		assert: tmp_cTvZmnxrCe3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:2.1'.
	self
		assert: tmp_cTvZmnxrCe3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind:2.2'.
	self
		assert: tmp_cTvZmnxrCe3 isBidirectional
		equals: true
		description: 'testWithMoveBehind:2.3'.
	self
		assert: tmp_cTvZmnxrCe3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind:2.4'.
	self
		assert: tmp_cTvZmnxrCe3 toObjects size
		equals: 10
		description: 'testWithMoveBehind:2.5'.
	self
		assert: tmp_cTvZmnxrCe3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:2.6'.
	self
		assert: tmp_cTvZmnxrCe3 controlPoints
		equals: nil
		description: 'testWithMoveBehind:2.7'.
	self
		assert: tmp_cTvZmnxrCe3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind:2.8'.
	self
		assert: tmp_cTvZmnxrCe3 toElements size
		equals: 10
		description: 'testWithMoveBehind:2.9'.
	self
		assert: tmp_cTvZmnxrCe3 view class
		equals: RSView
		description: 'testWithMoveBehind:2.10'.
	self
		assert: tmp_cTvZmnxrCe3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind:2.11'.
	self
		assert: tmp_cTvZmnxrCe3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind:2.12'.
	self
		assert: tmp_cTvZmnxrCe3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind:2.13'.
	self
		assert: tmp_cTvZmnxrCe3 fromElements size
		equals: 10
		description: 'testWithMoveBehind:2.14'.
	self
		assert: tmp_cTvZmnxrCe3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind:2.15'.
	self
		assert: tmp_cTvZmnxrCe3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind:2.16'.
	self
		assert: tmp_cTvZmnxrCe3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind:2.17'.
	self
		assert: tmp_cTvZmnxrCe3 viewElements size
		equals: 10
		description: 'testWithMoveBehind:2.18'.
	tmp_oDDSGJSV5F5 := RSEdgeBuilder new.
	self
		assert: tmp_oDDSGJSV5F5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:3.1'.
	self
		assert: tmp_oDDSGJSV5F5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind:3.2'.
	self
		assert: tmp_oDDSGJSV5F5 isBidirectional
		equals: true
		description: 'testWithMoveBehind:3.3'.
	self
		assert: tmp_oDDSGJSV5F5 toObjects class
		equals: Array
		description: 'testWithMoveBehind:3.4'.
	self
		assert: tmp_oDDSGJSV5F5 toObjects size
		equals: 0
		description: 'testWithMoveBehind:3.5'.
	self
		assert: tmp_oDDSGJSV5F5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:3.6'.
	self
		assert: tmp_oDDSGJSV5F5 controlPoints
		equals: nil
		description: 'testWithMoveBehind:3.7'.
	self
		assert: tmp_oDDSGJSV5F5 toElements class
		equals: Array
		description: 'testWithMoveBehind:3.8'.
	self
		assert: tmp_oDDSGJSV5F5 toElements size
		equals: 0
		description: 'testWithMoveBehind:3.9'.
	self
		assert: tmp_oDDSGJSV5F5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:3.10'.
	self
		assert: tmp_oDDSGJSV5F5 view
		equals: nil
		description: 'testWithMoveBehind:3.11'.
	self
		assert: tmp_oDDSGJSV5F5 fromElements class
		equals: Array
		description: 'testWithMoveBehind:3.12'.
	self
		assert: tmp_oDDSGJSV5F5 fromElements size
		equals: 0
		description: 'testWithMoveBehind:3.13'.
	self
		assert: tmp_oDDSGJSV5F5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:3.14'.
	self
		assert: tmp_oDDSGJSV5F5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:3.15'.
	self
		assert: tmp_oDDSGJSV5F5 viewElements class
		equals: Array
		description: 'testWithMoveBehind:3.16'.
	self
		assert: tmp_oDDSGJSV5F5 viewElements size
		equals: 0
		description: 'testWithMoveBehind:3.17'.
	tmp_oDDSGJSV5F5 moveBehind.
	self
		assert: tmp_oDDSGJSV5F5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:4.1'.
	self
		assert: tmp_oDDSGJSV5F5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind:4.2'.
	self
		assert: tmp_oDDSGJSV5F5 isBidirectional
		equals: true
		description: 'testWithMoveBehind:4.3'.
	self
		assert: tmp_oDDSGJSV5F5 toObjects class
		equals: Array
		description: 'testWithMoveBehind:4.4'.
	self
		assert: tmp_oDDSGJSV5F5 toObjects size
		equals: 0
		description: 'testWithMoveBehind:4.5'.
	self
		assert: tmp_oDDSGJSV5F5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:4.6'.
	self
		assert: tmp_oDDSGJSV5F5 controlPoints
		equals: nil
		description: 'testWithMoveBehind:4.7'.
	self
		assert: tmp_oDDSGJSV5F5 toElements class
		equals: Array
		description: 'testWithMoveBehind:4.8'.
	self
		assert: tmp_oDDSGJSV5F5 toElements size
		equals: 0
		description: 'testWithMoveBehind:4.9'.
	self
		assert: tmp_oDDSGJSV5F5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:4.10'.
	self
		assert: tmp_oDDSGJSV5F5 view
		equals: nil
		description: 'testWithMoveBehind:4.11'.
	self
		assert: tmp_oDDSGJSV5F5 fromElements class
		equals: Array
		description: 'testWithMoveBehind:4.12'.
	self
		assert: tmp_oDDSGJSV5F5 fromElements size
		equals: 0
		description: 'testWithMoveBehind:4.13'.
	self
		assert: tmp_oDDSGJSV5F5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:4.14'.
	self
		assert: tmp_oDDSGJSV5F5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:4.15'.
	self
		assert: tmp_oDDSGJSV5F5 viewElements class
		equals: Array
		description: 'testWithMoveBehind:4.16'.
	self
		assert: tmp_oDDSGJSV5F5 viewElements size
		equals: 0
		description: 'testWithMoveBehind:4.17'.
	tmp_KhYFIZ5AJ96 := RSEdgeBuilder new.
	self
		assert: tmp_KhYFIZ5AJ96 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:5.1'.
	self
		assert: tmp_KhYFIZ5AJ96 isBidirectional class
		equals: True
		description: 'testWithMoveBehind:5.2'.
	self
		assert: tmp_KhYFIZ5AJ96 isBidirectional
		equals: true
		description: 'testWithMoveBehind:5.3'.
	self
		assert: tmp_KhYFIZ5AJ96 toObjects class
		equals: Array
		description: 'testWithMoveBehind:5.4'.
	self
		assert: tmp_KhYFIZ5AJ96 toObjects size
		equals: 0
		description: 'testWithMoveBehind:5.5'.
	self
		assert: tmp_KhYFIZ5AJ96 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:5.6'.
	self
		assert: tmp_KhYFIZ5AJ96 controlPoints
		equals: nil
		description: 'testWithMoveBehind:5.7'.
	self
		assert: tmp_KhYFIZ5AJ96 toElements class
		equals: Array
		description: 'testWithMoveBehind:5.8'.
	self
		assert: tmp_KhYFIZ5AJ96 toElements size
		equals: 0
		description: 'testWithMoveBehind:5.9'.
	self
		assert: tmp_KhYFIZ5AJ96 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:5.10'.
	self
		assert: tmp_KhYFIZ5AJ96 view
		equals: nil
		description: 'testWithMoveBehind:5.11'.
	self
		assert: tmp_KhYFIZ5AJ96 fromElements class
		equals: Array
		description: 'testWithMoveBehind:5.12'.
	self
		assert: tmp_KhYFIZ5AJ96 fromElements size
		equals: 0
		description: 'testWithMoveBehind:5.13'.
	self
		assert: tmp_KhYFIZ5AJ96 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:5.14'.
	self
		assert: tmp_KhYFIZ5AJ96 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:5.15'.
	self
		assert: tmp_KhYFIZ5AJ96 viewElements class
		equals: Array
		description: 'testWithMoveBehind:5.16'.
	self
		assert: tmp_KhYFIZ5AJ96 viewElements size
		equals: 0
		description: 'testWithMoveBehind:5.17'.
	self
		should: [ tmp_KhYFIZ5AJ96
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testWithMoveBehind:6.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testWithMoveBehind02 [
	<madeBySmallAmp>
	| tmp_XcUIeH90BN1 tmp_972OetfKvN3 tmp_cj3VsrXU3U5 tmp_GGsCcJGtJY6 |
	tmp_972OetfKvN3 := RSEdgeBuilder new.
	self
		assert: tmp_972OetfKvN3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:1.1'.
	self
		assert: tmp_972OetfKvN3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02:1.2'.
	self
		assert: tmp_972OetfKvN3 isBidirectional
		equals: true
		description: 'testWithMoveBehind02:1.3'.
	self
		assert: tmp_972OetfKvN3 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:1.4'.
	self
		assert: tmp_972OetfKvN3 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:1.5'.
	self
		assert: tmp_972OetfKvN3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:1.6'.
	self
		assert: tmp_972OetfKvN3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:1.7'.
	self
		assert: tmp_972OetfKvN3 toElements class
		equals: Array
		description: 'testWithMoveBehind02:1.8'.
	self
		assert: tmp_972OetfKvN3 toElements size
		equals: 0
		description: 'testWithMoveBehind02:1.9'.
	self
		assert: tmp_972OetfKvN3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:1.10'.
	self
		assert: tmp_972OetfKvN3 view
		equals: nil
		description: 'testWithMoveBehind02:1.11'.
	self
		assert: tmp_972OetfKvN3 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:1.12'.
	self
		assert: tmp_972OetfKvN3 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:1.13'.
	self
		assert: tmp_972OetfKvN3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:1.14'.
	self
		assert: tmp_972OetfKvN3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:1.15'.
	self
		assert: tmp_972OetfKvN3 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:1.16'.
	self
		assert: tmp_972OetfKvN3 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:1.17'.
	tmp_972OetfKvN3 view: view.
	self
		assert: tmp_972OetfKvN3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:2.1'.
	self
		assert: tmp_972OetfKvN3 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02:2.2'.
	self
		assert: tmp_972OetfKvN3 isBidirectional
		equals: true
		description: 'testWithMoveBehind02:2.3'.
	self
		assert: tmp_972OetfKvN3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.4'.
	self
		assert: tmp_972OetfKvN3 toObjects size
		equals: 10
		description: 'testWithMoveBehind02:2.5'.
	self
		assert: tmp_972OetfKvN3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:2.6'.
	self
		assert: tmp_972OetfKvN3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:2.7'.
	self
		assert: tmp_972OetfKvN3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.8'.
	self
		assert: tmp_972OetfKvN3 toElements size
		equals: 10
		description: 'testWithMoveBehind02:2.9'.
	self
		assert: tmp_972OetfKvN3 view class
		equals: RSView
		description: 'testWithMoveBehind02:2.10'.
	self
		assert: tmp_972OetfKvN3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind02:2.11'.
	self
		assert: tmp_972OetfKvN3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind02:2.12'.
	self
		assert: tmp_972OetfKvN3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.13'.
	self
		assert: tmp_972OetfKvN3 fromElements size
		equals: 10
		description: 'testWithMoveBehind02:2.14'.
	self
		assert: tmp_972OetfKvN3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.15'.
	self
		assert: tmp_972OetfKvN3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind02:2.16'.
	self
		assert: tmp_972OetfKvN3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.17'.
	self
		assert: tmp_972OetfKvN3 viewElements size
		equals: 10
		description: 'testWithMoveBehind02:2.18'.
	tmp_cj3VsrXU3U5 := RSEdgeBuilder new.
	self
		assert: tmp_cj3VsrXU3U5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:3.1'.
	self
		assert: tmp_cj3VsrXU3U5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02:3.2'.
	self
		assert: tmp_cj3VsrXU3U5 isBidirectional
		equals: true
		description: 'testWithMoveBehind02:3.3'.
	self
		assert: tmp_cj3VsrXU3U5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:3.4'.
	self
		assert: tmp_cj3VsrXU3U5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:3.5'.
	self
		assert: tmp_cj3VsrXU3U5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:3.6'.
	self
		assert: tmp_cj3VsrXU3U5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:3.7'.
	self
		assert: tmp_cj3VsrXU3U5 toElements class
		equals: Array
		description: 'testWithMoveBehind02:3.8'.
	self
		assert: tmp_cj3VsrXU3U5 toElements size
		equals: 0
		description: 'testWithMoveBehind02:3.9'.
	self
		assert: tmp_cj3VsrXU3U5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:3.10'.
	self
		assert: tmp_cj3VsrXU3U5 view
		equals: nil
		description: 'testWithMoveBehind02:3.11'.
	self
		assert: tmp_cj3VsrXU3U5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:3.12'.
	self
		assert: tmp_cj3VsrXU3U5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:3.13'.
	self
		assert: tmp_cj3VsrXU3U5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:3.14'.
	self
		assert: tmp_cj3VsrXU3U5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:3.15'.
	self
		assert: tmp_cj3VsrXU3U5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:3.16'.
	self
		assert: tmp_cj3VsrXU3U5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:3.17'.
	tmp_cj3VsrXU3U5 moveBehind.
	self
		assert: tmp_cj3VsrXU3U5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:4.1'.
	self
		assert: tmp_cj3VsrXU3U5 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02:4.2'.
	self
		assert: tmp_cj3VsrXU3U5 isBidirectional
		equals: true
		description: 'testWithMoveBehind02:4.3'.
	self
		assert: tmp_cj3VsrXU3U5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:4.4'.
	self
		assert: tmp_cj3VsrXU3U5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:4.5'.
	self
		assert: tmp_cj3VsrXU3U5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:4.6'.
	self
		assert: tmp_cj3VsrXU3U5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:4.7'.
	self
		assert: tmp_cj3VsrXU3U5 toElements class
		equals: Array
		description: 'testWithMoveBehind02:4.8'.
	self
		assert: tmp_cj3VsrXU3U5 toElements size
		equals: 0
		description: 'testWithMoveBehind02:4.9'.
	self
		assert: tmp_cj3VsrXU3U5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:4.10'.
	self
		assert: tmp_cj3VsrXU3U5 view
		equals: nil
		description: 'testWithMoveBehind02:4.11'.
	self
		assert: tmp_cj3VsrXU3U5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:4.12'.
	self
		assert: tmp_cj3VsrXU3U5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:4.13'.
	self
		assert: tmp_cj3VsrXU3U5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:4.14'.
	self
		assert: tmp_cj3VsrXU3U5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:4.15'.
	self
		assert: tmp_cj3VsrXU3U5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:4.16'.
	self
		assert: tmp_cj3VsrXU3U5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:4.17'.
	tmp_GGsCcJGtJY6 := RSEdgeBuilder new.
	self
		assert: tmp_GGsCcJGtJY6 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:5.1'.
	self
		assert: tmp_GGsCcJGtJY6 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02:5.2'.
	self
		assert: tmp_GGsCcJGtJY6 isBidirectional
		equals: true
		description: 'testWithMoveBehind02:5.3'.
	self
		assert: tmp_GGsCcJGtJY6 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:5.4'.
	self
		assert: tmp_GGsCcJGtJY6 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:5.5'.
	self
		assert: tmp_GGsCcJGtJY6 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:5.6'.
	self
		assert: tmp_GGsCcJGtJY6 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:5.7'.
	self
		assert: tmp_GGsCcJGtJY6 toElements class
		equals: Array
		description: 'testWithMoveBehind02:5.8'.
	self
		assert: tmp_GGsCcJGtJY6 toElements size
		equals: 0
		description: 'testWithMoveBehind02:5.9'.
	self
		assert: tmp_GGsCcJGtJY6 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:5.10'.
	self
		assert: tmp_GGsCcJGtJY6 view
		equals: nil
		description: 'testWithMoveBehind02:5.11'.
	self
		assert: tmp_GGsCcJGtJY6 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:5.12'.
	self
		assert: tmp_GGsCcJGtJY6 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:5.13'.
	self
		assert: tmp_GGsCcJGtJY6 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:5.14'.
	self
		assert: tmp_GGsCcJGtJY6 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:5.15'.
	self
		assert: tmp_GGsCcJGtJY6 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:5.16'.
	self
		assert: tmp_GGsCcJGtJY6 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:5.17'.
	tmp_XcUIeH90BN1 := tmp_GGsCcJGtJY6 connectFrom: [ :v | v - 1 ].
	self
		assert: tmp_GGsCcJGtJY6 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:6.1'.
	self
		assert: tmp_GGsCcJGtJY6 isBidirectional class
		equals: True
		description: 'testWithMoveBehind02:6.2'.
	self
		assert: tmp_GGsCcJGtJY6 isBidirectional
		equals: true
		description: 'testWithMoveBehind02:6.3'.
	self
		assert: tmp_GGsCcJGtJY6 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:6.4'.
	self
		assert: tmp_GGsCcJGtJY6 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:6.5'.
	self
		assert: tmp_GGsCcJGtJY6 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:6.6'.
	self
		assert: tmp_GGsCcJGtJY6 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:6.7'.
	self
		assert: tmp_GGsCcJGtJY6 toElements class
		equals: Array
		description: 'testWithMoveBehind02:6.8'.
	self
		assert: tmp_GGsCcJGtJY6 toElements size
		equals: 0
		description: 'testWithMoveBehind02:6.9'.
	self
		assert: tmp_GGsCcJGtJY6 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:6.10'.
	self
		assert: tmp_GGsCcJGtJY6 view
		equals: nil
		description: 'testWithMoveBehind02:6.11'.
	self
		assert: tmp_GGsCcJGtJY6 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:6.12'.
	self
		assert: tmp_GGsCcJGtJY6 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:6.13'.
	self
		assert: tmp_GGsCcJGtJY6 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:6.14'.
	self
		assert: tmp_GGsCcJGtJY6 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:6.15'.
	self
		assert: tmp_GGsCcJGtJY6 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:6.16'.
	self
		assert: tmp_GGsCcJGtJY6 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:6.17'.
	self
		assert: tmp_XcUIeH90BN1 class
		equals: TSGroup
		description: 'testWithMoveBehind02:6.1'.
	self
		assert: tmp_XcUIeH90BN1 size
		equals: 0
		description: 'testWithMoveBehind02:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestAmpTest >> testconnectFromToAll [
	<madeBySmallAmp>
	| es1 es2 edges v |
	es1 := RSShapeBuilder circle elementsOn: #(1 2 3).
	self
		assert: es1 class
		equals: TSGroup
		description: 'testconnectFromToAll:1.1'.
	self
		assert: es1 size
		equals: 3
		description: 'testconnectFromToAll:1.2'.
	es2 := RSShapeBuilder box elementsOn: #(1 2 3).
	self
		assert: es2 class
		equals: TSGroup
		description: 'testconnectFromToAll:2.1'.
	self
		assert: es2 size
		equals: 3
		description: 'testconnectFromToAll:2.2'.
	v := RSView new.
	self
		assert: v class
		equals: RSView
		description: 'testconnectFromToAll:3.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testconnectFromToAll:3.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testconnectFromToAll:3.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testconnectFromToAll:3.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testconnectFromToAll:3.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testconnectFromToAll:3.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testconnectFromToAll:3.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testconnectFromToAll:3.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testconnectFromToAll:3.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:3.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll:3.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll:3.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll:3.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testconnectFromToAll:3.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testconnectFromToAll:3.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:3.16'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testconnectFromToAll:3.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testconnectFromToAll:3.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testconnectFromToAll:3.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll:3.20'.
	self
		assert: v elements size
		equals: 0
		description: 'testconnectFromToAll:3.21'.
	v addAll: es1.
	self
		assert: v class
		equals: RSView
		description: 'testconnectFromToAll:4.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testconnectFromToAll:4.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testconnectFromToAll:4.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testconnectFromToAll:4.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testconnectFromToAll:4.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testconnectFromToAll:4.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testconnectFromToAll:4.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testconnectFromToAll:4.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testconnectFromToAll:4.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:4.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll:4.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll:4.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll:4.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testconnectFromToAll:4.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testconnectFromToAll:4.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:4.16'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testconnectFromToAll:4.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testconnectFromToAll:4.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testconnectFromToAll:4.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll:4.20'.
	self
		assert: v elements size
		equals: 3
		description: 'testconnectFromToAll:4.21'.
	v addAll: es2.
	self
		assert: v class
		equals: RSView
		description: 'testconnectFromToAll:5.1'.
	self
		assert: v numberOfEdges class
		equals: SmallInteger
		description: 'testconnectFromToAll:5.2'.
	self
		assert: v numberOfEdges
		equals: 0
		description: 'testconnectFromToAll:5.3'.
	self
		assert: v announcer class
		equals: Announcer
		description: 'testconnectFromToAll:5.4'.
	self
		assert: v edges class
		equals: TSGroup
		description: 'testconnectFromToAll:5.5'.
	self
		assert: v edges size
		equals: 0
		description: 'testconnectFromToAll:5.6'.
	self
		assert: v canvas class
		equals: TSCanvas
		description: 'testconnectFromToAll:5.7'.
	self
		assert: v canvas showRectangles class
		equals: False
		description: 'testconnectFromToAll:5.8'.
	self
		assert: v canvas showRectangles
		equals: false
		description: 'testconnectFromToAll:5.9'.
	self
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:5.10'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll:5.11'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll:5.12'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll:5.13'.
	self
		assert: v canvas isShape class
		equals: False
		description: 'testconnectFromToAll:5.14'.
	self
		assert: v canvas isShape
		equals: false
		description: 'testconnectFromToAll:5.15'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:5.16'.
	self
		assert: v canvas numberOfShapes
		equals: 6
		description: 'testconnectFromToAll:5.17'.
	self
		assert: v canvas clearBackground class
		equals: True
		description: 'testconnectFromToAll:5.18'.
	self
		assert: v canvas clearBackground
		equals: true
		description: 'testconnectFromToAll:5.19'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll:5.20'.
	self
		assert: v elements size
		equals: 6
		description: 'testconnectFromToAll:5.21'.
	edges := RSEdgeBuilder line
		view: v;
		fromElements: es1;
		toElements: es2;
		connectFrom: #yourself toAll: [ :obj | Array with: obj ].
	self
		assert: edges class
		equals: TSGroup
		description: 'testconnectFromToAll:6.1'.
	self
		assert: edges size
		equals: 3
		description: 'testconnectFromToAll:6.2'
]
