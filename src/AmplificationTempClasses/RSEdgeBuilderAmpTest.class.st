Class {
	#name : #RSEdgeBuilderAmpTest,
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
RSEdgeBuilderAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RSEdgeBuilder line.
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testAllowRepetitionAndUseAssociations [
	<madeBySmallAmp>
	| v eb tmp_SZUnnO6Tp35 tmp_kb1oGnmT4C6 |
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:1.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:1.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:1.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:1.12'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:1.14'.
	self
		assert: v elements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:1.15'.
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:2.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:2.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:2.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:2.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:2.12'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:2.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:2.14'.
	self
		assert: v elements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:2.15'.
	eb := RSEdgeBuilder line.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:3.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:3.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:3.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:3.4'.
	self
		assert: eb moveBehind view class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:3.5'.
	self
		assert: eb moveBehind view
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:3.6'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.7'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.8'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:3.9'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:3.10'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.11'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.12'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:3.13'.
	self
		assert: eb view
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:3.14'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.15'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.16'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.17'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.18'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testAllowRepetitionAndUseAssociations:3.19'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:3.20'.
	eb view: v.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:4.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:4.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:4.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:4.4'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.5'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.6'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:4.7'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:4.8'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.9'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.10'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:4.11'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:4.12'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:4.13'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.14'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.15'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.16'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.17'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:4.18'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:4.19'.
	eb color: (Color red alpha: 0.5).
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:5.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:5.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:5.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:5.4'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.5'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.6'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:5.7'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:5.8'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.9'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.10'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:5.11'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:5.12'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:5.13'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.14'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.15'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.16'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.17'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:5.18'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:5.19'.
	eb noRepetition.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:6.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:6.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:6.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:6.4'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.5'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.6'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:6.7'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:6.8'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.9'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.10'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:6.11'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:6.12'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testAllowRepetitionAndUseAssociations:6.13'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.14'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.15'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.16'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.17'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:6.18'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:6.19'.
	tmp_SZUnnO6Tp35 := eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:7.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testAllowRepetitionAndUseAssociations:7.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:7.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:7.4'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.5'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.6'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testAllowRepetitionAndUseAssociations:7.7'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testAllowRepetitionAndUseAssociations:7.8'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.9'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.10'.
	self
		assert: eb view class
		equals: RSView
		description: 'testAllowRepetitionAndUseAssociations:7.11'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testAllowRepetitionAndUseAssociations:7.12'.
	self
		assert: eb view numberOfEdges
		equals: 2
		description: 'testAllowRepetitionAndUseAssociations:7.13'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.14'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.15'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.16'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.17'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.18'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:7.19'.
	self
		assert: tmp_SZUnnO6Tp35 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:7.1'.
	self
		assert: tmp_SZUnnO6Tp35 size
		equals: 2
		description: 'testAllowRepetitionAndUseAssociations:7.2'.
	tmp_kb1oGnmT4C6 := TSGridLayout on: v elements.
	self
		assert: tmp_kb1oGnmT4C6 class
		equals: TSGroup
		description: 'testAllowRepetitionAndUseAssociations:8.1'.
	self
		assert: tmp_kb1oGnmT4C6 size
		equals: 3
		description: 'testAllowRepetitionAndUseAssociations:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testConnectFrom [
	<madeBySmallAmp>
	| e tmp_T9gePw4AI03 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectFrom:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectFrom:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectFrom:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectFrom:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectFrom:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectFrom:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom:1.19'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectFrom:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom:2.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectFrom:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom:2.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectFrom:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectFrom:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom:2.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectFrom:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom:2.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectFrom:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom:2.19'.
	tmp_T9gePw4AI03 := b connectFrom: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectFrom:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectFrom:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectFrom:3.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectFrom:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectFrom:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectFrom:3.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectFrom:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectFrom:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectFrom:3.12'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testConnectFrom:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectFrom:3.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectFrom:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectFrom:3.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectFrom:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectFrom:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectFrom:3.19'.
	self
		assert: tmp_T9gePw4AI03 class
		equals: TSGroup
		description: 'testConnectFrom:3.1'.
	self
		assert: tmp_T9gePw4AI03 size
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
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testConnectFrom:4.2'.
	self
		assert: e from class
		equals: RSElement
		description: 'testConnectFrom:4.3'.
	self
		assert: e to class
		equals: RSElement
		description: 'testConnectFrom:4.4'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testConnectFrom:4.5'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testConnectFrom:4.6'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testConnectTo [
	<madeBySmallAmp>
	| e tmp_HTKDk0iRrz3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectTo:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectTo:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectTo:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectTo:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectTo:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectTo:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectTo:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo:1.19'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectTo:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectTo:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo:2.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectTo:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo:2.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectTo:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectTo:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo:2.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectTo:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo:2.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectTo:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo:2.19'.
	tmp_HTKDk0iRrz3 := b connectTo: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectTo:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectTo:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectTo:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectTo:3.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testConnectTo:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectTo:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectTo:3.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testConnectTo:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectTo:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectTo:3.12'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testConnectTo:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectTo:3.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testConnectTo:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectTo:3.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testConnectTo:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectTo:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectTo:3.19'.
	self
		assert: tmp_HTKDk0iRrz3 class
		equals: TSGroup
		description: 'testConnectTo:3.1'.
	self
		assert: tmp_HTKDk0iRrz3 size
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
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testConnectTo:4.2'.
	self
		assert: e from class
		equals: RSElement
		description: 'testConnectTo:4.3'.
	self
		assert: e to class
		equals: RSElement
		description: 'testConnectTo:4.4'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testConnectTo:4.5'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testConnectTo:4.6'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testConnectToAll [
	<madeBySmallAmp>
	| eFrom eTo tmp_05u8ib0HNF3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectToAll:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testConnectToAll:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testConnectToAll:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectToAll:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testConnectToAll:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testConnectToAll:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll:1.19'.
	b objects: #(1 2 3).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectToAll:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll:2.5'.
	self
		assert: b toObjects size
		equals: 3
		description: 'testConnectToAll:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll:2.9'.
	self
		assert: b toElements size
		equals: 3
		description: 'testConnectToAll:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testConnectToAll:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll:2.14'.
	self
		assert: b fromElements size
		equals: 3
		description: 'testConnectToAll:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll:2.16'.
	self
		assert: b fromObjects size
		equals: 3
		description: 'testConnectToAll:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll:2.19'.
	tmp_05u8ib0HNF3 := b
		connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testConnectToAll:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testConnectToAll:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testConnectToAll:3.5'.
	self
		assert: b toObjects size
		equals: 3
		description: 'testConnectToAll:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testConnectToAll:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testConnectToAll:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testConnectToAll:3.9'.
	self
		assert: b toElements size
		equals: 3
		description: 'testConnectToAll:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testConnectToAll:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testConnectToAll:3.12'.
	self
		assert: b view numberOfEdges
		equals: 3
		description: 'testConnectToAll:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testConnectToAll:3.14'.
	self
		assert: b fromElements size
		equals: 3
		description: 'testConnectToAll:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testConnectToAll:3.16'.
	self
		assert: b fromObjects size
		equals: 3
		description: 'testConnectToAll:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testConnectToAll:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testConnectToAll:3.19'.
	self
		assert: tmp_05u8ib0HNF3 class
		equals: TSGroup
		description: 'testConnectToAll:3.1'.
	self
		assert: tmp_05u8ib0HNF3 size
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
RSEdgeBuilderAmpTest >> testDefault [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testElements [
	<madeBySmallAmp>
	| es |
	b := RSEdgeBuilder new.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testElements:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testElements:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testElements:1.4'.
	self
		assert: b moveBehind view class
		equals: UndefinedObject
		description: 'testElements:1.5'.
	self
		assert: b moveBehind view
		equals: nil
		description: 'testElements:1.6'.
	self
		assert: b toObjects class
		equals: Array
		description: 'testElements:1.7'.
	self
		assert: b toObjects size
		equals: 0
		description: 'testElements:1.8'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements:1.9'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements:1.10'.
	self
		assert: b toElements class
		equals: Array
		description: 'testElements:1.11'.
	self
		assert: b toElements size
		equals: 0
		description: 'testElements:1.12'.
	self
		assert: b view class
		equals: UndefinedObject
		description: 'testElements:1.13'.
	self assert: b view equals: nil description: 'testElements:1.14'.
	self
		assert: b fromElements class
		equals: Array
		description: 'testElements:1.15'.
	self
		assert: b fromElements size
		equals: 0
		description: 'testElements:1.16'.
	self
		assert: b fromObjects class
		equals: Array
		description: 'testElements:1.17'.
	self
		assert: b fromObjects size
		equals: 0
		description: 'testElements:1.18'.
	self
		assert: b viewElements class
		equals: Array
		description: 'testElements:1.19'.
	self
		assert: b viewElements size
		equals: 0
		description: 'testElements:1.20'.
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testElements:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testElements:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testElements:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testElements:2.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testElements:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testElements:2.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testElements:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testElements:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testElements:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testElements:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testElements:2.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testElements:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testElements:2.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testElements:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testElements:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testElements:2.19'.
	es := RSShapeBuilder box elementsOn: (1 to: 4).
	self assert: es class equals: TSGroup description: 'testElements:3.1'.
	self assert: es size equals: 4 description: 'testElements:3.2'.
	b elements: es.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testElements:4.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testElements:4.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testElements:4.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testElements:4.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testElements:4.5'.
	self
		assert: b toObjects size
		equals: 4
		description: 'testElements:4.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testElements:4.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testElements:4.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testElements:4.9'.
	self
		assert: b toElements size
		equals: 4
		description: 'testElements:4.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testElements:4.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testElements:4.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testElements:4.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testElements:4.14'.
	self
		assert: b fromElements size
		equals: 4
		description: 'testElements:4.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testElements:4.16'.
	self
		assert: b fromObjects size
		equals: 4
		description: 'testElements:4.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testElements:4.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testElements:4.19'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testElementsToLookup [
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:3.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup:3.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup:3.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup:3.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:3.12'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testElementsToLookup:3.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup:3.14'.
	self
		assert: v elements size
		equals: 0
		description: 'testElementsToLookup:3.15'.
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:4.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup:4.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup:4.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup:4.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:4.12'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testElementsToLookup:4.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup:4.14'.
	self
		assert: v elements size
		equals: 3
		description: 'testElementsToLookup:4.15'.
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:5.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testElementsToLookup:5.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testElementsToLookup:5.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testElementsToLookup:5.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testElementsToLookup:5.12'.
	self
		assert: v canvas numberOfShapes
		equals: 6
		description: 'testElementsToLookup:5.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testElementsToLookup:5.14'.
	self
		assert: v elements size
		equals: 6
		description: 'testElementsToLookup:5.15'.
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
RSEdgeBuilderAmpTest >> testFromAll [
	<madeBySmallAmp>
	| v es tmp_TxrHi4YZ0w4 tmp_pIgkRoBd566 tmp_FwmysnzulH8 tmp_QW8tayaaWs9 tmp_NttCspMgXZ10 |
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromAll:1.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testFromAll:1.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testFromAll:1.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testFromAll:1.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromAll:1.12'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testFromAll:1.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testFromAll:1.14'.
	self
		assert: v elements size
		equals: 0
		description: 'testFromAll:1.15'.
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromAll:3.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testFromAll:3.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testFromAll:3.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testFromAll:3.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromAll:3.12'.
	self
		assert: v canvas numberOfShapes
		equals: 2
		description: 'testFromAll:3.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testFromAll:3.14'.
	self
		assert: v elements size
		equals: 2
		description: 'testFromAll:3.15'.
	tmp_pIgkRoBd566 := RSEdgeBuilder new.
	self
		assert: tmp_pIgkRoBd566 class
		equals: RSEdgeBuilder
		description: 'testFromAll:4.1'.
	self
		assert: tmp_pIgkRoBd566 moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromAll:4.2'.
	self
		assert: tmp_pIgkRoBd566 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:4.3'.
	self
		assert: tmp_pIgkRoBd566 moveBehind controlPoints
		equals: nil
		description: 'testFromAll:4.4'.
	self
		assert: tmp_pIgkRoBd566 moveBehind view class
		equals: UndefinedObject
		description: 'testFromAll:4.5'.
	self
		assert: tmp_pIgkRoBd566 moveBehind view
		equals: nil
		description: 'testFromAll:4.6'.
	self
		assert: tmp_pIgkRoBd566 toObjects class
		equals: Array
		description: 'testFromAll:4.7'.
	self
		assert: tmp_pIgkRoBd566 toObjects size
		equals: 0
		description: 'testFromAll:4.8'.
	self
		assert: tmp_pIgkRoBd566 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:4.9'.
	self
		assert: tmp_pIgkRoBd566 controlPoints
		equals: nil
		description: 'testFromAll:4.10'.
	self
		assert: tmp_pIgkRoBd566 toElements class
		equals: Array
		description: 'testFromAll:4.11'.
	self
		assert: tmp_pIgkRoBd566 toElements size
		equals: 0
		description: 'testFromAll:4.12'.
	self
		assert: tmp_pIgkRoBd566 view class
		equals: UndefinedObject
		description: 'testFromAll:4.13'.
	self
		assert: tmp_pIgkRoBd566 view
		equals: nil
		description: 'testFromAll:4.14'.
	self
		assert: tmp_pIgkRoBd566 fromElements class
		equals: Array
		description: 'testFromAll:4.15'.
	self
		assert: tmp_pIgkRoBd566 fromElements size
		equals: 0
		description: 'testFromAll:4.16'.
	self
		assert: tmp_pIgkRoBd566 fromObjects class
		equals: Array
		description: 'testFromAll:4.17'.
	self
		assert: tmp_pIgkRoBd566 fromObjects size
		equals: 0
		description: 'testFromAll:4.18'.
	self
		assert: tmp_pIgkRoBd566 viewElements class
		equals: Array
		description: 'testFromAll:4.19'.
	self
		assert: tmp_pIgkRoBd566 viewElements size
		equals: 0
		description: 'testFromAll:4.20'.
	tmp_NttCspMgXZ10 := TSTreeLayout on: es.
	self
		assert: tmp_NttCspMgXZ10 class
		equals: TSGroup
		description: 'testFromAll:5.1'.
	self
		assert: tmp_NttCspMgXZ10 size
		equals: 2
		description: 'testFromAll:5.2'.
	tmp_FwmysnzulH8 := RSEdgeBuilder new.
	self
		assert: tmp_FwmysnzulH8 class
		equals: RSEdgeBuilder
		description: 'testFromAll:6.1'.
	self
		assert: tmp_FwmysnzulH8 moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromAll:6.2'.
	self
		assert: tmp_FwmysnzulH8 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:6.3'.
	self
		assert: tmp_FwmysnzulH8 moveBehind controlPoints
		equals: nil
		description: 'testFromAll:6.4'.
	self
		assert: tmp_FwmysnzulH8 moveBehind view class
		equals: UndefinedObject
		description: 'testFromAll:6.5'.
	self
		assert: tmp_FwmysnzulH8 moveBehind view
		equals: nil
		description: 'testFromAll:6.6'.
	self
		assert: tmp_FwmysnzulH8 toObjects class
		equals: Array
		description: 'testFromAll:6.7'.
	self
		assert: tmp_FwmysnzulH8 toObjects size
		equals: 0
		description: 'testFromAll:6.8'.
	self
		assert: tmp_FwmysnzulH8 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:6.9'.
	self
		assert: tmp_FwmysnzulH8 controlPoints
		equals: nil
		description: 'testFromAll:6.10'.
	self
		assert: tmp_FwmysnzulH8 toElements class
		equals: Array
		description: 'testFromAll:6.11'.
	self
		assert: tmp_FwmysnzulH8 toElements size
		equals: 0
		description: 'testFromAll:6.12'.
	self
		assert: tmp_FwmysnzulH8 view class
		equals: UndefinedObject
		description: 'testFromAll:6.13'.
	self
		assert: tmp_FwmysnzulH8 view
		equals: nil
		description: 'testFromAll:6.14'.
	self
		assert: tmp_FwmysnzulH8 fromElements class
		equals: Array
		description: 'testFromAll:6.15'.
	self
		assert: tmp_FwmysnzulH8 fromElements size
		equals: 0
		description: 'testFromAll:6.16'.
	self
		assert: tmp_FwmysnzulH8 fromObjects class
		equals: Array
		description: 'testFromAll:6.17'.
	self
		assert: tmp_FwmysnzulH8 fromObjects size
		equals: 0
		description: 'testFromAll:6.18'.
	self
		assert: tmp_FwmysnzulH8 viewElements class
		equals: Array
		description: 'testFromAll:6.19'.
	self
		assert: tmp_FwmysnzulH8 viewElements size
		equals: 0
		description: 'testFromAll:6.20'.
	self
		should: [ tmp_FwmysnzulH8 objects: (1 to: 2) ]
		raise: AssertionFailure
		description: 'testFromAll:7.1'.
	tmp_QW8tayaaWs9 := RSEdgeBuilder new.
	self
		assert: tmp_QW8tayaaWs9 class
		equals: RSEdgeBuilder
		description: 'testFromAll:8.1'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromAll:8.2'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:8.3'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind controlPoints
		equals: nil
		description: 'testFromAll:8.4'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind view class
		equals: UndefinedObject
		description: 'testFromAll:8.5'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind view
		equals: nil
		description: 'testFromAll:8.6'.
	self
		assert: tmp_QW8tayaaWs9 toObjects class
		equals: Array
		description: 'testFromAll:8.7'.
	self
		assert: tmp_QW8tayaaWs9 toObjects size
		equals: 0
		description: 'testFromAll:8.8'.
	self
		assert: tmp_QW8tayaaWs9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:8.9'.
	self
		assert: tmp_QW8tayaaWs9 controlPoints
		equals: nil
		description: 'testFromAll:8.10'.
	self
		assert: tmp_QW8tayaaWs9 toElements class
		equals: Array
		description: 'testFromAll:8.11'.
	self
		assert: tmp_QW8tayaaWs9 toElements size
		equals: 0
		description: 'testFromAll:8.12'.
	self
		assert: tmp_QW8tayaaWs9 view class
		equals: UndefinedObject
		description: 'testFromAll:8.13'.
	self
		assert: tmp_QW8tayaaWs9 view
		equals: nil
		description: 'testFromAll:8.14'.
	self
		assert: tmp_QW8tayaaWs9 fromElements class
		equals: Array
		description: 'testFromAll:8.15'.
	self
		assert: tmp_QW8tayaaWs9 fromElements size
		equals: 0
		description: 'testFromAll:8.16'.
	self
		assert: tmp_QW8tayaaWs9 fromObjects class
		equals: Array
		description: 'testFromAll:8.17'.
	self
		assert: tmp_QW8tayaaWs9 fromObjects size
		equals: 0
		description: 'testFromAll:8.18'.
	self
		assert: tmp_QW8tayaaWs9 viewElements class
		equals: Array
		description: 'testFromAll:8.19'.
	self
		assert: tmp_QW8tayaaWs9 viewElements size
		equals: 0
		description: 'testFromAll:8.20'.
	tmp_TxrHi4YZ0w4 := tmp_QW8tayaaWs9
		connectFromAll: (Array with: 1)
		to: 2.
	self
		assert: tmp_QW8tayaaWs9 class
		equals: RSEdgeBuilder
		description: 'testFromAll:9.1'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromAll:9.2'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:9.3'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind controlPoints
		equals: nil
		description: 'testFromAll:9.4'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind view class
		equals: UndefinedObject
		description: 'testFromAll:9.5'.
	self
		assert: tmp_QW8tayaaWs9 moveBehind view
		equals: nil
		description: 'testFromAll:9.6'.
	self
		assert: tmp_QW8tayaaWs9 toObjects class
		equals: Array
		description: 'testFromAll:9.7'.
	self
		assert: tmp_QW8tayaaWs9 toObjects size
		equals: 0
		description: 'testFromAll:9.8'.
	self
		assert: tmp_QW8tayaaWs9 controlPoints class
		equals: UndefinedObject
		description: 'testFromAll:9.9'.
	self
		assert: tmp_QW8tayaaWs9 controlPoints
		equals: nil
		description: 'testFromAll:9.10'.
	self
		assert: tmp_QW8tayaaWs9 toElements class
		equals: Array
		description: 'testFromAll:9.11'.
	self
		assert: tmp_QW8tayaaWs9 toElements size
		equals: 0
		description: 'testFromAll:9.12'.
	self
		assert: tmp_QW8tayaaWs9 view class
		equals: UndefinedObject
		description: 'testFromAll:9.13'.
	self
		assert: tmp_QW8tayaaWs9 view
		equals: nil
		description: 'testFromAll:9.14'.
	self
		assert: tmp_QW8tayaaWs9 fromElements class
		equals: Array
		description: 'testFromAll:9.15'.
	self
		assert: tmp_QW8tayaaWs9 fromElements size
		equals: 0
		description: 'testFromAll:9.16'.
	self
		assert: tmp_QW8tayaaWs9 fromObjects class
		equals: Array
		description: 'testFromAll:9.17'.
	self
		assert: tmp_QW8tayaaWs9 fromObjects size
		equals: 0
		description: 'testFromAll:9.18'.
	self
		assert: tmp_QW8tayaaWs9 viewElements class
		equals: Array
		description: 'testFromAll:9.19'.
	self
		assert: tmp_QW8tayaaWs9 viewElements size
		equals: 0
		description: 'testFromAll:9.20'.
	self
		assert: tmp_TxrHi4YZ0w4 class
		equals: TSGroup
		description: 'testFromAll:9.1'.
	self
		assert: tmp_TxrHi4YZ0w4 size
		equals: 0
		description: 'testFromAll:9.2'.
	TSTreeLayout on: es
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testFromObjects [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| edges tmp_499zP3zpLY3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjects:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjects:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjects:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjects:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects:1.19'.
	b fromObjects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjects:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjects:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects:2.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects:2.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects:2.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjects:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects:2.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjects:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects:2.19'.
	tmp_499zP3zpLY3 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjects:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjects:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects:3.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects:3.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects:3.12'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testFromObjects:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects:3.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjects:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects:3.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjects:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects:3.19'.
	self
		assert: tmp_499zP3zpLY3 class
		equals: TSGroup
		description: 'testFromObjects:3.1'.
	self
		assert: tmp_499zP3zpLY3 size
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
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testFromObjects:4.8'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testFromObjects:4.9'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testFromObjects:4.10'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testFromObjects:4.11'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testFromObjects:4.12'.
	self
		assert: view canvas numberOfShapes
		equals: 12
		description: 'testFromObjects:4.13'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testFromObjects:4.14'.
	self
		assert: view elements size
		equals: 10
		description: 'testFromObjects:4.15'.
	self
		assert: edges class
		equals: TSGroup
		description: 'testFromObjects:4.1'.
	self assert: edges size equals: 2 description: 'testFromObjects:4.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testFromObjects02 [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| tmp_YBX7dcLKYO3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjects02:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects02:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjects02:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjects02:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02:1.19'.
	b fromObjects: #(1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjects02:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02:2.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02:2.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjects02:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02:2.14'.
	self
		assert: b fromElements size
		equals: 1
		description: 'testFromObjects02:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02:2.16'.
	self
		assert: b fromObjects size
		equals: 1
		description: 'testFromObjects02:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02:2.19'.
	tmp_YBX7dcLKYO3 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjects02:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjects02:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjects02:3.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjects02:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjects02:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjects02:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjects02:3.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjects02:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjects02:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjects02:3.12'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testFromObjects02:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjects02:3.14'.
	self
		assert: b fromElements size
		equals: 1
		description: 'testFromObjects02:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjects02:3.16'.
	self
		assert: b fromObjects size
		equals: 1
		description: 'testFromObjects02:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjects02:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjects02:3.19'.
	self
		assert: tmp_YBX7dcLKYO3 class
		equals: TSGroup
		description: 'testFromObjects02:3.1'.
	self
		assert: tmp_YBX7dcLKYO3 size
		equals: 1
		description: 'testFromObjects02:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testFromObjectsError [
	"
view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testFromObjectsToElements [
	<madeBySmallAmp>
	| edges |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjectsToElements:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testFromObjectsToElements:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjectsToElements:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testFromObjectsToElements:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjectsToElements:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjectsToElements:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testFromObjectsToElements:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testFromObjectsToElements:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testFromObjectsToElements:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjectsToElements:1.19'.
	edges := b
		fromObjects: #(1 2);
		toElements: (elements copyFrom: 10 to: 10);
		connectTo: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testFromObjectsToElements:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testFromObjectsToElements:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.5'.
	self
		assert: b toObjects size
		equals: 1
		description: 'testFromObjectsToElements:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testFromObjectsToElements:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testFromObjectsToElements:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.9'.
	self
		assert: b toElements size
		equals: 1
		description: 'testFromObjectsToElements:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testFromObjectsToElements:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testFromObjectsToElements:2.12'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testFromObjectsToElements:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testFromObjectsToElements:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testFromObjectsToElements:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testFromObjectsToElements:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testFromObjectsToElements:2.19'.
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
RSEdgeBuilderAmpTest >> testInit [
	<madeBySmallAmp>
	| eb |
	eb := RSEdgeBuilder new.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testInit:1.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testInit:1.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testInit:1.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testInit:1.4'.
	self
		assert: eb moveBehind view class
		equals: UndefinedObject
		description: 'testInit:1.5'.
	self
		assert: eb moveBehind view
		equals: nil
		description: 'testInit:1.6'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testInit:1.7'.
	self assert: eb toObjects size equals: 0 description: 'testInit:1.8'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testInit:1.9'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testInit:1.10'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testInit:1.11'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testInit:1.12'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testInit:1.13'.
	self assert: eb view equals: nil description: 'testInit:1.14'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testInit:1.15'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testInit:1.16'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testInit:1.17'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testInit:1.18'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testInit:1.19'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testInit:1.20'.
	eb allowRepetition.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testInit:2.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testInit:2.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testInit:2.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testInit:2.4'.
	self
		assert: eb moveBehind view class
		equals: UndefinedObject
		description: 'testInit:2.5'.
	self
		assert: eb moveBehind view
		equals: nil
		description: 'testInit:2.6'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testInit:2.7'.
	self assert: eb toObjects size equals: 0 description: 'testInit:2.8'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testInit:2.9'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testInit:2.10'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testInit:2.11'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testInit:2.12'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testInit:2.13'.
	self assert: eb view equals: nil description: 'testInit:2.14'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testInit:2.15'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testInit:2.16'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testInit:2.17'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testInit:2.18'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testInit:2.19'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testInit:2.20'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testNoMoveBehind [
	<madeBySmallAmp>
	| tmp_64to01dQKX3 tmp_3PQMVDPsnw4 |
	tmp_64to01dQKX3 := RSEdgeBuilder line.
	self
		assert: tmp_64to01dQKX3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:1.1'.
	self
		assert: tmp_64to01dQKX3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:1.2'.
	self
		assert: tmp_64to01dQKX3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:1.3'.
	self
		assert: tmp_64to01dQKX3 moveBehind controlPoints
		equals: nil
		description: 'testNoMoveBehind:1.4'.
	self
		assert: tmp_64to01dQKX3 moveBehind view class
		equals: UndefinedObject
		description: 'testNoMoveBehind:1.5'.
	self
		assert: tmp_64to01dQKX3 moveBehind view
		equals: nil
		description: 'testNoMoveBehind:1.6'.
	self
		assert: tmp_64to01dQKX3 toObjects class
		equals: Array
		description: 'testNoMoveBehind:1.7'.
	self
		assert: tmp_64to01dQKX3 toObjects size
		equals: 0
		description: 'testNoMoveBehind:1.8'.
	self
		assert: tmp_64to01dQKX3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:1.9'.
	self
		assert: tmp_64to01dQKX3 controlPoints
		equals: nil
		description: 'testNoMoveBehind:1.10'.
	self
		assert: tmp_64to01dQKX3 toElements class
		equals: Array
		description: 'testNoMoveBehind:1.11'.
	self
		assert: tmp_64to01dQKX3 toElements size
		equals: 0
		description: 'testNoMoveBehind:1.12'.
	self
		assert: tmp_64to01dQKX3 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind:1.13'.
	self
		assert: tmp_64to01dQKX3 view
		equals: nil
		description: 'testNoMoveBehind:1.14'.
	self
		assert: tmp_64to01dQKX3 fromElements class
		equals: Array
		description: 'testNoMoveBehind:1.15'.
	self
		assert: tmp_64to01dQKX3 fromElements size
		equals: 0
		description: 'testNoMoveBehind:1.16'.
	self
		assert: tmp_64to01dQKX3 fromObjects class
		equals: Array
		description: 'testNoMoveBehind:1.17'.
	self
		assert: tmp_64to01dQKX3 fromObjects size
		equals: 0
		description: 'testNoMoveBehind:1.18'.
	self
		assert: tmp_64to01dQKX3 viewElements class
		equals: Array
		description: 'testNoMoveBehind:1.19'.
	self
		assert: tmp_64to01dQKX3 viewElements size
		equals: 0
		description: 'testNoMoveBehind:1.20'.
	tmp_64to01dQKX3 view: view.
	self
		assert: tmp_64to01dQKX3 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:2.1'.
	self
		assert: tmp_64to01dQKX3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:2.2'.
	self
		assert: tmp_64to01dQKX3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:2.3'.
	self
		assert: tmp_64to01dQKX3 moveBehind controlPoints
		equals: nil
		description: 'testNoMoveBehind:2.4'.
	self
		assert: tmp_64to01dQKX3 toObjects class
		equals: TSGroup
		description: 'testNoMoveBehind:2.5'.
	self
		assert: tmp_64to01dQKX3 toObjects size
		equals: 10
		description: 'testNoMoveBehind:2.6'.
	self
		assert: tmp_64to01dQKX3 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:2.7'.
	self
		assert: tmp_64to01dQKX3 controlPoints
		equals: nil
		description: 'testNoMoveBehind:2.8'.
	self
		assert: tmp_64to01dQKX3 toElements class
		equals: TSGroup
		description: 'testNoMoveBehind:2.9'.
	self
		assert: tmp_64to01dQKX3 toElements size
		equals: 10
		description: 'testNoMoveBehind:2.10'.
	self
		assert: tmp_64to01dQKX3 view class
		equals: RSView
		description: 'testNoMoveBehind:2.11'.
	self
		assert: tmp_64to01dQKX3 view numberOfEdges class
		equals: SmallInteger
		description: 'testNoMoveBehind:2.12'.
	self
		assert: tmp_64to01dQKX3 view numberOfEdges
		equals: 0
		description: 'testNoMoveBehind:2.13'.
	self
		assert: tmp_64to01dQKX3 fromElements class
		equals: TSGroup
		description: 'testNoMoveBehind:2.14'.
	self
		assert: tmp_64to01dQKX3 fromElements size
		equals: 10
		description: 'testNoMoveBehind:2.15'.
	self
		assert: tmp_64to01dQKX3 fromObjects class
		equals: TSGroup
		description: 'testNoMoveBehind:2.16'.
	self
		assert: tmp_64to01dQKX3 fromObjects size
		equals: 10
		description: 'testNoMoveBehind:2.17'.
	self
		assert: tmp_64to01dQKX3 viewElements class
		equals: TSGroup
		description: 'testNoMoveBehind:2.18'.
	self
		assert: tmp_64to01dQKX3 viewElements size
		equals: 10
		description: 'testNoMoveBehind:2.19'.
	tmp_3PQMVDPsnw4 := RSEdgeBuilder line.
	self
		assert: tmp_3PQMVDPsnw4 class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:3.1'.
	self
		assert: tmp_3PQMVDPsnw4 moveBehind class
		equals: RSEdgeBuilder
		description: 'testNoMoveBehind:3.2'.
	self
		assert: tmp_3PQMVDPsnw4 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:3.3'.
	self
		assert: tmp_3PQMVDPsnw4 moveBehind controlPoints
		equals: nil
		description: 'testNoMoveBehind:3.4'.
	self
		assert: tmp_3PQMVDPsnw4 moveBehind view class
		equals: UndefinedObject
		description: 'testNoMoveBehind:3.5'.
	self
		assert: tmp_3PQMVDPsnw4 moveBehind view
		equals: nil
		description: 'testNoMoveBehind:3.6'.
	self
		assert: tmp_3PQMVDPsnw4 toObjects class
		equals: Array
		description: 'testNoMoveBehind:3.7'.
	self
		assert: tmp_3PQMVDPsnw4 toObjects size
		equals: 0
		description: 'testNoMoveBehind:3.8'.
	self
		assert: tmp_3PQMVDPsnw4 controlPoints class
		equals: UndefinedObject
		description: 'testNoMoveBehind:3.9'.
	self
		assert: tmp_3PQMVDPsnw4 controlPoints
		equals: nil
		description: 'testNoMoveBehind:3.10'.
	self
		assert: tmp_3PQMVDPsnw4 toElements class
		equals: Array
		description: 'testNoMoveBehind:3.11'.
	self
		assert: tmp_3PQMVDPsnw4 toElements size
		equals: 0
		description: 'testNoMoveBehind:3.12'.
	self
		assert: tmp_3PQMVDPsnw4 view class
		equals: UndefinedObject
		description: 'testNoMoveBehind:3.13'.
	self
		assert: tmp_3PQMVDPsnw4 view
		equals: nil
		description: 'testNoMoveBehind:3.14'.
	self
		assert: tmp_3PQMVDPsnw4 fromElements class
		equals: Array
		description: 'testNoMoveBehind:3.15'.
	self
		assert: tmp_3PQMVDPsnw4 fromElements size
		equals: 0
		description: 'testNoMoveBehind:3.16'.
	self
		assert: tmp_3PQMVDPsnw4 fromObjects class
		equals: Array
		description: 'testNoMoveBehind:3.17'.
	self
		assert: tmp_3PQMVDPsnw4 fromObjects size
		equals: 0
		description: 'testNoMoveBehind:3.18'.
	self
		assert: tmp_3PQMVDPsnw4 viewElements class
		equals: Array
		description: 'testNoMoveBehind:3.19'.
	self
		assert: tmp_3PQMVDPsnw4 viewElements size
		equals: 0
		description: 'testNoMoveBehind:3.20'.
	self
		should: [ tmp_3PQMVDPsnw4
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testNoMoveBehind:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testObjectFrom [
	<madeBySmallAmp>
	| e tmp_EbMOqhEthq2 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjectFrom:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjectFrom:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjectFrom:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectFrom:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjectFrom:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjectFrom:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom:1.19'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjectFrom:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom:2.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectFrom:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom:2.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectFrom:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectFrom:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom:2.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectFrom:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom:2.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectFrom:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom:2.19'.
	tmp_EbMOqhEthq2 := b connectFrom: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjectFrom:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjectFrom:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectFrom:3.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectFrom:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectFrom:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectFrom:3.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectFrom:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectFrom:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectFrom:3.12'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testObjectFrom:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectFrom:3.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectFrom:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectFrom:3.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectFrom:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectFrom:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectFrom:3.19'.
	self
		assert: tmp_EbMOqhEthq2 class
		equals: TSGroup
		description: 'testObjectFrom:3.1'.
	self
		assert: tmp_EbMOqhEthq2 size
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
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testObjectFrom:4.2'.
	self
		assert: e from class
		equals: RSElement
		description: 'testObjectFrom:4.3'.
	self
		assert: e to class
		equals: RSElement
		description: 'testObjectFrom:4.4'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testObjectFrom:4.5'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testObjectFrom:4.6'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testObjectTo [
	<madeBySmallAmp>
	| e tmp_kLAQKRP0JS2 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjectTo:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjectTo:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjectTo:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjectTo:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectTo:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjectTo:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjectTo:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo:1.19'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjectTo:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjectTo:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo:2.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectTo:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo:2.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectTo:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjectTo:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo:2.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectTo:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo:2.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectTo:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo:2.19'.
	tmp_kLAQKRP0JS2 := b connectTo: [ :v | v - 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjectTo:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjectTo:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjectTo:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjectTo:3.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testObjectTo:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjectTo:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjectTo:3.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testObjectTo:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjectTo:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjectTo:3.12'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testObjectTo:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjectTo:3.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testObjectTo:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjectTo:3.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testObjectTo:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjectTo:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjectTo:3.19'.
	self
		assert: tmp_kLAQKRP0JS2 class
		equals: TSGroup
		description: 'testObjectTo:3.1'.
	self
		assert: tmp_kLAQKRP0JS2 size
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
		assert: e attachPoint class
		equals: TSCenteredAttachPoint
		description: 'testObjectTo:4.2'.
	self
		assert: e from class
		equals: RSElement
		description: 'testObjectTo:4.3'.
	self
		assert: e to class
		equals: RSElement
		description: 'testObjectTo:4.4'.
	self
		assert: e controlPoints class
		equals: UndefinedObject
		description: 'testObjectTo:4.5'.
	self
		assert: e controlPoints
		equals: nil
		description: 'testObjectTo:4.6'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testObjects [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjects:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjects:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjects:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects:1.19'.
	b objects: (1 to: 5).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjects:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjects:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjects:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects:2.5'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects:2.9'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects:2.14'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects:2.16'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects:2.19'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testObjects02 [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects02:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjects02:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjects02:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjects02:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects02:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects02:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects02:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects02:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects02:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects02:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects02:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects02:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects02:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects02:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects02:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects02:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects02:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects02:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects02:1.19'.
	b objects: #even.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects02:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjects02:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjects02:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjects02:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects02:2.5'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects02:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects02:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects02:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects02:2.9'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects02:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects02:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects02:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects02:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects02:2.14'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects02:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects02:2.16'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects02:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects02:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects02:2.19'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testObjects03 [
	<madeBySmallAmp>
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects03:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjects03:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjects03:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjects03:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects03:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testObjects03:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects03:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects03:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects03:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testObjects03:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects03:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects03:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects03:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects03:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testObjects03:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects03:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testObjects03:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects03:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects03:1.19'.
	b objects: #odd.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testObjects03:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testObjects03:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testObjects03:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testObjects03:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testObjects03:2.5'.
	self
		assert: b toObjects size
		equals: 5
		description: 'testObjects03:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testObjects03:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testObjects03:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testObjects03:2.9'.
	self
		assert: b toElements size
		equals: 5
		description: 'testObjects03:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testObjects03:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testObjects03:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testObjects03:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testObjects03:2.14'.
	self
		assert: b fromElements size
		equals: 5
		description: 'testObjects03:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testObjects03:2.16'.
	self
		assert: b fromObjects size
		equals: 5
		description: 'testObjects03:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testObjects03:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testObjects03:2.19'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testShouldAllowBidirection [
	<madeBySmallAmp>
	| tmp_RL4qv9d8be4 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldAllowBidirection:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldAllowBidirection:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldAllowBidirection:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldAllowBidirection:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:1.19'.
	b noBidirectional.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldAllowBidirection:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldAllowBidirection:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldAllowBidirection:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldAllowBidirection:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:2.19'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldAllowBidirection:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldAllowBidirection:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:3.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldAllowBidirection:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldAllowBidirection:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldAllowBidirection:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:3.19'.
	tmp_RL4qv9d8be4 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:4.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testShouldAllowBidirection:4.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:4.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:4.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldAllowBidirection:4.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:4.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldAllowBidirection:4.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldAllowBidirection:4.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldAllowBidirection:4.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:4.12'.
	self
		assert: b view numberOfEdges
		equals: 1
		description: 'testShouldAllowBidirection:4.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldAllowBidirection:4.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldAllowBidirection:4.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldAllowBidirection:4.19'.
	self
		assert: tmp_RL4qv9d8be4 class
		equals: TSGroup
		description: 'testShouldAllowBidirection:4.1'.
	self
		assert: tmp_RL4qv9d8be4 size
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
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:5.8'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testShouldAllowBidirection:5.9'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testShouldAllowBidirection:5.10'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testShouldAllowBidirection:5.11'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testShouldAllowBidirection:5.12'.
	self
		assert: view canvas numberOfShapes
		equals: 11
		description: 'testShouldAllowBidirection:5.13'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testShouldAllowBidirection:5.14'.
	self
		assert: view elements size
		equals: 10
		description: 'testShouldAllowBidirection:5.15'.
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
RSEdgeBuilderAmpTest >> testShouldNotAllowBidirection [
	<madeBySmallAmp>
	| tmp_45oAx36GjO3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldNotAllowBidirection:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:1.19'.
	b objects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testShouldNotAllowBidirection:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:2.19'.
	tmp_45oAx36GjO3 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testShouldNotAllowBidirection:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testShouldNotAllowBidirection:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testShouldNotAllowBidirection:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testShouldNotAllowBidirection:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testShouldNotAllowBidirection:3.12'.
	self
		assert: b view numberOfEdges
		equals: 2
		description: 'testShouldNotAllowBidirection:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.14'.
	self
		assert: b fromElements size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.16'.
	self
		assert: b fromObjects size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testShouldNotAllowBidirection:3.19'.
	self
		assert: tmp_45oAx36GjO3 class
		equals: TSGroup
		description: 'testShouldNotAllowBidirection:3.1'.
	self
		assert: tmp_45oAx36GjO3 size
		equals: 2
		description: 'testShouldNotAllowBidirection:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSimple [
	<madeBySmallAmp>
	| tmp_S8n9iVpsl03 tmp_wqCoTYLUVz4 |
	tmp_S8n9iVpsl03 := RSEdgeBuilder line.
	self
		assert: tmp_S8n9iVpsl03 class
		equals: RSEdgeBuilder
		description: 'testSimple:1.1'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple:1.2'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple:1.3'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind controlPoints
		equals: nil
		description: 'testSimple:1.4'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple:1.5'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind view
		equals: nil
		description: 'testSimple:1.6'.
	self
		assert: tmp_S8n9iVpsl03 toObjects class
		equals: Array
		description: 'testSimple:1.7'.
	self
		assert: tmp_S8n9iVpsl03 toObjects size
		equals: 0
		description: 'testSimple:1.8'.
	self
		assert: tmp_S8n9iVpsl03 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:1.9'.
	self
		assert: tmp_S8n9iVpsl03 controlPoints
		equals: nil
		description: 'testSimple:1.10'.
	self
		assert: tmp_S8n9iVpsl03 toElements class
		equals: Array
		description: 'testSimple:1.11'.
	self
		assert: tmp_S8n9iVpsl03 toElements size
		equals: 0
		description: 'testSimple:1.12'.
	self
		assert: tmp_S8n9iVpsl03 view class
		equals: UndefinedObject
		description: 'testSimple:1.13'.
	self
		assert: tmp_S8n9iVpsl03 view
		equals: nil
		description: 'testSimple:1.14'.
	self
		assert: tmp_S8n9iVpsl03 fromElements class
		equals: Array
		description: 'testSimple:1.15'.
	self
		assert: tmp_S8n9iVpsl03 fromElements size
		equals: 0
		description: 'testSimple:1.16'.
	self
		assert: tmp_S8n9iVpsl03 fromObjects class
		equals: Array
		description: 'testSimple:1.17'.
	self
		assert: tmp_S8n9iVpsl03 fromObjects size
		equals: 0
		description: 'testSimple:1.18'.
	self
		assert: tmp_S8n9iVpsl03 viewElements class
		equals: Array
		description: 'testSimple:1.19'.
	self
		assert: tmp_S8n9iVpsl03 viewElements size
		equals: 0
		description: 'testSimple:1.20'.
	tmp_S8n9iVpsl03 view: view.
	self
		assert: tmp_S8n9iVpsl03 class
		equals: RSEdgeBuilder
		description: 'testSimple:2.1'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple:2.2'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple:2.3'.
	self
		assert: tmp_S8n9iVpsl03 moveBehind controlPoints
		equals: nil
		description: 'testSimple:2.4'.
	self
		assert: tmp_S8n9iVpsl03 toObjects class
		equals: TSGroup
		description: 'testSimple:2.5'.
	self
		assert: tmp_S8n9iVpsl03 toObjects size
		equals: 10
		description: 'testSimple:2.6'.
	self
		assert: tmp_S8n9iVpsl03 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:2.7'.
	self
		assert: tmp_S8n9iVpsl03 controlPoints
		equals: nil
		description: 'testSimple:2.8'.
	self
		assert: tmp_S8n9iVpsl03 toElements class
		equals: TSGroup
		description: 'testSimple:2.9'.
	self
		assert: tmp_S8n9iVpsl03 toElements size
		equals: 10
		description: 'testSimple:2.10'.
	self
		assert: tmp_S8n9iVpsl03 view class
		equals: RSView
		description: 'testSimple:2.11'.
	self
		assert: tmp_S8n9iVpsl03 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple:2.12'.
	self
		assert: tmp_S8n9iVpsl03 view numberOfEdges
		equals: 0
		description: 'testSimple:2.13'.
	self
		assert: tmp_S8n9iVpsl03 fromElements class
		equals: TSGroup
		description: 'testSimple:2.14'.
	self
		assert: tmp_S8n9iVpsl03 fromElements size
		equals: 10
		description: 'testSimple:2.15'.
	self
		assert: tmp_S8n9iVpsl03 fromObjects class
		equals: TSGroup
		description: 'testSimple:2.16'.
	self
		assert: tmp_S8n9iVpsl03 fromObjects size
		equals: 10
		description: 'testSimple:2.17'.
	self
		assert: tmp_S8n9iVpsl03 viewElements class
		equals: TSGroup
		description: 'testSimple:2.18'.
	self
		assert: tmp_S8n9iVpsl03 viewElements size
		equals: 10
		description: 'testSimple:2.19'.
	tmp_wqCoTYLUVz4 := RSEdgeBuilder line.
	self
		assert: tmp_wqCoTYLUVz4 class
		equals: RSEdgeBuilder
		description: 'testSimple:3.1'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple:3.2'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple:3.3'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind controlPoints
		equals: nil
		description: 'testSimple:3.4'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple:3.5'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind view
		equals: nil
		description: 'testSimple:3.6'.
	self
		assert: tmp_wqCoTYLUVz4 toObjects class
		equals: Array
		description: 'testSimple:3.7'.
	self
		assert: tmp_wqCoTYLUVz4 toObjects size
		equals: 0
		description: 'testSimple:3.8'.
	self
		assert: tmp_wqCoTYLUVz4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:3.9'.
	self
		assert: tmp_wqCoTYLUVz4 controlPoints
		equals: nil
		description: 'testSimple:3.10'.
	self
		assert: tmp_wqCoTYLUVz4 toElements class
		equals: Array
		description: 'testSimple:3.11'.
	self
		assert: tmp_wqCoTYLUVz4 toElements size
		equals: 0
		description: 'testSimple:3.12'.
	self
		assert: tmp_wqCoTYLUVz4 view class
		equals: UndefinedObject
		description: 'testSimple:3.13'.
	self
		assert: tmp_wqCoTYLUVz4 view
		equals: nil
		description: 'testSimple:3.14'.
	self
		assert: tmp_wqCoTYLUVz4 fromElements class
		equals: Array
		description: 'testSimple:3.15'.
	self
		assert: tmp_wqCoTYLUVz4 fromElements size
		equals: 0
		description: 'testSimple:3.16'.
	self
		assert: tmp_wqCoTYLUVz4 fromObjects class
		equals: Array
		description: 'testSimple:3.17'.
	self
		assert: tmp_wqCoTYLUVz4 fromObjects size
		equals: 0
		description: 'testSimple:3.18'.
	self
		assert: tmp_wqCoTYLUVz4 viewElements class
		equals: Array
		description: 'testSimple:3.19'.
	self
		assert: tmp_wqCoTYLUVz4 viewElements size
		equals: 0
		description: 'testSimple:3.20'.
	tmp_wqCoTYLUVz4
		useElementAssociations:
			(Array
				with: elements first -> elements second
				with: elements second -> elements third).
	self
		assert: tmp_wqCoTYLUVz4 class
		equals: RSEdgeBuilder
		description: 'testSimple:4.1'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple:4.2'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple:4.3'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind controlPoints
		equals: nil
		description: 'testSimple:4.4'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple:4.5'.
	self
		assert: tmp_wqCoTYLUVz4 moveBehind view
		equals: nil
		description: 'testSimple:4.6'.
	self
		assert: tmp_wqCoTYLUVz4 toObjects class
		equals: Array
		description: 'testSimple:4.7'.
	self
		assert: tmp_wqCoTYLUVz4 toObjects size
		equals: 0
		description: 'testSimple:4.8'.
	self
		assert: tmp_wqCoTYLUVz4 controlPoints class
		equals: UndefinedObject
		description: 'testSimple:4.9'.
	self
		assert: tmp_wqCoTYLUVz4 controlPoints
		equals: nil
		description: 'testSimple:4.10'.
	self
		assert: tmp_wqCoTYLUVz4 toElements class
		equals: Array
		description: 'testSimple:4.11'.
	self
		assert: tmp_wqCoTYLUVz4 toElements size
		equals: 0
		description: 'testSimple:4.12'.
	self
		assert: tmp_wqCoTYLUVz4 view class
		equals: UndefinedObject
		description: 'testSimple:4.13'.
	self
		assert: tmp_wqCoTYLUVz4 view
		equals: nil
		description: 'testSimple:4.14'.
	self
		assert: tmp_wqCoTYLUVz4 fromElements class
		equals: Array
		description: 'testSimple:4.15'.
	self
		assert: tmp_wqCoTYLUVz4 fromElements size
		equals: 0
		description: 'testSimple:4.16'.
	self
		assert: tmp_wqCoTYLUVz4 fromObjects class
		equals: Array
		description: 'testSimple:4.17'.
	self
		assert: tmp_wqCoTYLUVz4 fromObjects size
		equals: 0
		description: 'testSimple:4.18'.
	self
		assert: tmp_wqCoTYLUVz4 viewElements class
		equals: Array
		description: 'testSimple:4.19'.
	self
		assert: tmp_wqCoTYLUVz4 viewElements size
		equals: 0
		description: 'testSimple:4.20'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSimple2 [
	<madeBySmallAmp>
	| tmp_4LhBmzhci63 tmp_HpC4vIezI84 |
	tmp_4LhBmzhci63 := RSEdgeBuilder line.
	self
		assert: tmp_4LhBmzhci63 class
		equals: RSEdgeBuilder
		description: 'testSimple2:1.1'.
	self
		assert: tmp_4LhBmzhci63 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple2:1.2'.
	self
		assert: tmp_4LhBmzhci63 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:1.3'.
	self
		assert: tmp_4LhBmzhci63 moveBehind controlPoints
		equals: nil
		description: 'testSimple2:1.4'.
	self
		assert: tmp_4LhBmzhci63 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple2:1.5'.
	self
		assert: tmp_4LhBmzhci63 moveBehind view
		equals: nil
		description: 'testSimple2:1.6'.
	self
		assert: tmp_4LhBmzhci63 toObjects class
		equals: Array
		description: 'testSimple2:1.7'.
	self
		assert: tmp_4LhBmzhci63 toObjects size
		equals: 0
		description: 'testSimple2:1.8'.
	self
		assert: tmp_4LhBmzhci63 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:1.9'.
	self
		assert: tmp_4LhBmzhci63 controlPoints
		equals: nil
		description: 'testSimple2:1.10'.
	self
		assert: tmp_4LhBmzhci63 toElements class
		equals: Array
		description: 'testSimple2:1.11'.
	self
		assert: tmp_4LhBmzhci63 toElements size
		equals: 0
		description: 'testSimple2:1.12'.
	self
		assert: tmp_4LhBmzhci63 view class
		equals: UndefinedObject
		description: 'testSimple2:1.13'.
	self
		assert: tmp_4LhBmzhci63 view
		equals: nil
		description: 'testSimple2:1.14'.
	self
		assert: tmp_4LhBmzhci63 fromElements class
		equals: Array
		description: 'testSimple2:1.15'.
	self
		assert: tmp_4LhBmzhci63 fromElements size
		equals: 0
		description: 'testSimple2:1.16'.
	self
		assert: tmp_4LhBmzhci63 fromObjects class
		equals: Array
		description: 'testSimple2:1.17'.
	self
		assert: tmp_4LhBmzhci63 fromObjects size
		equals: 0
		description: 'testSimple2:1.18'.
	self
		assert: tmp_4LhBmzhci63 viewElements class
		equals: Array
		description: 'testSimple2:1.19'.
	self
		assert: tmp_4LhBmzhci63 viewElements size
		equals: 0
		description: 'testSimple2:1.20'.
	tmp_4LhBmzhci63 view: view.
	self
		assert: tmp_4LhBmzhci63 class
		equals: RSEdgeBuilder
		description: 'testSimple2:2.1'.
	self
		assert: tmp_4LhBmzhci63 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple2:2.2'.
	self
		assert: tmp_4LhBmzhci63 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:2.3'.
	self
		assert: tmp_4LhBmzhci63 moveBehind controlPoints
		equals: nil
		description: 'testSimple2:2.4'.
	self
		assert: tmp_4LhBmzhci63 toObjects class
		equals: TSGroup
		description: 'testSimple2:2.5'.
	self
		assert: tmp_4LhBmzhci63 toObjects size
		equals: 10
		description: 'testSimple2:2.6'.
	self
		assert: tmp_4LhBmzhci63 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:2.7'.
	self
		assert: tmp_4LhBmzhci63 controlPoints
		equals: nil
		description: 'testSimple2:2.8'.
	self
		assert: tmp_4LhBmzhci63 toElements class
		equals: TSGroup
		description: 'testSimple2:2.9'.
	self
		assert: tmp_4LhBmzhci63 toElements size
		equals: 10
		description: 'testSimple2:2.10'.
	self
		assert: tmp_4LhBmzhci63 view class
		equals: RSView
		description: 'testSimple2:2.11'.
	self
		assert: tmp_4LhBmzhci63 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple2:2.12'.
	self
		assert: tmp_4LhBmzhci63 view numberOfEdges
		equals: 0
		description: 'testSimple2:2.13'.
	self
		assert: tmp_4LhBmzhci63 fromElements class
		equals: TSGroup
		description: 'testSimple2:2.14'.
	self
		assert: tmp_4LhBmzhci63 fromElements size
		equals: 10
		description: 'testSimple2:2.15'.
	self
		assert: tmp_4LhBmzhci63 fromObjects class
		equals: TSGroup
		description: 'testSimple2:2.16'.
	self
		assert: tmp_4LhBmzhci63 fromObjects size
		equals: 10
		description: 'testSimple2:2.17'.
	self
		assert: tmp_4LhBmzhci63 viewElements class
		equals: TSGroup
		description: 'testSimple2:2.18'.
	self
		assert: tmp_4LhBmzhci63 viewElements size
		equals: 10
		description: 'testSimple2:2.19'.
	tmp_HpC4vIezI84 := RSEdgeBuilder line.
	self
		assert: tmp_HpC4vIezI84 class
		equals: RSEdgeBuilder
		description: 'testSimple2:3.1'.
	self
		assert: tmp_HpC4vIezI84 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple2:3.2'.
	self
		assert: tmp_HpC4vIezI84 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:3.3'.
	self
		assert: tmp_HpC4vIezI84 moveBehind controlPoints
		equals: nil
		description: 'testSimple2:3.4'.
	self
		assert: tmp_HpC4vIezI84 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple2:3.5'.
	self
		assert: tmp_HpC4vIezI84 moveBehind view
		equals: nil
		description: 'testSimple2:3.6'.
	self
		assert: tmp_HpC4vIezI84 toObjects class
		equals: Array
		description: 'testSimple2:3.7'.
	self
		assert: tmp_HpC4vIezI84 toObjects size
		equals: 0
		description: 'testSimple2:3.8'.
	self
		assert: tmp_HpC4vIezI84 controlPoints class
		equals: UndefinedObject
		description: 'testSimple2:3.9'.
	self
		assert: tmp_HpC4vIezI84 controlPoints
		equals: nil
		description: 'testSimple2:3.10'.
	self
		assert: tmp_HpC4vIezI84 toElements class
		equals: Array
		description: 'testSimple2:3.11'.
	self
		assert: tmp_HpC4vIezI84 toElements size
		equals: 0
		description: 'testSimple2:3.12'.
	self
		assert: tmp_HpC4vIezI84 view class
		equals: UndefinedObject
		description: 'testSimple2:3.13'.
	self
		assert: tmp_HpC4vIezI84 view
		equals: nil
		description: 'testSimple2:3.14'.
	self
		assert: tmp_HpC4vIezI84 fromElements class
		equals: Array
		description: 'testSimple2:3.15'.
	self
		assert: tmp_HpC4vIezI84 fromElements size
		equals: 0
		description: 'testSimple2:3.16'.
	self
		assert: tmp_HpC4vIezI84 fromObjects class
		equals: Array
		description: 'testSimple2:3.17'.
	self
		assert: tmp_HpC4vIezI84 fromObjects size
		equals: 0
		description: 'testSimple2:3.18'.
	self
		assert: tmp_HpC4vIezI84 viewElements class
		equals: Array
		description: 'testSimple2:3.19'.
	self
		assert: tmp_HpC4vIezI84 viewElements size
		equals: 0
		description: 'testSimple2:3.20'.
	self
		should: [ tmp_HpC4vIezI84
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testSimple2:4.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSimple3 [
	<madeBySmallAmp>
	| tmp_XgYodNZSJI1 tmp_wxLYjJSeCa3 tmp_RrerPyfO3G5 tmp_OpOTSomisR7 tmp_c91apt5SZj8 |
	tmp_wxLYjJSeCa3 := RSEdgeBuilder line.
	self
		assert: tmp_wxLYjJSeCa3 class
		equals: RSEdgeBuilder
		description: 'testSimple3:1.1'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple3:1.2'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:1.3'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind controlPoints
		equals: nil
		description: 'testSimple3:1.4'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple3:1.5'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind view
		equals: nil
		description: 'testSimple3:1.6'.
	self
		assert: tmp_wxLYjJSeCa3 toObjects class
		equals: Array
		description: 'testSimple3:1.7'.
	self
		assert: tmp_wxLYjJSeCa3 toObjects size
		equals: 0
		description: 'testSimple3:1.8'.
	self
		assert: tmp_wxLYjJSeCa3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:1.9'.
	self
		assert: tmp_wxLYjJSeCa3 controlPoints
		equals: nil
		description: 'testSimple3:1.10'.
	self
		assert: tmp_wxLYjJSeCa3 toElements class
		equals: Array
		description: 'testSimple3:1.11'.
	self
		assert: tmp_wxLYjJSeCa3 toElements size
		equals: 0
		description: 'testSimple3:1.12'.
	self
		assert: tmp_wxLYjJSeCa3 view class
		equals: UndefinedObject
		description: 'testSimple3:1.13'.
	self
		assert: tmp_wxLYjJSeCa3 view
		equals: nil
		description: 'testSimple3:1.14'.
	self
		assert: tmp_wxLYjJSeCa3 fromElements class
		equals: Array
		description: 'testSimple3:1.15'.
	self
		assert: tmp_wxLYjJSeCa3 fromElements size
		equals: 0
		description: 'testSimple3:1.16'.
	self
		assert: tmp_wxLYjJSeCa3 fromObjects class
		equals: Array
		description: 'testSimple3:1.17'.
	self
		assert: tmp_wxLYjJSeCa3 fromObjects size
		equals: 0
		description: 'testSimple3:1.18'.
	self
		assert: tmp_wxLYjJSeCa3 viewElements class
		equals: Array
		description: 'testSimple3:1.19'.
	self
		assert: tmp_wxLYjJSeCa3 viewElements size
		equals: 0
		description: 'testSimple3:1.20'.
	tmp_wxLYjJSeCa3 view: view.
	self
		assert: tmp_wxLYjJSeCa3 class
		equals: RSEdgeBuilder
		description: 'testSimple3:2.1'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple3:2.2'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:2.3'.
	self
		assert: tmp_wxLYjJSeCa3 moveBehind controlPoints
		equals: nil
		description: 'testSimple3:2.4'.
	self
		assert: tmp_wxLYjJSeCa3 toObjects class
		equals: TSGroup
		description: 'testSimple3:2.5'.
	self
		assert: tmp_wxLYjJSeCa3 toObjects size
		equals: 10
		description: 'testSimple3:2.6'.
	self
		assert: tmp_wxLYjJSeCa3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:2.7'.
	self
		assert: tmp_wxLYjJSeCa3 controlPoints
		equals: nil
		description: 'testSimple3:2.8'.
	self
		assert: tmp_wxLYjJSeCa3 toElements class
		equals: TSGroup
		description: 'testSimple3:2.9'.
	self
		assert: tmp_wxLYjJSeCa3 toElements size
		equals: 10
		description: 'testSimple3:2.10'.
	self
		assert: tmp_wxLYjJSeCa3 view class
		equals: RSView
		description: 'testSimple3:2.11'.
	self
		assert: tmp_wxLYjJSeCa3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple3:2.12'.
	self
		assert: tmp_wxLYjJSeCa3 view numberOfEdges
		equals: 0
		description: 'testSimple3:2.13'.
	self
		assert: tmp_wxLYjJSeCa3 fromElements class
		equals: TSGroup
		description: 'testSimple3:2.14'.
	self
		assert: tmp_wxLYjJSeCa3 fromElements size
		equals: 10
		description: 'testSimple3:2.15'.
	self
		assert: tmp_wxLYjJSeCa3 fromObjects class
		equals: TSGroup
		description: 'testSimple3:2.16'.
	self
		assert: tmp_wxLYjJSeCa3 fromObjects size
		equals: 10
		description: 'testSimple3:2.17'.
	self
		assert: tmp_wxLYjJSeCa3 viewElements class
		equals: TSGroup
		description: 'testSimple3:2.18'.
	self
		assert: tmp_wxLYjJSeCa3 viewElements size
		equals: 10
		description: 'testSimple3:2.19'.
	tmp_RrerPyfO3G5 := RSEdgeBuilder line.
	self
		assert: tmp_RrerPyfO3G5 class
		equals: RSEdgeBuilder
		description: 'testSimple3:3.1'.
	self
		assert: tmp_RrerPyfO3G5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple3:3.2'.
	self
		assert: tmp_RrerPyfO3G5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:3.3'.
	self
		assert: tmp_RrerPyfO3G5 moveBehind controlPoints
		equals: nil
		description: 'testSimple3:3.4'.
	self
		assert: tmp_RrerPyfO3G5 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple3:3.5'.
	self
		assert: tmp_RrerPyfO3G5 moveBehind view
		equals: nil
		description: 'testSimple3:3.6'.
	self
		assert: tmp_RrerPyfO3G5 toObjects class
		equals: Array
		description: 'testSimple3:3.7'.
	self
		assert: tmp_RrerPyfO3G5 toObjects size
		equals: 0
		description: 'testSimple3:3.8'.
	self
		assert: tmp_RrerPyfO3G5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:3.9'.
	self
		assert: tmp_RrerPyfO3G5 controlPoints
		equals: nil
		description: 'testSimple3:3.10'.
	self
		assert: tmp_RrerPyfO3G5 toElements class
		equals: Array
		description: 'testSimple3:3.11'.
	self
		assert: tmp_RrerPyfO3G5 toElements size
		equals: 0
		description: 'testSimple3:3.12'.
	self
		assert: tmp_RrerPyfO3G5 view class
		equals: UndefinedObject
		description: 'testSimple3:3.13'.
	self
		assert: tmp_RrerPyfO3G5 view
		equals: nil
		description: 'testSimple3:3.14'.
	self
		assert: tmp_RrerPyfO3G5 fromElements class
		equals: Array
		description: 'testSimple3:3.15'.
	self
		assert: tmp_RrerPyfO3G5 fromElements size
		equals: 0
		description: 'testSimple3:3.16'.
	self
		assert: tmp_RrerPyfO3G5 fromObjects class
		equals: Array
		description: 'testSimple3:3.17'.
	self
		assert: tmp_RrerPyfO3G5 fromObjects size
		equals: 0
		description: 'testSimple3:3.18'.
	self
		assert: tmp_RrerPyfO3G5 viewElements class
		equals: Array
		description: 'testSimple3:3.19'.
	self
		assert: tmp_RrerPyfO3G5 viewElements size
		equals: 0
		description: 'testSimple3:3.20'.
	self
		should: [ tmp_RrerPyfO3G5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple3:4.1'.
	tmp_OpOTSomisR7 := RSEdgeBuilder line.
	self
		assert: tmp_OpOTSomisR7 class
		equals: RSEdgeBuilder
		description: 'testSimple3:5.1'.
	self
		assert: tmp_OpOTSomisR7 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple3:5.2'.
	self
		assert: tmp_OpOTSomisR7 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:5.3'.
	self
		assert: tmp_OpOTSomisR7 moveBehind controlPoints
		equals: nil
		description: 'testSimple3:5.4'.
	self
		assert: tmp_OpOTSomisR7 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple3:5.5'.
	self
		assert: tmp_OpOTSomisR7 moveBehind view
		equals: nil
		description: 'testSimple3:5.6'.
	self
		assert: tmp_OpOTSomisR7 toObjects class
		equals: Array
		description: 'testSimple3:5.7'.
	self
		assert: tmp_OpOTSomisR7 toObjects size
		equals: 0
		description: 'testSimple3:5.8'.
	self
		assert: tmp_OpOTSomisR7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:5.9'.
	self
		assert: tmp_OpOTSomisR7 controlPoints
		equals: nil
		description: 'testSimple3:5.10'.
	self
		assert: tmp_OpOTSomisR7 toElements class
		equals: Array
		description: 'testSimple3:5.11'.
	self
		assert: tmp_OpOTSomisR7 toElements size
		equals: 0
		description: 'testSimple3:5.12'.
	self
		assert: tmp_OpOTSomisR7 view class
		equals: UndefinedObject
		description: 'testSimple3:5.13'.
	self
		assert: tmp_OpOTSomisR7 view
		equals: nil
		description: 'testSimple3:5.14'.
	self
		assert: tmp_OpOTSomisR7 fromElements class
		equals: Array
		description: 'testSimple3:5.15'.
	self
		assert: tmp_OpOTSomisR7 fromElements size
		equals: 0
		description: 'testSimple3:5.16'.
	self
		assert: tmp_OpOTSomisR7 fromObjects class
		equals: Array
		description: 'testSimple3:5.17'.
	self
		assert: tmp_OpOTSomisR7 fromObjects size
		equals: 0
		description: 'testSimple3:5.18'.
	self
		assert: tmp_OpOTSomisR7 viewElements class
		equals: Array
		description: 'testSimple3:5.19'.
	self
		assert: tmp_OpOTSomisR7 viewElements size
		equals: 0
		description: 'testSimple3:5.20'.
	self
		should: [ tmp_OpOTSomisR7 toObjects: (1 to: 10) ]
		raise: AssertionFailure
		description: 'testSimple3:6.1'.
	tmp_c91apt5SZj8 := RSEdgeBuilder line.
	self
		assert: tmp_c91apt5SZj8 class
		equals: RSEdgeBuilder
		description: 'testSimple3:7.1'.
	self
		assert: tmp_c91apt5SZj8 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple3:7.2'.
	self
		assert: tmp_c91apt5SZj8 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:7.3'.
	self
		assert: tmp_c91apt5SZj8 moveBehind controlPoints
		equals: nil
		description: 'testSimple3:7.4'.
	self
		assert: tmp_c91apt5SZj8 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple3:7.5'.
	self
		assert: tmp_c91apt5SZj8 moveBehind view
		equals: nil
		description: 'testSimple3:7.6'.
	self
		assert: tmp_c91apt5SZj8 toObjects class
		equals: Array
		description: 'testSimple3:7.7'.
	self
		assert: tmp_c91apt5SZj8 toObjects size
		equals: 0
		description: 'testSimple3:7.8'.
	self
		assert: tmp_c91apt5SZj8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:7.9'.
	self
		assert: tmp_c91apt5SZj8 controlPoints
		equals: nil
		description: 'testSimple3:7.10'.
	self
		assert: tmp_c91apt5SZj8 toElements class
		equals: Array
		description: 'testSimple3:7.11'.
	self
		assert: tmp_c91apt5SZj8 toElements size
		equals: 0
		description: 'testSimple3:7.12'.
	self
		assert: tmp_c91apt5SZj8 view class
		equals: UndefinedObject
		description: 'testSimple3:7.13'.
	self
		assert: tmp_c91apt5SZj8 view
		equals: nil
		description: 'testSimple3:7.14'.
	self
		assert: tmp_c91apt5SZj8 fromElements class
		equals: Array
		description: 'testSimple3:7.15'.
	self
		assert: tmp_c91apt5SZj8 fromElements size
		equals: 0
		description: 'testSimple3:7.16'.
	self
		assert: tmp_c91apt5SZj8 fromObjects class
		equals: Array
		description: 'testSimple3:7.17'.
	self
		assert: tmp_c91apt5SZj8 fromObjects size
		equals: 0
		description: 'testSimple3:7.18'.
	self
		assert: tmp_c91apt5SZj8 viewElements class
		equals: Array
		description: 'testSimple3:7.19'.
	self
		assert: tmp_c91apt5SZj8 viewElements size
		equals: 0
		description: 'testSimple3:7.20'.
	tmp_XgYodNZSJI1 := tmp_c91apt5SZj8
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_c91apt5SZj8 class
		equals: RSEdgeBuilder
		description: 'testSimple3:8.1'.
	self
		assert: tmp_c91apt5SZj8 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple3:8.2'.
	self
		assert: tmp_c91apt5SZj8 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:8.3'.
	self
		assert: tmp_c91apt5SZj8 moveBehind controlPoints
		equals: nil
		description: 'testSimple3:8.4'.
	self
		assert: tmp_c91apt5SZj8 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple3:8.5'.
	self
		assert: tmp_c91apt5SZj8 moveBehind view
		equals: nil
		description: 'testSimple3:8.6'.
	self
		assert: tmp_c91apt5SZj8 toObjects class
		equals: Array
		description: 'testSimple3:8.7'.
	self
		assert: tmp_c91apt5SZj8 toObjects size
		equals: 0
		description: 'testSimple3:8.8'.
	self
		assert: tmp_c91apt5SZj8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple3:8.9'.
	self
		assert: tmp_c91apt5SZj8 controlPoints
		equals: nil
		description: 'testSimple3:8.10'.
	self
		assert: tmp_c91apt5SZj8 toElements class
		equals: Array
		description: 'testSimple3:8.11'.
	self
		assert: tmp_c91apt5SZj8 toElements size
		equals: 0
		description: 'testSimple3:8.12'.
	self
		assert: tmp_c91apt5SZj8 view class
		equals: UndefinedObject
		description: 'testSimple3:8.13'.
	self
		assert: tmp_c91apt5SZj8 view
		equals: nil
		description: 'testSimple3:8.14'.
	self
		assert: tmp_c91apt5SZj8 fromElements class
		equals: Array
		description: 'testSimple3:8.15'.
	self
		assert: tmp_c91apt5SZj8 fromElements size
		equals: 0
		description: 'testSimple3:8.16'.
	self
		assert: tmp_c91apt5SZj8 fromObjects class
		equals: Array
		description: 'testSimple3:8.17'.
	self
		assert: tmp_c91apt5SZj8 fromObjects size
		equals: 0
		description: 'testSimple3:8.18'.
	self
		assert: tmp_c91apt5SZj8 viewElements class
		equals: Array
		description: 'testSimple3:8.19'.
	self
		assert: tmp_c91apt5SZj8 viewElements size
		equals: 0
		description: 'testSimple3:8.20'.
	self
		assert: tmp_XgYodNZSJI1 class
		equals: TSGroup
		description: 'testSimple3:8.1'.
	self
		assert: tmp_XgYodNZSJI1 size
		equals: 0
		description: 'testSimple3:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSimple4 [
	<madeBySmallAmp>
	| tmp_gTovdNtmQI1 tmp_2MJKJ5tTCG3 tmp_Sq6eHZuJKR5 tmp_8LFQ4CtIb87 tmp_dvjrcM7ZZj8 |
	tmp_2MJKJ5tTCG3 := RSEdgeBuilder line.
	self
		assert: tmp_2MJKJ5tTCG3 class
		equals: RSEdgeBuilder
		description: 'testSimple4:1.1'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple4:1.2'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:1.3'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind controlPoints
		equals: nil
		description: 'testSimple4:1.4'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple4:1.5'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind view
		equals: nil
		description: 'testSimple4:1.6'.
	self
		assert: tmp_2MJKJ5tTCG3 toObjects class
		equals: Array
		description: 'testSimple4:1.7'.
	self
		assert: tmp_2MJKJ5tTCG3 toObjects size
		equals: 0
		description: 'testSimple4:1.8'.
	self
		assert: tmp_2MJKJ5tTCG3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:1.9'.
	self
		assert: tmp_2MJKJ5tTCG3 controlPoints
		equals: nil
		description: 'testSimple4:1.10'.
	self
		assert: tmp_2MJKJ5tTCG3 toElements class
		equals: Array
		description: 'testSimple4:1.11'.
	self
		assert: tmp_2MJKJ5tTCG3 toElements size
		equals: 0
		description: 'testSimple4:1.12'.
	self
		assert: tmp_2MJKJ5tTCG3 view class
		equals: UndefinedObject
		description: 'testSimple4:1.13'.
	self
		assert: tmp_2MJKJ5tTCG3 view
		equals: nil
		description: 'testSimple4:1.14'.
	self
		assert: tmp_2MJKJ5tTCG3 fromElements class
		equals: Array
		description: 'testSimple4:1.15'.
	self
		assert: tmp_2MJKJ5tTCG3 fromElements size
		equals: 0
		description: 'testSimple4:1.16'.
	self
		assert: tmp_2MJKJ5tTCG3 fromObjects class
		equals: Array
		description: 'testSimple4:1.17'.
	self
		assert: tmp_2MJKJ5tTCG3 fromObjects size
		equals: 0
		description: 'testSimple4:1.18'.
	self
		assert: tmp_2MJKJ5tTCG3 viewElements class
		equals: Array
		description: 'testSimple4:1.19'.
	self
		assert: tmp_2MJKJ5tTCG3 viewElements size
		equals: 0
		description: 'testSimple4:1.20'.
	tmp_2MJKJ5tTCG3 view: view.
	self
		assert: tmp_2MJKJ5tTCG3 class
		equals: RSEdgeBuilder
		description: 'testSimple4:2.1'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple4:2.2'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:2.3'.
	self
		assert: tmp_2MJKJ5tTCG3 moveBehind controlPoints
		equals: nil
		description: 'testSimple4:2.4'.
	self
		assert: tmp_2MJKJ5tTCG3 toObjects class
		equals: TSGroup
		description: 'testSimple4:2.5'.
	self
		assert: tmp_2MJKJ5tTCG3 toObjects size
		equals: 10
		description: 'testSimple4:2.6'.
	self
		assert: tmp_2MJKJ5tTCG3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:2.7'.
	self
		assert: tmp_2MJKJ5tTCG3 controlPoints
		equals: nil
		description: 'testSimple4:2.8'.
	self
		assert: tmp_2MJKJ5tTCG3 toElements class
		equals: TSGroup
		description: 'testSimple4:2.9'.
	self
		assert: tmp_2MJKJ5tTCG3 toElements size
		equals: 10
		description: 'testSimple4:2.10'.
	self
		assert: tmp_2MJKJ5tTCG3 view class
		equals: RSView
		description: 'testSimple4:2.11'.
	self
		assert: tmp_2MJKJ5tTCG3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple4:2.12'.
	self
		assert: tmp_2MJKJ5tTCG3 view numberOfEdges
		equals: 0
		description: 'testSimple4:2.13'.
	self
		assert: tmp_2MJKJ5tTCG3 fromElements class
		equals: TSGroup
		description: 'testSimple4:2.14'.
	self
		assert: tmp_2MJKJ5tTCG3 fromElements size
		equals: 10
		description: 'testSimple4:2.15'.
	self
		assert: tmp_2MJKJ5tTCG3 fromObjects class
		equals: TSGroup
		description: 'testSimple4:2.16'.
	self
		assert: tmp_2MJKJ5tTCG3 fromObjects size
		equals: 10
		description: 'testSimple4:2.17'.
	self
		assert: tmp_2MJKJ5tTCG3 viewElements class
		equals: TSGroup
		description: 'testSimple4:2.18'.
	self
		assert: tmp_2MJKJ5tTCG3 viewElements size
		equals: 10
		description: 'testSimple4:2.19'.
	tmp_Sq6eHZuJKR5 := RSEdgeBuilder line.
	self
		assert: tmp_Sq6eHZuJKR5 class
		equals: RSEdgeBuilder
		description: 'testSimple4:3.1'.
	self
		assert: tmp_Sq6eHZuJKR5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple4:3.2'.
	self
		assert: tmp_Sq6eHZuJKR5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:3.3'.
	self
		assert: tmp_Sq6eHZuJKR5 moveBehind controlPoints
		equals: nil
		description: 'testSimple4:3.4'.
	self
		assert: tmp_Sq6eHZuJKR5 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple4:3.5'.
	self
		assert: tmp_Sq6eHZuJKR5 moveBehind view
		equals: nil
		description: 'testSimple4:3.6'.
	self
		assert: tmp_Sq6eHZuJKR5 toObjects class
		equals: Array
		description: 'testSimple4:3.7'.
	self
		assert: tmp_Sq6eHZuJKR5 toObjects size
		equals: 0
		description: 'testSimple4:3.8'.
	self
		assert: tmp_Sq6eHZuJKR5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:3.9'.
	self
		assert: tmp_Sq6eHZuJKR5 controlPoints
		equals: nil
		description: 'testSimple4:3.10'.
	self
		assert: tmp_Sq6eHZuJKR5 toElements class
		equals: Array
		description: 'testSimple4:3.11'.
	self
		assert: tmp_Sq6eHZuJKR5 toElements size
		equals: 0
		description: 'testSimple4:3.12'.
	self
		assert: tmp_Sq6eHZuJKR5 view class
		equals: UndefinedObject
		description: 'testSimple4:3.13'.
	self
		assert: tmp_Sq6eHZuJKR5 view
		equals: nil
		description: 'testSimple4:3.14'.
	self
		assert: tmp_Sq6eHZuJKR5 fromElements class
		equals: Array
		description: 'testSimple4:3.15'.
	self
		assert: tmp_Sq6eHZuJKR5 fromElements size
		equals: 0
		description: 'testSimple4:3.16'.
	self
		assert: tmp_Sq6eHZuJKR5 fromObjects class
		equals: Array
		description: 'testSimple4:3.17'.
	self
		assert: tmp_Sq6eHZuJKR5 fromObjects size
		equals: 0
		description: 'testSimple4:3.18'.
	self
		assert: tmp_Sq6eHZuJKR5 viewElements class
		equals: Array
		description: 'testSimple4:3.19'.
	self
		assert: tmp_Sq6eHZuJKR5 viewElements size
		equals: 0
		description: 'testSimple4:3.20'.
	self
		should: [ tmp_Sq6eHZuJKR5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4:4.1'.
	tmp_8LFQ4CtIb87 := RSEdgeBuilder line.
	self
		assert: tmp_8LFQ4CtIb87 class
		equals: RSEdgeBuilder
		description: 'testSimple4:5.1'.
	self
		assert: tmp_8LFQ4CtIb87 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple4:5.2'.
	self
		assert: tmp_8LFQ4CtIb87 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:5.3'.
	self
		assert: tmp_8LFQ4CtIb87 moveBehind controlPoints
		equals: nil
		description: 'testSimple4:5.4'.
	self
		assert: tmp_8LFQ4CtIb87 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple4:5.5'.
	self
		assert: tmp_8LFQ4CtIb87 moveBehind view
		equals: nil
		description: 'testSimple4:5.6'.
	self
		assert: tmp_8LFQ4CtIb87 toObjects class
		equals: Array
		description: 'testSimple4:5.7'.
	self
		assert: tmp_8LFQ4CtIb87 toObjects size
		equals: 0
		description: 'testSimple4:5.8'.
	self
		assert: tmp_8LFQ4CtIb87 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:5.9'.
	self
		assert: tmp_8LFQ4CtIb87 controlPoints
		equals: nil
		description: 'testSimple4:5.10'.
	self
		assert: tmp_8LFQ4CtIb87 toElements class
		equals: Array
		description: 'testSimple4:5.11'.
	self
		assert: tmp_8LFQ4CtIb87 toElements size
		equals: 0
		description: 'testSimple4:5.12'.
	self
		assert: tmp_8LFQ4CtIb87 view class
		equals: UndefinedObject
		description: 'testSimple4:5.13'.
	self
		assert: tmp_8LFQ4CtIb87 view
		equals: nil
		description: 'testSimple4:5.14'.
	self
		assert: tmp_8LFQ4CtIb87 fromElements class
		equals: Array
		description: 'testSimple4:5.15'.
	self
		assert: tmp_8LFQ4CtIb87 fromElements size
		equals: 0
		description: 'testSimple4:5.16'.
	self
		assert: tmp_8LFQ4CtIb87 fromObjects class
		equals: Array
		description: 'testSimple4:5.17'.
	self
		assert: tmp_8LFQ4CtIb87 fromObjects size
		equals: 0
		description: 'testSimple4:5.18'.
	self
		assert: tmp_8LFQ4CtIb87 viewElements class
		equals: Array
		description: 'testSimple4:5.19'.
	self
		assert: tmp_8LFQ4CtIb87 viewElements size
		equals: 0
		description: 'testSimple4:5.20'.
	self
		should: [ tmp_8LFQ4CtIb87 toObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple4:6.1'.
	tmp_dvjrcM7ZZj8 := RSEdgeBuilder line.
	self
		assert: tmp_dvjrcM7ZZj8 class
		equals: RSEdgeBuilder
		description: 'testSimple4:7.1'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple4:7.2'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:7.3'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind controlPoints
		equals: nil
		description: 'testSimple4:7.4'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple4:7.5'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind view
		equals: nil
		description: 'testSimple4:7.6'.
	self
		assert: tmp_dvjrcM7ZZj8 toObjects class
		equals: Array
		description: 'testSimple4:7.7'.
	self
		assert: tmp_dvjrcM7ZZj8 toObjects size
		equals: 0
		description: 'testSimple4:7.8'.
	self
		assert: tmp_dvjrcM7ZZj8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:7.9'.
	self
		assert: tmp_dvjrcM7ZZj8 controlPoints
		equals: nil
		description: 'testSimple4:7.10'.
	self
		assert: tmp_dvjrcM7ZZj8 toElements class
		equals: Array
		description: 'testSimple4:7.11'.
	self
		assert: tmp_dvjrcM7ZZj8 toElements size
		equals: 0
		description: 'testSimple4:7.12'.
	self
		assert: tmp_dvjrcM7ZZj8 view class
		equals: UndefinedObject
		description: 'testSimple4:7.13'.
	self
		assert: tmp_dvjrcM7ZZj8 view
		equals: nil
		description: 'testSimple4:7.14'.
	self
		assert: tmp_dvjrcM7ZZj8 fromElements class
		equals: Array
		description: 'testSimple4:7.15'.
	self
		assert: tmp_dvjrcM7ZZj8 fromElements size
		equals: 0
		description: 'testSimple4:7.16'.
	self
		assert: tmp_dvjrcM7ZZj8 fromObjects class
		equals: Array
		description: 'testSimple4:7.17'.
	self
		assert: tmp_dvjrcM7ZZj8 fromObjects size
		equals: 0
		description: 'testSimple4:7.18'.
	self
		assert: tmp_dvjrcM7ZZj8 viewElements class
		equals: Array
		description: 'testSimple4:7.19'.
	self
		assert: tmp_dvjrcM7ZZj8 viewElements size
		equals: 0
		description: 'testSimple4:7.20'.
	tmp_gTovdNtmQI1 := tmp_dvjrcM7ZZj8
		connectFrom: #yourself
		to: [ :v | v + 1 ].
	self
		assert: tmp_dvjrcM7ZZj8 class
		equals: RSEdgeBuilder
		description: 'testSimple4:8.1'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple4:8.2'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:8.3'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind controlPoints
		equals: nil
		description: 'testSimple4:8.4'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple4:8.5'.
	self
		assert: tmp_dvjrcM7ZZj8 moveBehind view
		equals: nil
		description: 'testSimple4:8.6'.
	self
		assert: tmp_dvjrcM7ZZj8 toObjects class
		equals: Array
		description: 'testSimple4:8.7'.
	self
		assert: tmp_dvjrcM7ZZj8 toObjects size
		equals: 0
		description: 'testSimple4:8.8'.
	self
		assert: tmp_dvjrcM7ZZj8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple4:8.9'.
	self
		assert: tmp_dvjrcM7ZZj8 controlPoints
		equals: nil
		description: 'testSimple4:8.10'.
	self
		assert: tmp_dvjrcM7ZZj8 toElements class
		equals: Array
		description: 'testSimple4:8.11'.
	self
		assert: tmp_dvjrcM7ZZj8 toElements size
		equals: 0
		description: 'testSimple4:8.12'.
	self
		assert: tmp_dvjrcM7ZZj8 view class
		equals: UndefinedObject
		description: 'testSimple4:8.13'.
	self
		assert: tmp_dvjrcM7ZZj8 view
		equals: nil
		description: 'testSimple4:8.14'.
	self
		assert: tmp_dvjrcM7ZZj8 fromElements class
		equals: Array
		description: 'testSimple4:8.15'.
	self
		assert: tmp_dvjrcM7ZZj8 fromElements size
		equals: 0
		description: 'testSimple4:8.16'.
	self
		assert: tmp_dvjrcM7ZZj8 fromObjects class
		equals: Array
		description: 'testSimple4:8.17'.
	self
		assert: tmp_dvjrcM7ZZj8 fromObjects size
		equals: 0
		description: 'testSimple4:8.18'.
	self
		assert: tmp_dvjrcM7ZZj8 viewElements class
		equals: Array
		description: 'testSimple4:8.19'.
	self
		assert: tmp_dvjrcM7ZZj8 viewElements size
		equals: 0
		description: 'testSimple4:8.20'.
	self
		assert: tmp_gTovdNtmQI1 class
		equals: TSGroup
		description: 'testSimple4:8.1'.
	self
		assert: tmp_gTovdNtmQI1 size
		equals: 0
		description: 'testSimple4:8.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSimple5 [
	<madeBySmallAmp>
	| tmp_vvmz6E6lS81 tmp_DMST4Jrz2B3 tmp_Ev8QcUz3Bo5 tmp_LbOzFmUcMU6 |
	tmp_DMST4Jrz2B3 := RSEdgeBuilder line.
	self
		assert: tmp_DMST4Jrz2B3 class
		equals: RSEdgeBuilder
		description: 'testSimple5:1.1'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple5:1.2'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:1.3'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind controlPoints
		equals: nil
		description: 'testSimple5:1.4'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple5:1.5'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind view
		equals: nil
		description: 'testSimple5:1.6'.
	self
		assert: tmp_DMST4Jrz2B3 toObjects class
		equals: Array
		description: 'testSimple5:1.7'.
	self
		assert: tmp_DMST4Jrz2B3 toObjects size
		equals: 0
		description: 'testSimple5:1.8'.
	self
		assert: tmp_DMST4Jrz2B3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:1.9'.
	self
		assert: tmp_DMST4Jrz2B3 controlPoints
		equals: nil
		description: 'testSimple5:1.10'.
	self
		assert: tmp_DMST4Jrz2B3 toElements class
		equals: Array
		description: 'testSimple5:1.11'.
	self
		assert: tmp_DMST4Jrz2B3 toElements size
		equals: 0
		description: 'testSimple5:1.12'.
	self
		assert: tmp_DMST4Jrz2B3 view class
		equals: UndefinedObject
		description: 'testSimple5:1.13'.
	self
		assert: tmp_DMST4Jrz2B3 view
		equals: nil
		description: 'testSimple5:1.14'.
	self
		assert: tmp_DMST4Jrz2B3 fromElements class
		equals: Array
		description: 'testSimple5:1.15'.
	self
		assert: tmp_DMST4Jrz2B3 fromElements size
		equals: 0
		description: 'testSimple5:1.16'.
	self
		assert: tmp_DMST4Jrz2B3 fromObjects class
		equals: Array
		description: 'testSimple5:1.17'.
	self
		assert: tmp_DMST4Jrz2B3 fromObjects size
		equals: 0
		description: 'testSimple5:1.18'.
	self
		assert: tmp_DMST4Jrz2B3 viewElements class
		equals: Array
		description: 'testSimple5:1.19'.
	self
		assert: tmp_DMST4Jrz2B3 viewElements size
		equals: 0
		description: 'testSimple5:1.20'.
	tmp_DMST4Jrz2B3 view: view.
	self
		assert: tmp_DMST4Jrz2B3 class
		equals: RSEdgeBuilder
		description: 'testSimple5:2.1'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple5:2.2'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:2.3'.
	self
		assert: tmp_DMST4Jrz2B3 moveBehind controlPoints
		equals: nil
		description: 'testSimple5:2.4'.
	self
		assert: tmp_DMST4Jrz2B3 toObjects class
		equals: TSGroup
		description: 'testSimple5:2.5'.
	self
		assert: tmp_DMST4Jrz2B3 toObjects size
		equals: 10
		description: 'testSimple5:2.6'.
	self
		assert: tmp_DMST4Jrz2B3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:2.7'.
	self
		assert: tmp_DMST4Jrz2B3 controlPoints
		equals: nil
		description: 'testSimple5:2.8'.
	self
		assert: tmp_DMST4Jrz2B3 toElements class
		equals: TSGroup
		description: 'testSimple5:2.9'.
	self
		assert: tmp_DMST4Jrz2B3 toElements size
		equals: 10
		description: 'testSimple5:2.10'.
	self
		assert: tmp_DMST4Jrz2B3 view class
		equals: RSView
		description: 'testSimple5:2.11'.
	self
		assert: tmp_DMST4Jrz2B3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple5:2.12'.
	self
		assert: tmp_DMST4Jrz2B3 view numberOfEdges
		equals: 0
		description: 'testSimple5:2.13'.
	self
		assert: tmp_DMST4Jrz2B3 fromElements class
		equals: TSGroup
		description: 'testSimple5:2.14'.
	self
		assert: tmp_DMST4Jrz2B3 fromElements size
		equals: 10
		description: 'testSimple5:2.15'.
	self
		assert: tmp_DMST4Jrz2B3 fromObjects class
		equals: TSGroup
		description: 'testSimple5:2.16'.
	self
		assert: tmp_DMST4Jrz2B3 fromObjects size
		equals: 10
		description: 'testSimple5:2.17'.
	self
		assert: tmp_DMST4Jrz2B3 viewElements class
		equals: TSGroup
		description: 'testSimple5:2.18'.
	self
		assert: tmp_DMST4Jrz2B3 viewElements size
		equals: 10
		description: 'testSimple5:2.19'.
	tmp_Ev8QcUz3Bo5 := RSEdgeBuilder line.
	self
		assert: tmp_Ev8QcUz3Bo5 class
		equals: RSEdgeBuilder
		description: 'testSimple5:3.1'.
	self
		assert: tmp_Ev8QcUz3Bo5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple5:3.2'.
	self
		assert: tmp_Ev8QcUz3Bo5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:3.3'.
	self
		assert: tmp_Ev8QcUz3Bo5 moveBehind controlPoints
		equals: nil
		description: 'testSimple5:3.4'.
	self
		assert: tmp_Ev8QcUz3Bo5 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple5:3.5'.
	self
		assert: tmp_Ev8QcUz3Bo5 moveBehind view
		equals: nil
		description: 'testSimple5:3.6'.
	self
		assert: tmp_Ev8QcUz3Bo5 toObjects class
		equals: Array
		description: 'testSimple5:3.7'.
	self
		assert: tmp_Ev8QcUz3Bo5 toObjects size
		equals: 0
		description: 'testSimple5:3.8'.
	self
		assert: tmp_Ev8QcUz3Bo5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:3.9'.
	self
		assert: tmp_Ev8QcUz3Bo5 controlPoints
		equals: nil
		description: 'testSimple5:3.10'.
	self
		assert: tmp_Ev8QcUz3Bo5 toElements class
		equals: Array
		description: 'testSimple5:3.11'.
	self
		assert: tmp_Ev8QcUz3Bo5 toElements size
		equals: 0
		description: 'testSimple5:3.12'.
	self
		assert: tmp_Ev8QcUz3Bo5 view class
		equals: UndefinedObject
		description: 'testSimple5:3.13'.
	self
		assert: tmp_Ev8QcUz3Bo5 view
		equals: nil
		description: 'testSimple5:3.14'.
	self
		assert: tmp_Ev8QcUz3Bo5 fromElements class
		equals: Array
		description: 'testSimple5:3.15'.
	self
		assert: tmp_Ev8QcUz3Bo5 fromElements size
		equals: 0
		description: 'testSimple5:3.16'.
	self
		assert: tmp_Ev8QcUz3Bo5 fromObjects class
		equals: Array
		description: 'testSimple5:3.17'.
	self
		assert: tmp_Ev8QcUz3Bo5 fromObjects size
		equals: 0
		description: 'testSimple5:3.18'.
	self
		assert: tmp_Ev8QcUz3Bo5 viewElements class
		equals: Array
		description: 'testSimple5:3.19'.
	self
		assert: tmp_Ev8QcUz3Bo5 viewElements size
		equals: 0
		description: 'testSimple5:3.20'.
	self
		should: [ tmp_Ev8QcUz3Bo5 fromObjects: #(1 2 3 6) ]
		raise: AssertionFailure
		description: 'testSimple5:4.1'.
	tmp_LbOzFmUcMU6 := RSEdgeBuilder line.
	self
		assert: tmp_LbOzFmUcMU6 class
		equals: RSEdgeBuilder
		description: 'testSimple5:5.1'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple5:5.2'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:5.3'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind controlPoints
		equals: nil
		description: 'testSimple5:5.4'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple5:5.5'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind view
		equals: nil
		description: 'testSimple5:5.6'.
	self
		assert: tmp_LbOzFmUcMU6 toObjects class
		equals: Array
		description: 'testSimple5:5.7'.
	self
		assert: tmp_LbOzFmUcMU6 toObjects size
		equals: 0
		description: 'testSimple5:5.8'.
	self
		assert: tmp_LbOzFmUcMU6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:5.9'.
	self
		assert: tmp_LbOzFmUcMU6 controlPoints
		equals: nil
		description: 'testSimple5:5.10'.
	self
		assert: tmp_LbOzFmUcMU6 toElements class
		equals: Array
		description: 'testSimple5:5.11'.
	self
		assert: tmp_LbOzFmUcMU6 toElements size
		equals: 0
		description: 'testSimple5:5.12'.
	self
		assert: tmp_LbOzFmUcMU6 view class
		equals: UndefinedObject
		description: 'testSimple5:5.13'.
	self
		assert: tmp_LbOzFmUcMU6 view
		equals: nil
		description: 'testSimple5:5.14'.
	self
		assert: tmp_LbOzFmUcMU6 fromElements class
		equals: Array
		description: 'testSimple5:5.15'.
	self
		assert: tmp_LbOzFmUcMU6 fromElements size
		equals: 0
		description: 'testSimple5:5.16'.
	self
		assert: tmp_LbOzFmUcMU6 fromObjects class
		equals: Array
		description: 'testSimple5:5.17'.
	self
		assert: tmp_LbOzFmUcMU6 fromObjects size
		equals: 0
		description: 'testSimple5:5.18'.
	self
		assert: tmp_LbOzFmUcMU6 viewElements class
		equals: Array
		description: 'testSimple5:5.19'.
	self
		assert: tmp_LbOzFmUcMU6 viewElements size
		equals: 0
		description: 'testSimple5:5.20'.
	tmp_vvmz6E6lS81 := tmp_LbOzFmUcMU6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self
		assert: tmp_LbOzFmUcMU6 class
		equals: RSEdgeBuilder
		description: 'testSimple5:6.1'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple5:6.2'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:6.3'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind controlPoints
		equals: nil
		description: 'testSimple5:6.4'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple5:6.5'.
	self
		assert: tmp_LbOzFmUcMU6 moveBehind view
		equals: nil
		description: 'testSimple5:6.6'.
	self
		assert: tmp_LbOzFmUcMU6 toObjects class
		equals: Array
		description: 'testSimple5:6.7'.
	self
		assert: tmp_LbOzFmUcMU6 toObjects size
		equals: 0
		description: 'testSimple5:6.8'.
	self
		assert: tmp_LbOzFmUcMU6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple5:6.9'.
	self
		assert: tmp_LbOzFmUcMU6 controlPoints
		equals: nil
		description: 'testSimple5:6.10'.
	self
		assert: tmp_LbOzFmUcMU6 toElements class
		equals: Array
		description: 'testSimple5:6.11'.
	self
		assert: tmp_LbOzFmUcMU6 toElements size
		equals: 0
		description: 'testSimple5:6.12'.
	self
		assert: tmp_LbOzFmUcMU6 view class
		equals: UndefinedObject
		description: 'testSimple5:6.13'.
	self
		assert: tmp_LbOzFmUcMU6 view
		equals: nil
		description: 'testSimple5:6.14'.
	self
		assert: tmp_LbOzFmUcMU6 fromElements class
		equals: Array
		description: 'testSimple5:6.15'.
	self
		assert: tmp_LbOzFmUcMU6 fromElements size
		equals: 0
		description: 'testSimple5:6.16'.
	self
		assert: tmp_LbOzFmUcMU6 fromObjects class
		equals: Array
		description: 'testSimple5:6.17'.
	self
		assert: tmp_LbOzFmUcMU6 fromObjects size
		equals: 0
		description: 'testSimple5:6.18'.
	self
		assert: tmp_LbOzFmUcMU6 viewElements class
		equals: Array
		description: 'testSimple5:6.19'.
	self
		assert: tmp_LbOzFmUcMU6 viewElements size
		equals: 0
		description: 'testSimple5:6.20'.
	self
		assert: tmp_vvmz6E6lS81 class
		equals: TSGroup
		description: 'testSimple5:6.1'.
	self
		assert: tmp_vvmz6E6lS81 size
		equals: 0
		description: 'testSimple5:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSimple6 [
	<madeBySmallAmp>
	| tmp_JX94lwRCFH1 tmp_iB7nYxcYWY3 tmp_OIolsf2GHG5 tmp_P530JuGJcQ6 |
	tmp_iB7nYxcYWY3 := RSEdgeBuilder line.
	self
		assert: tmp_iB7nYxcYWY3 class
		equals: RSEdgeBuilder
		description: 'testSimple6:1.1'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple6:1.2'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:1.3'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind controlPoints
		equals: nil
		description: 'testSimple6:1.4'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple6:1.5'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind view
		equals: nil
		description: 'testSimple6:1.6'.
	self
		assert: tmp_iB7nYxcYWY3 toObjects class
		equals: Array
		description: 'testSimple6:1.7'.
	self
		assert: tmp_iB7nYxcYWY3 toObjects size
		equals: 0
		description: 'testSimple6:1.8'.
	self
		assert: tmp_iB7nYxcYWY3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:1.9'.
	self
		assert: tmp_iB7nYxcYWY3 controlPoints
		equals: nil
		description: 'testSimple6:1.10'.
	self
		assert: tmp_iB7nYxcYWY3 toElements class
		equals: Array
		description: 'testSimple6:1.11'.
	self
		assert: tmp_iB7nYxcYWY3 toElements size
		equals: 0
		description: 'testSimple6:1.12'.
	self
		assert: tmp_iB7nYxcYWY3 view class
		equals: UndefinedObject
		description: 'testSimple6:1.13'.
	self
		assert: tmp_iB7nYxcYWY3 view
		equals: nil
		description: 'testSimple6:1.14'.
	self
		assert: tmp_iB7nYxcYWY3 fromElements class
		equals: Array
		description: 'testSimple6:1.15'.
	self
		assert: tmp_iB7nYxcYWY3 fromElements size
		equals: 0
		description: 'testSimple6:1.16'.
	self
		assert: tmp_iB7nYxcYWY3 fromObjects class
		equals: Array
		description: 'testSimple6:1.17'.
	self
		assert: tmp_iB7nYxcYWY3 fromObjects size
		equals: 0
		description: 'testSimple6:1.18'.
	self
		assert: tmp_iB7nYxcYWY3 viewElements class
		equals: Array
		description: 'testSimple6:1.19'.
	self
		assert: tmp_iB7nYxcYWY3 viewElements size
		equals: 0
		description: 'testSimple6:1.20'.
	tmp_iB7nYxcYWY3 view: view.
	self
		assert: tmp_iB7nYxcYWY3 class
		equals: RSEdgeBuilder
		description: 'testSimple6:2.1'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple6:2.2'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:2.3'.
	self
		assert: tmp_iB7nYxcYWY3 moveBehind controlPoints
		equals: nil
		description: 'testSimple6:2.4'.
	self
		assert: tmp_iB7nYxcYWY3 toObjects class
		equals: TSGroup
		description: 'testSimple6:2.5'.
	self
		assert: tmp_iB7nYxcYWY3 toObjects size
		equals: 10
		description: 'testSimple6:2.6'.
	self
		assert: tmp_iB7nYxcYWY3 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:2.7'.
	self
		assert: tmp_iB7nYxcYWY3 controlPoints
		equals: nil
		description: 'testSimple6:2.8'.
	self
		assert: tmp_iB7nYxcYWY3 toElements class
		equals: TSGroup
		description: 'testSimple6:2.9'.
	self
		assert: tmp_iB7nYxcYWY3 toElements size
		equals: 10
		description: 'testSimple6:2.10'.
	self
		assert: tmp_iB7nYxcYWY3 view class
		equals: RSView
		description: 'testSimple6:2.11'.
	self
		assert: tmp_iB7nYxcYWY3 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple6:2.12'.
	self
		assert: tmp_iB7nYxcYWY3 view numberOfEdges
		equals: 0
		description: 'testSimple6:2.13'.
	self
		assert: tmp_iB7nYxcYWY3 fromElements class
		equals: TSGroup
		description: 'testSimple6:2.14'.
	self
		assert: tmp_iB7nYxcYWY3 fromElements size
		equals: 10
		description: 'testSimple6:2.15'.
	self
		assert: tmp_iB7nYxcYWY3 fromObjects class
		equals: TSGroup
		description: 'testSimple6:2.16'.
	self
		assert: tmp_iB7nYxcYWY3 fromObjects size
		equals: 10
		description: 'testSimple6:2.17'.
	self
		assert: tmp_iB7nYxcYWY3 viewElements class
		equals: TSGroup
		description: 'testSimple6:2.18'.
	self
		assert: tmp_iB7nYxcYWY3 viewElements size
		equals: 10
		description: 'testSimple6:2.19'.
	tmp_OIolsf2GHG5 := RSEdgeBuilder line.
	self
		assert: tmp_OIolsf2GHG5 class
		equals: RSEdgeBuilder
		description: 'testSimple6:3.1'.
	self
		assert: tmp_OIolsf2GHG5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple6:3.2'.
	self
		assert: tmp_OIolsf2GHG5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:3.3'.
	self
		assert: tmp_OIolsf2GHG5 moveBehind controlPoints
		equals: nil
		description: 'testSimple6:3.4'.
	self
		assert: tmp_OIolsf2GHG5 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple6:3.5'.
	self
		assert: tmp_OIolsf2GHG5 moveBehind view
		equals: nil
		description: 'testSimple6:3.6'.
	self
		assert: tmp_OIolsf2GHG5 toObjects class
		equals: Array
		description: 'testSimple6:3.7'.
	self
		assert: tmp_OIolsf2GHG5 toObjects size
		equals: 0
		description: 'testSimple6:3.8'.
	self
		assert: tmp_OIolsf2GHG5 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:3.9'.
	self
		assert: tmp_OIolsf2GHG5 controlPoints
		equals: nil
		description: 'testSimple6:3.10'.
	self
		assert: tmp_OIolsf2GHG5 toElements class
		equals: Array
		description: 'testSimple6:3.11'.
	self
		assert: tmp_OIolsf2GHG5 toElements size
		equals: 0
		description: 'testSimple6:3.12'.
	self
		assert: tmp_OIolsf2GHG5 view class
		equals: UndefinedObject
		description: 'testSimple6:3.13'.
	self
		assert: tmp_OIolsf2GHG5 view
		equals: nil
		description: 'testSimple6:3.14'.
	self
		assert: tmp_OIolsf2GHG5 fromElements class
		equals: Array
		description: 'testSimple6:3.15'.
	self
		assert: tmp_OIolsf2GHG5 fromElements size
		equals: 0
		description: 'testSimple6:3.16'.
	self
		assert: tmp_OIolsf2GHG5 fromObjects class
		equals: Array
		description: 'testSimple6:3.17'.
	self
		assert: tmp_OIolsf2GHG5 fromObjects size
		equals: 0
		description: 'testSimple6:3.18'.
	self
		assert: tmp_OIolsf2GHG5 viewElements class
		equals: Array
		description: 'testSimple6:3.19'.
	self
		assert: tmp_OIolsf2GHG5 viewElements size
		equals: 0
		description: 'testSimple6:3.20'.
	self
		should: [ tmp_OIolsf2GHG5 fromObjects: (Array with: 2) ]
		raise: AssertionFailure
		description: 'testSimple6:4.1'.
	tmp_P530JuGJcQ6 := RSEdgeBuilder line.
	self
		assert: tmp_P530JuGJcQ6 class
		equals: RSEdgeBuilder
		description: 'testSimple6:5.1'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple6:5.2'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:5.3'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind controlPoints
		equals: nil
		description: 'testSimple6:5.4'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple6:5.5'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind view
		equals: nil
		description: 'testSimple6:5.6'.
	self
		assert: tmp_P530JuGJcQ6 toObjects class
		equals: Array
		description: 'testSimple6:5.7'.
	self
		assert: tmp_P530JuGJcQ6 toObjects size
		equals: 0
		description: 'testSimple6:5.8'.
	self
		assert: tmp_P530JuGJcQ6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:5.9'.
	self
		assert: tmp_P530JuGJcQ6 controlPoints
		equals: nil
		description: 'testSimple6:5.10'.
	self
		assert: tmp_P530JuGJcQ6 toElements class
		equals: Array
		description: 'testSimple6:5.11'.
	self
		assert: tmp_P530JuGJcQ6 toElements size
		equals: 0
		description: 'testSimple6:5.12'.
	self
		assert: tmp_P530JuGJcQ6 view class
		equals: UndefinedObject
		description: 'testSimple6:5.13'.
	self
		assert: tmp_P530JuGJcQ6 view
		equals: nil
		description: 'testSimple6:5.14'.
	self
		assert: tmp_P530JuGJcQ6 fromElements class
		equals: Array
		description: 'testSimple6:5.15'.
	self
		assert: tmp_P530JuGJcQ6 fromElements size
		equals: 0
		description: 'testSimple6:5.16'.
	self
		assert: tmp_P530JuGJcQ6 fromObjects class
		equals: Array
		description: 'testSimple6:5.17'.
	self
		assert: tmp_P530JuGJcQ6 fromObjects size
		equals: 0
		description: 'testSimple6:5.18'.
	self
		assert: tmp_P530JuGJcQ6 viewElements class
		equals: Array
		description: 'testSimple6:5.19'.
	self
		assert: tmp_P530JuGJcQ6 viewElements size
		equals: 0
		description: 'testSimple6:5.20'.
	tmp_JX94lwRCFH1 := tmp_P530JuGJcQ6
		connectFromAll: (Array with: 2)
		to: 3.
	self
		assert: tmp_P530JuGJcQ6 class
		equals: RSEdgeBuilder
		description: 'testSimple6:6.1'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple6:6.2'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:6.3'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind controlPoints
		equals: nil
		description: 'testSimple6:6.4'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple6:6.5'.
	self
		assert: tmp_P530JuGJcQ6 moveBehind view
		equals: nil
		description: 'testSimple6:6.6'.
	self
		assert: tmp_P530JuGJcQ6 toObjects class
		equals: Array
		description: 'testSimple6:6.7'.
	self
		assert: tmp_P530JuGJcQ6 toObjects size
		equals: 0
		description: 'testSimple6:6.8'.
	self
		assert: tmp_P530JuGJcQ6 controlPoints class
		equals: UndefinedObject
		description: 'testSimple6:6.9'.
	self
		assert: tmp_P530JuGJcQ6 controlPoints
		equals: nil
		description: 'testSimple6:6.10'.
	self
		assert: tmp_P530JuGJcQ6 toElements class
		equals: Array
		description: 'testSimple6:6.11'.
	self
		assert: tmp_P530JuGJcQ6 toElements size
		equals: 0
		description: 'testSimple6:6.12'.
	self
		assert: tmp_P530JuGJcQ6 view class
		equals: UndefinedObject
		description: 'testSimple6:6.13'.
	self
		assert: tmp_P530JuGJcQ6 view
		equals: nil
		description: 'testSimple6:6.14'.
	self
		assert: tmp_P530JuGJcQ6 fromElements class
		equals: Array
		description: 'testSimple6:6.15'.
	self
		assert: tmp_P530JuGJcQ6 fromElements size
		equals: 0
		description: 'testSimple6:6.16'.
	self
		assert: tmp_P530JuGJcQ6 fromObjects class
		equals: Array
		description: 'testSimple6:6.17'.
	self
		assert: tmp_P530JuGJcQ6 fromObjects size
		equals: 0
		description: 'testSimple6:6.18'.
	self
		assert: tmp_P530JuGJcQ6 viewElements class
		equals: Array
		description: 'testSimple6:6.19'.
	self
		assert: tmp_P530JuGJcQ6 viewElements size
		equals: 0
		description: 'testSimple6:6.20'.
	self
		assert: tmp_JX94lwRCFH1 class
		equals: TSGroup
		description: 'testSimple6:6.1'.
	self
		assert: tmp_JX94lwRCFH1 size
		equals: 0
		description: 'testSimple6:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSimple7 [
	<madeBySmallAmp>
	| tmp_aWBEidqbB03 tmp_ZFR3lNdp945 tmp_qc0lP6FQKG7 tmp_Si5Yjm86BS8 |
	tmp_aWBEidqbB03 := RSEdgeBuilder line.
	self
		assert: tmp_aWBEidqbB03 class
		equals: RSEdgeBuilder
		description: 'testSimple7:1.1'.
	self
		assert: tmp_aWBEidqbB03 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple7:1.2'.
	self
		assert: tmp_aWBEidqbB03 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:1.3'.
	self
		assert: tmp_aWBEidqbB03 moveBehind controlPoints
		equals: nil
		description: 'testSimple7:1.4'.
	self
		assert: tmp_aWBEidqbB03 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple7:1.5'.
	self
		assert: tmp_aWBEidqbB03 moveBehind view
		equals: nil
		description: 'testSimple7:1.6'.
	self
		assert: tmp_aWBEidqbB03 toObjects class
		equals: Array
		description: 'testSimple7:1.7'.
	self
		assert: tmp_aWBEidqbB03 toObjects size
		equals: 0
		description: 'testSimple7:1.8'.
	self
		assert: tmp_aWBEidqbB03 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:1.9'.
	self
		assert: tmp_aWBEidqbB03 controlPoints
		equals: nil
		description: 'testSimple7:1.10'.
	self
		assert: tmp_aWBEidqbB03 toElements class
		equals: Array
		description: 'testSimple7:1.11'.
	self
		assert: tmp_aWBEidqbB03 toElements size
		equals: 0
		description: 'testSimple7:1.12'.
	self
		assert: tmp_aWBEidqbB03 view class
		equals: UndefinedObject
		description: 'testSimple7:1.13'.
	self
		assert: tmp_aWBEidqbB03 view
		equals: nil
		description: 'testSimple7:1.14'.
	self
		assert: tmp_aWBEidqbB03 fromElements class
		equals: Array
		description: 'testSimple7:1.15'.
	self
		assert: tmp_aWBEidqbB03 fromElements size
		equals: 0
		description: 'testSimple7:1.16'.
	self
		assert: tmp_aWBEidqbB03 fromObjects class
		equals: Array
		description: 'testSimple7:1.17'.
	self
		assert: tmp_aWBEidqbB03 fromObjects size
		equals: 0
		description: 'testSimple7:1.18'.
	self
		assert: tmp_aWBEidqbB03 viewElements class
		equals: Array
		description: 'testSimple7:1.19'.
	self
		assert: tmp_aWBEidqbB03 viewElements size
		equals: 0
		description: 'testSimple7:1.20'.
	tmp_aWBEidqbB03 view: view.
	self
		assert: tmp_aWBEidqbB03 class
		equals: RSEdgeBuilder
		description: 'testSimple7:2.1'.
	self
		assert: tmp_aWBEidqbB03 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple7:2.2'.
	self
		assert: tmp_aWBEidqbB03 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:2.3'.
	self
		assert: tmp_aWBEidqbB03 moveBehind controlPoints
		equals: nil
		description: 'testSimple7:2.4'.
	self
		assert: tmp_aWBEidqbB03 toObjects class
		equals: TSGroup
		description: 'testSimple7:2.5'.
	self
		assert: tmp_aWBEidqbB03 toObjects size
		equals: 10
		description: 'testSimple7:2.6'.
	self
		assert: tmp_aWBEidqbB03 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:2.7'.
	self
		assert: tmp_aWBEidqbB03 controlPoints
		equals: nil
		description: 'testSimple7:2.8'.
	self
		assert: tmp_aWBEidqbB03 toElements class
		equals: TSGroup
		description: 'testSimple7:2.9'.
	self
		assert: tmp_aWBEidqbB03 toElements size
		equals: 10
		description: 'testSimple7:2.10'.
	self
		assert: tmp_aWBEidqbB03 view class
		equals: RSView
		description: 'testSimple7:2.11'.
	self
		assert: tmp_aWBEidqbB03 view numberOfEdges class
		equals: SmallInteger
		description: 'testSimple7:2.12'.
	self
		assert: tmp_aWBEidqbB03 view numberOfEdges
		equals: 0
		description: 'testSimple7:2.13'.
	self
		assert: tmp_aWBEidqbB03 fromElements class
		equals: TSGroup
		description: 'testSimple7:2.14'.
	self
		assert: tmp_aWBEidqbB03 fromElements size
		equals: 10
		description: 'testSimple7:2.15'.
	self
		assert: tmp_aWBEidqbB03 fromObjects class
		equals: TSGroup
		description: 'testSimple7:2.16'.
	self
		assert: tmp_aWBEidqbB03 fromObjects size
		equals: 10
		description: 'testSimple7:2.17'.
	self
		assert: tmp_aWBEidqbB03 viewElements class
		equals: TSGroup
		description: 'testSimple7:2.18'.
	self
		assert: tmp_aWBEidqbB03 viewElements size
		equals: 10
		description: 'testSimple7:2.19'.
	tmp_ZFR3lNdp945 := RSEdgeBuilder line.
	self
		assert: tmp_ZFR3lNdp945 class
		equals: RSEdgeBuilder
		description: 'testSimple7:3.1'.
	self
		assert: tmp_ZFR3lNdp945 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple7:3.2'.
	self
		assert: tmp_ZFR3lNdp945 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:3.3'.
	self
		assert: tmp_ZFR3lNdp945 moveBehind controlPoints
		equals: nil
		description: 'testSimple7:3.4'.
	self
		assert: tmp_ZFR3lNdp945 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple7:3.5'.
	self
		assert: tmp_ZFR3lNdp945 moveBehind view
		equals: nil
		description: 'testSimple7:3.6'.
	self
		assert: tmp_ZFR3lNdp945 toObjects class
		equals: Array
		description: 'testSimple7:3.7'.
	self
		assert: tmp_ZFR3lNdp945 toObjects size
		equals: 0
		description: 'testSimple7:3.8'.
	self
		assert: tmp_ZFR3lNdp945 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:3.9'.
	self
		assert: tmp_ZFR3lNdp945 controlPoints
		equals: nil
		description: 'testSimple7:3.10'.
	self
		assert: tmp_ZFR3lNdp945 toElements class
		equals: Array
		description: 'testSimple7:3.11'.
	self
		assert: tmp_ZFR3lNdp945 toElements size
		equals: 0
		description: 'testSimple7:3.12'.
	self
		assert: tmp_ZFR3lNdp945 view class
		equals: UndefinedObject
		description: 'testSimple7:3.13'.
	self
		assert: tmp_ZFR3lNdp945 view
		equals: nil
		description: 'testSimple7:3.14'.
	self
		assert: tmp_ZFR3lNdp945 fromElements class
		equals: Array
		description: 'testSimple7:3.15'.
	self
		assert: tmp_ZFR3lNdp945 fromElements size
		equals: 0
		description: 'testSimple7:3.16'.
	self
		assert: tmp_ZFR3lNdp945 fromObjects class
		equals: Array
		description: 'testSimple7:3.17'.
	self
		assert: tmp_ZFR3lNdp945 fromObjects size
		equals: 0
		description: 'testSimple7:3.18'.
	self
		assert: tmp_ZFR3lNdp945 viewElements class
		equals: Array
		description: 'testSimple7:3.19'.
	self
		assert: tmp_ZFR3lNdp945 viewElements size
		equals: 0
		description: 'testSimple7:3.20'.
	self
		should: [ tmp_ZFR3lNdp945 useAssociation: 1 -> 2 ]
		raise: MessageNotUnderstood
		description: 'testSimple7:4.1'.
	tmp_qc0lP6FQKG7 := RSEdgeBuilder line.
	self
		assert: tmp_qc0lP6FQKG7 class
		equals: RSEdgeBuilder
		description: 'testSimple7:5.1'.
	self
		assert: tmp_qc0lP6FQKG7 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple7:5.2'.
	self
		assert: tmp_qc0lP6FQKG7 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:5.3'.
	self
		assert: tmp_qc0lP6FQKG7 moveBehind controlPoints
		equals: nil
		description: 'testSimple7:5.4'.
	self
		assert: tmp_qc0lP6FQKG7 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple7:5.5'.
	self
		assert: tmp_qc0lP6FQKG7 moveBehind view
		equals: nil
		description: 'testSimple7:5.6'.
	self
		assert: tmp_qc0lP6FQKG7 toObjects class
		equals: Array
		description: 'testSimple7:5.7'.
	self
		assert: tmp_qc0lP6FQKG7 toObjects size
		equals: 0
		description: 'testSimple7:5.8'.
	self
		assert: tmp_qc0lP6FQKG7 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:5.9'.
	self
		assert: tmp_qc0lP6FQKG7 controlPoints
		equals: nil
		description: 'testSimple7:5.10'.
	self
		assert: tmp_qc0lP6FQKG7 toElements class
		equals: Array
		description: 'testSimple7:5.11'.
	self
		assert: tmp_qc0lP6FQKG7 toElements size
		equals: 0
		description: 'testSimple7:5.12'.
	self
		assert: tmp_qc0lP6FQKG7 view class
		equals: UndefinedObject
		description: 'testSimple7:5.13'.
	self
		assert: tmp_qc0lP6FQKG7 view
		equals: nil
		description: 'testSimple7:5.14'.
	self
		assert: tmp_qc0lP6FQKG7 fromElements class
		equals: Array
		description: 'testSimple7:5.15'.
	self
		assert: tmp_qc0lP6FQKG7 fromElements size
		equals: 0
		description: 'testSimple7:5.16'.
	self
		assert: tmp_qc0lP6FQKG7 fromObjects class
		equals: Array
		description: 'testSimple7:5.17'.
	self
		assert: tmp_qc0lP6FQKG7 fromObjects size
		equals: 0
		description: 'testSimple7:5.18'.
	self
		assert: tmp_qc0lP6FQKG7 viewElements class
		equals: Array
		description: 'testSimple7:5.19'.
	self
		assert: tmp_qc0lP6FQKG7 viewElements size
		equals: 0
		description: 'testSimple7:5.20'.
	self
		should: [ tmp_qc0lP6FQKG7 useAssociation: 2 -> 3 ]
		raise: MessageNotUnderstood
		description: 'testSimple7:6.1'.
	tmp_Si5Yjm86BS8 := RSEdgeBuilder line.
	self
		assert: tmp_Si5Yjm86BS8 class
		equals: RSEdgeBuilder
		description: 'testSimple7:7.1'.
	self
		assert: tmp_Si5Yjm86BS8 moveBehind class
		equals: RSEdgeBuilder
		description: 'testSimple7:7.2'.
	self
		assert: tmp_Si5Yjm86BS8 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:7.3'.
	self
		assert: tmp_Si5Yjm86BS8 moveBehind controlPoints
		equals: nil
		description: 'testSimple7:7.4'.
	self
		assert: tmp_Si5Yjm86BS8 moveBehind view class
		equals: UndefinedObject
		description: 'testSimple7:7.5'.
	self
		assert: tmp_Si5Yjm86BS8 moveBehind view
		equals: nil
		description: 'testSimple7:7.6'.
	self
		assert: tmp_Si5Yjm86BS8 toObjects class
		equals: Array
		description: 'testSimple7:7.7'.
	self
		assert: tmp_Si5Yjm86BS8 toObjects size
		equals: 0
		description: 'testSimple7:7.8'.
	self
		assert: tmp_Si5Yjm86BS8 controlPoints class
		equals: UndefinedObject
		description: 'testSimple7:7.9'.
	self
		assert: tmp_Si5Yjm86BS8 controlPoints
		equals: nil
		description: 'testSimple7:7.10'.
	self
		assert: tmp_Si5Yjm86BS8 toElements class
		equals: Array
		description: 'testSimple7:7.11'.
	self
		assert: tmp_Si5Yjm86BS8 toElements size
		equals: 0
		description: 'testSimple7:7.12'.
	self
		assert: tmp_Si5Yjm86BS8 view class
		equals: UndefinedObject
		description: 'testSimple7:7.13'.
	self
		assert: tmp_Si5Yjm86BS8 view
		equals: nil
		description: 'testSimple7:7.14'.
	self
		assert: tmp_Si5Yjm86BS8 fromElements class
		equals: Array
		description: 'testSimple7:7.15'.
	self
		assert: tmp_Si5Yjm86BS8 fromElements size
		equals: 0
		description: 'testSimple7:7.16'.
	self
		assert: tmp_Si5Yjm86BS8 fromObjects class
		equals: Array
		description: 'testSimple7:7.17'.
	self
		assert: tmp_Si5Yjm86BS8 fromObjects size
		equals: 0
		description: 'testSimple7:7.18'.
	self
		assert: tmp_Si5Yjm86BS8 viewElements class
		equals: Array
		description: 'testSimple7:7.19'.
	self
		assert: tmp_Si5Yjm86BS8 viewElements size
		equals: 0
		description: 'testSimple7:7.20'.
	self
		should: [ tmp_Si5Yjm86BS8 useAssociation: 5 -> 6 ]
		raise: MessageNotUnderstood
		description: 'testSimple7:8.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testSource [
	<madeBySmallAmp>
	| v es eb c tmp_zpAROMnD0K4 tmp_dowUIRBNRi5 tmp_ZCMGeJjjr16 |
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSource:1.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testSource:1.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testSource:1.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testSource:1.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSource:1.12'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testSource:1.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testSource:1.14'.
	self assert: v elements size equals: 0 description: 'testSource:1.15'.
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSource:3.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testSource:3.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testSource:3.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testSource:3.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSource:3.12'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testSource:3.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testSource:3.14'.
	self assert: v elements size equals: 3 description: 'testSource:3.15'.
	eb := RSEdgeBuilder line.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource:4.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testSource:4.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSource:4.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testSource:4.4'.
	self
		assert: eb moveBehind view class
		equals: UndefinedObject
		description: 'testSource:4.5'.
	self
		assert: eb moveBehind view
		equals: nil
		description: 'testSource:4.6'.
	self
		assert: eb toObjects class
		equals: Array
		description: 'testSource:4.7'.
	self
		assert: eb toObjects size
		equals: 0
		description: 'testSource:4.8'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource:4.9'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource:4.10'.
	self
		assert: eb toElements class
		equals: Array
		description: 'testSource:4.11'.
	self
		assert: eb toElements size
		equals: 0
		description: 'testSource:4.12'.
	self
		assert: eb view class
		equals: UndefinedObject
		description: 'testSource:4.13'.
	self assert: eb view equals: nil description: 'testSource:4.14'.
	self
		assert: eb fromElements class
		equals: Array
		description: 'testSource:4.15'.
	self
		assert: eb fromElements size
		equals: 0
		description: 'testSource:4.16'.
	self
		assert: eb fromObjects class
		equals: Array
		description: 'testSource:4.17'.
	self
		assert: eb fromObjects size
		equals: 0
		description: 'testSource:4.18'.
	self
		assert: eb viewElements class
		equals: Array
		description: 'testSource:4.19'.
	self
		assert: eb viewElements size
		equals: 0
		description: 'testSource:4.20'.
	eb view: v.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource:5.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testSource:5.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSource:5.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testSource:5.4'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testSource:5.5'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testSource:5.6'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource:5.7'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource:5.8'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testSource:5.9'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testSource:5.10'.
	self
		assert: eb view class
		equals: RSView
		description: 'testSource:5.11'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testSource:5.12'.
	self
		assert: eb view numberOfEdges
		equals: 0
		description: 'testSource:5.13'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testSource:5.14'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testSource:5.15'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testSource:5.16'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testSource:5.17'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testSource:5.18'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testSource:5.19'.
	c := OrderedCollection new.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource:6.1'.
	self assert: c size equals: 0 description: 'testSource:6.2'.
	tmp_zpAROMnD0K4 := c add: 1 -> 2.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource:7.1'.
	self assert: c size equals: 1 description: 'testSource:7.2'.
	self
		assert: tmp_zpAROMnD0K4 class
		equals: Association
		description: 'testSource:7.1'.
	tmp_dowUIRBNRi5 := c add: 3 -> 1.
	self
		assert: c class
		equals: OrderedCollection
		description: 'testSource:8.1'.
	self assert: c size equals: 2 description: 'testSource:8.2'.
	self
		assert: tmp_dowUIRBNRi5 class
		equals: Association
		description: 'testSource:8.1'.
	tmp_ZCMGeJjjr16 := eb source: c connectFrom: #key to: #value.
	self
		assert: eb class
		equals: RSEdgeBuilder
		description: 'testSource:9.1'.
	self
		assert: eb moveBehind class
		equals: RSEdgeBuilder
		description: 'testSource:9.2'.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testSource:9.3'.
	self
		assert: eb moveBehind controlPoints
		equals: nil
		description: 'testSource:9.4'.
	self
		assert: eb toObjects class
		equals: TSGroup
		description: 'testSource:9.5'.
	self
		assert: eb toObjects size
		equals: 3
		description: 'testSource:9.6'.
	self
		assert: eb controlPoints class
		equals: UndefinedObject
		description: 'testSource:9.7'.
	self
		assert: eb controlPoints
		equals: nil
		description: 'testSource:9.8'.
	self
		assert: eb toElements class
		equals: TSGroup
		description: 'testSource:9.9'.
	self
		assert: eb toElements size
		equals: 3
		description: 'testSource:9.10'.
	self
		assert: eb view class
		equals: RSView
		description: 'testSource:9.11'.
	self
		assert: eb view numberOfEdges class
		equals: SmallInteger
		description: 'testSource:9.12'.
	self
		assert: eb view numberOfEdges
		equals: 2
		description: 'testSource:9.13'.
	self
		assert: eb fromElements class
		equals: TSGroup
		description: 'testSource:9.14'.
	self
		assert: eb fromElements size
		equals: 3
		description: 'testSource:9.15'.
	self
		assert: eb fromObjects class
		equals: TSGroup
		description: 'testSource:9.16'.
	self
		assert: eb fromObjects size
		equals: 3
		description: 'testSource:9.17'.
	self
		assert: eb viewElements class
		equals: TSGroup
		description: 'testSource:9.18'.
	self
		assert: eb viewElements size
		equals: 3
		description: 'testSource:9.19'.
	self
		assert: tmp_ZCMGeJjjr16 class
		equals: TSGroup
		description: 'testSource:9.1'.
	self
		assert: tmp_ZCMGeJjjr16 size
		equals: 2
		description: 'testSource:9.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testToObjects [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| tmp_py4fr2DIlP3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testToObjects:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testToObjects:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testToObjects:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testToObjects:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects:1.19'.
	b toObjects: #(1 2).
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects:2.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testToObjects:2.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:2.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testToObjects:2.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects:2.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testToObjects:2.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:2.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects:2.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects:2.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testToObjects:2.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects:2.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects:2.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects:2.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects:2.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects:2.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects:2.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects:2.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects:2.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects:2.19'.
	tmp_py4fr2DIlP3 := b connectFrom: #yourself to: 10.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testToObjects:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testToObjects:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testToObjects:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testToObjects:3.5'.
	self
		assert: b toObjects size
		equals: 2
		description: 'testToObjects:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testToObjects:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testToObjects:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testToObjects:3.9'.
	self
		assert: b toElements size
		equals: 2
		description: 'testToObjects:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testToObjects:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testToObjects:3.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testToObjects:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testToObjects:3.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testToObjects:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testToObjects:3.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testToObjects:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testToObjects:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testToObjects:3.19'.
	self
		assert: tmp_py4fr2DIlP3 class
		equals: TSGroup
		description: 'testToObjects:3.1'.
	self
		assert: tmp_py4fr2DIlP3 size
		equals: 0
		description: 'testToObjects:3.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testUseInLayout [
	<madeBySmallAmp>
	| tmp_WFyZk4WXnO1 tmp_2a0OFKMP2z4 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayout:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testUseInLayout:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testUseInLayout:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayout:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayout:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayout:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayout:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayout:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayout:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayout:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testUseInLayout:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayout:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayout:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayout:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayout:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayout:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayout:1.19'.
	tmp_2a0OFKMP2z4 := TSTreeLayout on: view elements.
	self
		assert: tmp_2a0OFKMP2z4 class
		equals: TSGroup
		description: 'testUseInLayout:2.1'.
	self
		assert: tmp_2a0OFKMP2z4 size
		equals: 10
		description: 'testUseInLayout:2.2'.
	tmp_WFyZk4WXnO1 := b connectTo: [ :v | v + 1 ].
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayout:3.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testUseInLayout:3.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout:3.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testUseInLayout:3.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayout:3.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayout:3.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayout:3.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayout:3.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayout:3.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayout:3.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayout:3.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayout:3.12'.
	self
		assert: b view numberOfEdges
		equals: 9
		description: 'testUseInLayout:3.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayout:3.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayout:3.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayout:3.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayout:3.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayout:3.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayout:3.19'.
	self
		assert: tmp_WFyZk4WXnO1 class
		equals: TSGroup
		description: 'testUseInLayout:3.1'.
	self
		assert: tmp_WFyZk4WXnO1 size
		equals: 9
		description: 'testUseInLayout:3.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testUseInLayoutDefault [
	<madeBySmallAmp>
	| tmp_QqUJqDBcCw3 |
	b view: view.
	self
		assert: b class
		equals: RSEdgeBuilder
		description: 'testUseInLayoutDefault:1.1'.
	self
		assert: b moveBehind class
		equals: RSEdgeBuilder
		description: 'testUseInLayoutDefault:1.2'.
	self
		assert: b moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayoutDefault:1.3'.
	self
		assert: b moveBehind controlPoints
		equals: nil
		description: 'testUseInLayoutDefault:1.4'.
	self
		assert: b toObjects class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.5'.
	self
		assert: b toObjects size
		equals: 10
		description: 'testUseInLayoutDefault:1.6'.
	self
		assert: b controlPoints class
		equals: UndefinedObject
		description: 'testUseInLayoutDefault:1.7'.
	self
		assert: b controlPoints
		equals: nil
		description: 'testUseInLayoutDefault:1.8'.
	self
		assert: b toElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.9'.
	self
		assert: b toElements size
		equals: 10
		description: 'testUseInLayoutDefault:1.10'.
	self
		assert: b view class
		equals: RSView
		description: 'testUseInLayoutDefault:1.11'.
	self
		assert: b view numberOfEdges class
		equals: SmallInteger
		description: 'testUseInLayoutDefault:1.12'.
	self
		assert: b view numberOfEdges
		equals: 0
		description: 'testUseInLayoutDefault:1.13'.
	self
		assert: b fromElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.14'.
	self
		assert: b fromElements size
		equals: 10
		description: 'testUseInLayoutDefault:1.15'.
	self
		assert: b fromObjects class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.16'.
	self
		assert: b fromObjects size
		equals: 10
		description: 'testUseInLayoutDefault:1.17'.
	self
		assert: b viewElements class
		equals: TSGroup
		description: 'testUseInLayoutDefault:1.18'.
	self
		assert: b viewElements size
		equals: 10
		description: 'testUseInLayoutDefault:1.19'.
	tmp_QqUJqDBcCw3 := TSTreeLayout on: view elements.
	self
		assert: tmp_QqUJqDBcCw3 class
		equals: TSGroup
		description: 'testUseInLayoutDefault:2.1'.
	self
		assert: tmp_QqUJqDBcCw3 size
		equals: 10
		description: 'testUseInLayoutDefault:2.2'.
	TSTreeLayout on: view elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testWithMoveBehind [
	<madeBySmallAmp>
	| tmp_y80UkXw9Pb3 tmp_KMHTfPUrOq5 tmp_jDkCSSu6kE6 |
	tmp_y80UkXw9Pb3 := RSEdgeBuilder new.
	self
		assert: tmp_y80UkXw9Pb3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:1.1'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:1.2'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:1.3'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind:1.4'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:1.5'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind view
		equals: nil
		description: 'testWithMoveBehind:1.6'.
	self
		assert: tmp_y80UkXw9Pb3 toObjects class
		equals: Array
		description: 'testWithMoveBehind:1.7'.
	self
		assert: tmp_y80UkXw9Pb3 toObjects size
		equals: 0
		description: 'testWithMoveBehind:1.8'.
	self
		assert: tmp_y80UkXw9Pb3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:1.9'.
	self
		assert: tmp_y80UkXw9Pb3 controlPoints
		equals: nil
		description: 'testWithMoveBehind:1.10'.
	self
		assert: tmp_y80UkXw9Pb3 toElements class
		equals: Array
		description: 'testWithMoveBehind:1.11'.
	self
		assert: tmp_y80UkXw9Pb3 toElements size
		equals: 0
		description: 'testWithMoveBehind:1.12'.
	self
		assert: tmp_y80UkXw9Pb3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:1.13'.
	self
		assert: tmp_y80UkXw9Pb3 view
		equals: nil
		description: 'testWithMoveBehind:1.14'.
	self
		assert: tmp_y80UkXw9Pb3 fromElements class
		equals: Array
		description: 'testWithMoveBehind:1.15'.
	self
		assert: tmp_y80UkXw9Pb3 fromElements size
		equals: 0
		description: 'testWithMoveBehind:1.16'.
	self
		assert: tmp_y80UkXw9Pb3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:1.17'.
	self
		assert: tmp_y80UkXw9Pb3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:1.18'.
	self
		assert: tmp_y80UkXw9Pb3 viewElements class
		equals: Array
		description: 'testWithMoveBehind:1.19'.
	self
		assert: tmp_y80UkXw9Pb3 viewElements size
		equals: 0
		description: 'testWithMoveBehind:1.20'.
	tmp_y80UkXw9Pb3 view: view.
	self
		assert: tmp_y80UkXw9Pb3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:2.1'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:2.2'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:2.3'.
	self
		assert: tmp_y80UkXw9Pb3 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind:2.4'.
	self
		assert: tmp_y80UkXw9Pb3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind:2.5'.
	self
		assert: tmp_y80UkXw9Pb3 toObjects size
		equals: 10
		description: 'testWithMoveBehind:2.6'.
	self
		assert: tmp_y80UkXw9Pb3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:2.7'.
	self
		assert: tmp_y80UkXw9Pb3 controlPoints
		equals: nil
		description: 'testWithMoveBehind:2.8'.
	self
		assert: tmp_y80UkXw9Pb3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind:2.9'.
	self
		assert: tmp_y80UkXw9Pb3 toElements size
		equals: 10
		description: 'testWithMoveBehind:2.10'.
	self
		assert: tmp_y80UkXw9Pb3 view class
		equals: RSView
		description: 'testWithMoveBehind:2.11'.
	self
		assert: tmp_y80UkXw9Pb3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind:2.12'.
	self
		assert: tmp_y80UkXw9Pb3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind:2.13'.
	self
		assert: tmp_y80UkXw9Pb3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind:2.14'.
	self
		assert: tmp_y80UkXw9Pb3 fromElements size
		equals: 10
		description: 'testWithMoveBehind:2.15'.
	self
		assert: tmp_y80UkXw9Pb3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind:2.16'.
	self
		assert: tmp_y80UkXw9Pb3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind:2.17'.
	self
		assert: tmp_y80UkXw9Pb3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind:2.18'.
	self
		assert: tmp_y80UkXw9Pb3 viewElements size
		equals: 10
		description: 'testWithMoveBehind:2.19'.
	tmp_KMHTfPUrOq5 := RSEdgeBuilder new.
	self
		assert: tmp_KMHTfPUrOq5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:3.1'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:3.2'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:3.3'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind:3.4'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:3.5'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind view
		equals: nil
		description: 'testWithMoveBehind:3.6'.
	self
		assert: tmp_KMHTfPUrOq5 toObjects class
		equals: Array
		description: 'testWithMoveBehind:3.7'.
	self
		assert: tmp_KMHTfPUrOq5 toObjects size
		equals: 0
		description: 'testWithMoveBehind:3.8'.
	self
		assert: tmp_KMHTfPUrOq5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:3.9'.
	self
		assert: tmp_KMHTfPUrOq5 controlPoints
		equals: nil
		description: 'testWithMoveBehind:3.10'.
	self
		assert: tmp_KMHTfPUrOq5 toElements class
		equals: Array
		description: 'testWithMoveBehind:3.11'.
	self
		assert: tmp_KMHTfPUrOq5 toElements size
		equals: 0
		description: 'testWithMoveBehind:3.12'.
	self
		assert: tmp_KMHTfPUrOq5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:3.13'.
	self
		assert: tmp_KMHTfPUrOq5 view
		equals: nil
		description: 'testWithMoveBehind:3.14'.
	self
		assert: tmp_KMHTfPUrOq5 fromElements class
		equals: Array
		description: 'testWithMoveBehind:3.15'.
	self
		assert: tmp_KMHTfPUrOq5 fromElements size
		equals: 0
		description: 'testWithMoveBehind:3.16'.
	self
		assert: tmp_KMHTfPUrOq5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:3.17'.
	self
		assert: tmp_KMHTfPUrOq5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:3.18'.
	self
		assert: tmp_KMHTfPUrOq5 viewElements class
		equals: Array
		description: 'testWithMoveBehind:3.19'.
	self
		assert: tmp_KMHTfPUrOq5 viewElements size
		equals: 0
		description: 'testWithMoveBehind:3.20'.
	tmp_KMHTfPUrOq5 moveBehind.
	self
		assert: tmp_KMHTfPUrOq5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:4.1'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:4.2'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:4.3'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind:4.4'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:4.5'.
	self
		assert: tmp_KMHTfPUrOq5 moveBehind view
		equals: nil
		description: 'testWithMoveBehind:4.6'.
	self
		assert: tmp_KMHTfPUrOq5 toObjects class
		equals: Array
		description: 'testWithMoveBehind:4.7'.
	self
		assert: tmp_KMHTfPUrOq5 toObjects size
		equals: 0
		description: 'testWithMoveBehind:4.8'.
	self
		assert: tmp_KMHTfPUrOq5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:4.9'.
	self
		assert: tmp_KMHTfPUrOq5 controlPoints
		equals: nil
		description: 'testWithMoveBehind:4.10'.
	self
		assert: tmp_KMHTfPUrOq5 toElements class
		equals: Array
		description: 'testWithMoveBehind:4.11'.
	self
		assert: tmp_KMHTfPUrOq5 toElements size
		equals: 0
		description: 'testWithMoveBehind:4.12'.
	self
		assert: tmp_KMHTfPUrOq5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:4.13'.
	self
		assert: tmp_KMHTfPUrOq5 view
		equals: nil
		description: 'testWithMoveBehind:4.14'.
	self
		assert: tmp_KMHTfPUrOq5 fromElements class
		equals: Array
		description: 'testWithMoveBehind:4.15'.
	self
		assert: tmp_KMHTfPUrOq5 fromElements size
		equals: 0
		description: 'testWithMoveBehind:4.16'.
	self
		assert: tmp_KMHTfPUrOq5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:4.17'.
	self
		assert: tmp_KMHTfPUrOq5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:4.18'.
	self
		assert: tmp_KMHTfPUrOq5 viewElements class
		equals: Array
		description: 'testWithMoveBehind:4.19'.
	self
		assert: tmp_KMHTfPUrOq5 viewElements size
		equals: 0
		description: 'testWithMoveBehind:4.20'.
	tmp_jDkCSSu6kE6 := RSEdgeBuilder new.
	self
		assert: tmp_jDkCSSu6kE6 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:5.1'.
	self
		assert: tmp_jDkCSSu6kE6 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind:5.2'.
	self
		assert: tmp_jDkCSSu6kE6 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:5.3'.
	self
		assert: tmp_jDkCSSu6kE6 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind:5.4'.
	self
		assert: tmp_jDkCSSu6kE6 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:5.5'.
	self
		assert: tmp_jDkCSSu6kE6 moveBehind view
		equals: nil
		description: 'testWithMoveBehind:5.6'.
	self
		assert: tmp_jDkCSSu6kE6 toObjects class
		equals: Array
		description: 'testWithMoveBehind:5.7'.
	self
		assert: tmp_jDkCSSu6kE6 toObjects size
		equals: 0
		description: 'testWithMoveBehind:5.8'.
	self
		assert: tmp_jDkCSSu6kE6 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind:5.9'.
	self
		assert: tmp_jDkCSSu6kE6 controlPoints
		equals: nil
		description: 'testWithMoveBehind:5.10'.
	self
		assert: tmp_jDkCSSu6kE6 toElements class
		equals: Array
		description: 'testWithMoveBehind:5.11'.
	self
		assert: tmp_jDkCSSu6kE6 toElements size
		equals: 0
		description: 'testWithMoveBehind:5.12'.
	self
		assert: tmp_jDkCSSu6kE6 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind:5.13'.
	self
		assert: tmp_jDkCSSu6kE6 view
		equals: nil
		description: 'testWithMoveBehind:5.14'.
	self
		assert: tmp_jDkCSSu6kE6 fromElements class
		equals: Array
		description: 'testWithMoveBehind:5.15'.
	self
		assert: tmp_jDkCSSu6kE6 fromElements size
		equals: 0
		description: 'testWithMoveBehind:5.16'.
	self
		assert: tmp_jDkCSSu6kE6 fromObjects class
		equals: Array
		description: 'testWithMoveBehind:5.17'.
	self
		assert: tmp_jDkCSSu6kE6 fromObjects size
		equals: 0
		description: 'testWithMoveBehind:5.18'.
	self
		assert: tmp_jDkCSSu6kE6 viewElements class
		equals: Array
		description: 'testWithMoveBehind:5.19'.
	self
		assert: tmp_jDkCSSu6kE6 viewElements size
		equals: 0
		description: 'testWithMoveBehind:5.20'.
	self
		should: [ tmp_jDkCSSu6kE6
				useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6) ]
		raise: MessageNotUnderstood
		description: 'testWithMoveBehind:6.1'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testWithMoveBehind02 [
	<madeBySmallAmp>
	| tmp_EX79IVzocI1 tmp_bZpwVj2g2e3 tmp_j8S3SM97cC5 tmp_fPoigiduVG6 |
	tmp_bZpwVj2g2e3 := RSEdgeBuilder new.
	self
		assert: tmp_bZpwVj2g2e3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:1.1'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:1.2'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:1.3'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind02:1.4'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:1.5'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind view
		equals: nil
		description: 'testWithMoveBehind02:1.6'.
	self
		assert: tmp_bZpwVj2g2e3 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:1.7'.
	self
		assert: tmp_bZpwVj2g2e3 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:1.8'.
	self
		assert: tmp_bZpwVj2g2e3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:1.9'.
	self
		assert: tmp_bZpwVj2g2e3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:1.10'.
	self
		assert: tmp_bZpwVj2g2e3 toElements class
		equals: Array
		description: 'testWithMoveBehind02:1.11'.
	self
		assert: tmp_bZpwVj2g2e3 toElements size
		equals: 0
		description: 'testWithMoveBehind02:1.12'.
	self
		assert: tmp_bZpwVj2g2e3 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:1.13'.
	self
		assert: tmp_bZpwVj2g2e3 view
		equals: nil
		description: 'testWithMoveBehind02:1.14'.
	self
		assert: tmp_bZpwVj2g2e3 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:1.15'.
	self
		assert: tmp_bZpwVj2g2e3 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:1.16'.
	self
		assert: tmp_bZpwVj2g2e3 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:1.17'.
	self
		assert: tmp_bZpwVj2g2e3 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:1.18'.
	self
		assert: tmp_bZpwVj2g2e3 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:1.19'.
	self
		assert: tmp_bZpwVj2g2e3 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:1.20'.
	tmp_bZpwVj2g2e3 view: view.
	self
		assert: tmp_bZpwVj2g2e3 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:2.1'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:2.2'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:2.3'.
	self
		assert: tmp_bZpwVj2g2e3 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind02:2.4'.
	self
		assert: tmp_bZpwVj2g2e3 toObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.5'.
	self
		assert: tmp_bZpwVj2g2e3 toObjects size
		equals: 10
		description: 'testWithMoveBehind02:2.6'.
	self
		assert: tmp_bZpwVj2g2e3 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:2.7'.
	self
		assert: tmp_bZpwVj2g2e3 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:2.8'.
	self
		assert: tmp_bZpwVj2g2e3 toElements class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.9'.
	self
		assert: tmp_bZpwVj2g2e3 toElements size
		equals: 10
		description: 'testWithMoveBehind02:2.10'.
	self
		assert: tmp_bZpwVj2g2e3 view class
		equals: RSView
		description: 'testWithMoveBehind02:2.11'.
	self
		assert: tmp_bZpwVj2g2e3 view numberOfEdges class
		equals: SmallInteger
		description: 'testWithMoveBehind02:2.12'.
	self
		assert: tmp_bZpwVj2g2e3 view numberOfEdges
		equals: 0
		description: 'testWithMoveBehind02:2.13'.
	self
		assert: tmp_bZpwVj2g2e3 fromElements class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.14'.
	self
		assert: tmp_bZpwVj2g2e3 fromElements size
		equals: 10
		description: 'testWithMoveBehind02:2.15'.
	self
		assert: tmp_bZpwVj2g2e3 fromObjects class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.16'.
	self
		assert: tmp_bZpwVj2g2e3 fromObjects size
		equals: 10
		description: 'testWithMoveBehind02:2.17'.
	self
		assert: tmp_bZpwVj2g2e3 viewElements class
		equals: TSGroup
		description: 'testWithMoveBehind02:2.18'.
	self
		assert: tmp_bZpwVj2g2e3 viewElements size
		equals: 10
		description: 'testWithMoveBehind02:2.19'.
	tmp_j8S3SM97cC5 := RSEdgeBuilder new.
	self
		assert: tmp_j8S3SM97cC5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:3.1'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:3.2'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:3.3'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind02:3.4'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:3.5'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind view
		equals: nil
		description: 'testWithMoveBehind02:3.6'.
	self
		assert: tmp_j8S3SM97cC5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:3.7'.
	self
		assert: tmp_j8S3SM97cC5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:3.8'.
	self
		assert: tmp_j8S3SM97cC5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:3.9'.
	self
		assert: tmp_j8S3SM97cC5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:3.10'.
	self
		assert: tmp_j8S3SM97cC5 toElements class
		equals: Array
		description: 'testWithMoveBehind02:3.11'.
	self
		assert: tmp_j8S3SM97cC5 toElements size
		equals: 0
		description: 'testWithMoveBehind02:3.12'.
	self
		assert: tmp_j8S3SM97cC5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:3.13'.
	self
		assert: tmp_j8S3SM97cC5 view
		equals: nil
		description: 'testWithMoveBehind02:3.14'.
	self
		assert: tmp_j8S3SM97cC5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:3.15'.
	self
		assert: tmp_j8S3SM97cC5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:3.16'.
	self
		assert: tmp_j8S3SM97cC5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:3.17'.
	self
		assert: tmp_j8S3SM97cC5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:3.18'.
	self
		assert: tmp_j8S3SM97cC5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:3.19'.
	self
		assert: tmp_j8S3SM97cC5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:3.20'.
	tmp_j8S3SM97cC5 moveBehind.
	self
		assert: tmp_j8S3SM97cC5 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:4.1'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:4.2'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:4.3'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind02:4.4'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:4.5'.
	self
		assert: tmp_j8S3SM97cC5 moveBehind view
		equals: nil
		description: 'testWithMoveBehind02:4.6'.
	self
		assert: tmp_j8S3SM97cC5 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:4.7'.
	self
		assert: tmp_j8S3SM97cC5 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:4.8'.
	self
		assert: tmp_j8S3SM97cC5 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:4.9'.
	self
		assert: tmp_j8S3SM97cC5 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:4.10'.
	self
		assert: tmp_j8S3SM97cC5 toElements class
		equals: Array
		description: 'testWithMoveBehind02:4.11'.
	self
		assert: tmp_j8S3SM97cC5 toElements size
		equals: 0
		description: 'testWithMoveBehind02:4.12'.
	self
		assert: tmp_j8S3SM97cC5 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:4.13'.
	self
		assert: tmp_j8S3SM97cC5 view
		equals: nil
		description: 'testWithMoveBehind02:4.14'.
	self
		assert: tmp_j8S3SM97cC5 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:4.15'.
	self
		assert: tmp_j8S3SM97cC5 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:4.16'.
	self
		assert: tmp_j8S3SM97cC5 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:4.17'.
	self
		assert: tmp_j8S3SM97cC5 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:4.18'.
	self
		assert: tmp_j8S3SM97cC5 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:4.19'.
	self
		assert: tmp_j8S3SM97cC5 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:4.20'.
	tmp_fPoigiduVG6 := RSEdgeBuilder new.
	self
		assert: tmp_fPoigiduVG6 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:5.1'.
	self
		assert: tmp_fPoigiduVG6 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:5.2'.
	self
		assert: tmp_fPoigiduVG6 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:5.3'.
	self
		assert: tmp_fPoigiduVG6 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind02:5.4'.
	self
		assert: tmp_fPoigiduVG6 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:5.5'.
	self
		assert: tmp_fPoigiduVG6 moveBehind view
		equals: nil
		description: 'testWithMoveBehind02:5.6'.
	self
		assert: tmp_fPoigiduVG6 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:5.7'.
	self
		assert: tmp_fPoigiduVG6 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:5.8'.
	self
		assert: tmp_fPoigiduVG6 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:5.9'.
	self
		assert: tmp_fPoigiduVG6 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:5.10'.
	self
		assert: tmp_fPoigiduVG6 toElements class
		equals: Array
		description: 'testWithMoveBehind02:5.11'.
	self
		assert: tmp_fPoigiduVG6 toElements size
		equals: 0
		description: 'testWithMoveBehind02:5.12'.
	self
		assert: tmp_fPoigiduVG6 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:5.13'.
	self
		assert: tmp_fPoigiduVG6 view
		equals: nil
		description: 'testWithMoveBehind02:5.14'.
	self
		assert: tmp_fPoigiduVG6 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:5.15'.
	self
		assert: tmp_fPoigiduVG6 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:5.16'.
	self
		assert: tmp_fPoigiduVG6 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:5.17'.
	self
		assert: tmp_fPoigiduVG6 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:5.18'.
	self
		assert: tmp_fPoigiduVG6 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:5.19'.
	self
		assert: tmp_fPoigiduVG6 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:5.20'.
	tmp_EX79IVzocI1 := tmp_fPoigiduVG6 connectFrom: [ :v | v - 1 ].
	self
		assert: tmp_fPoigiduVG6 class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:6.1'.
	self
		assert: tmp_fPoigiduVG6 moveBehind class
		equals: RSEdgeBuilder
		description: 'testWithMoveBehind02:6.2'.
	self
		assert: tmp_fPoigiduVG6 moveBehind controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:6.3'.
	self
		assert: tmp_fPoigiduVG6 moveBehind controlPoints
		equals: nil
		description: 'testWithMoveBehind02:6.4'.
	self
		assert: tmp_fPoigiduVG6 moveBehind view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:6.5'.
	self
		assert: tmp_fPoigiduVG6 moveBehind view
		equals: nil
		description: 'testWithMoveBehind02:6.6'.
	self
		assert: tmp_fPoigiduVG6 toObjects class
		equals: Array
		description: 'testWithMoveBehind02:6.7'.
	self
		assert: tmp_fPoigiduVG6 toObjects size
		equals: 0
		description: 'testWithMoveBehind02:6.8'.
	self
		assert: tmp_fPoigiduVG6 controlPoints class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:6.9'.
	self
		assert: tmp_fPoigiduVG6 controlPoints
		equals: nil
		description: 'testWithMoveBehind02:6.10'.
	self
		assert: tmp_fPoigiduVG6 toElements class
		equals: Array
		description: 'testWithMoveBehind02:6.11'.
	self
		assert: tmp_fPoigiduVG6 toElements size
		equals: 0
		description: 'testWithMoveBehind02:6.12'.
	self
		assert: tmp_fPoigiduVG6 view class
		equals: UndefinedObject
		description: 'testWithMoveBehind02:6.13'.
	self
		assert: tmp_fPoigiduVG6 view
		equals: nil
		description: 'testWithMoveBehind02:6.14'.
	self
		assert: tmp_fPoigiduVG6 fromElements class
		equals: Array
		description: 'testWithMoveBehind02:6.15'.
	self
		assert: tmp_fPoigiduVG6 fromElements size
		equals: 0
		description: 'testWithMoveBehind02:6.16'.
	self
		assert: tmp_fPoigiduVG6 fromObjects class
		equals: Array
		description: 'testWithMoveBehind02:6.17'.
	self
		assert: tmp_fPoigiduVG6 fromObjects size
		equals: 0
		description: 'testWithMoveBehind02:6.18'.
	self
		assert: tmp_fPoigiduVG6 viewElements class
		equals: Array
		description: 'testWithMoveBehind02:6.19'.
	self
		assert: tmp_fPoigiduVG6 viewElements size
		equals: 0
		description: 'testWithMoveBehind02:6.20'.
	self
		assert: tmp_EX79IVzocI1 class
		equals: TSGroup
		description: 'testWithMoveBehind02:6.1'.
	self
		assert: tmp_EX79IVzocI1 size
		equals: 0
		description: 'testWithMoveBehind02:6.2'
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderAmpTest >> testconnectFromToAll [
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:3.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll:3.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll:3.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll:3.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:3.12'.
	self
		assert: v canvas numberOfShapes
		equals: 0
		description: 'testconnectFromToAll:3.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll:3.14'.
	self
		assert: v elements size
		equals: 0
		description: 'testconnectFromToAll:3.15'.
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:4.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll:4.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll:4.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll:4.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:4.12'.
	self
		assert: v canvas numberOfShapes
		equals: 3
		description: 'testconnectFromToAll:4.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll:4.14'.
	self
		assert: v elements size
		equals: 3
		description: 'testconnectFromToAll:4.15'.
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
		assert: v canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:5.8'.
	self
		assert: v canvas numberOfFixedShapes
		equals: 0
		description: 'testconnectFromToAll:5.9'.
	self
		assert: v canvas morph class
		equals: UndefinedObject
		description: 'testconnectFromToAll:5.10'.
	self
		assert: v canvas morph
		equals: nil
		description: 'testconnectFromToAll:5.11'.
	self
		assert: v canvas numberOfShapes class
		equals: SmallInteger
		description: 'testconnectFromToAll:5.12'.
	self
		assert: v canvas numberOfShapes
		equals: 6
		description: 'testconnectFromToAll:5.13'.
	self
		assert: v elements class
		equals: TSGroup
		description: 'testconnectFromToAll:5.14'.
	self
		assert: v elements size
		equals: 6
		description: 'testconnectFromToAll:5.15'.
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
