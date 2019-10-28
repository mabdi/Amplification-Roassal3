Class {
	#name : #RSEdgeBuilderMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view',
		'elements',
		'b'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RSEdgeBuilder line.
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testAllowRepetitionAndUseAssociations [
	<madeBySmallAmp>
	| v eb tmp_SZUnnO6Tp35 tmp_kb1oGnmT4C6 |
	v := RSView new.
	v addAll: (RSShapeBuilder box elementsOn: (1 to: 3)).
	eb := RSEdgeBuilder line.
	self assert: eb class equals: RSEdgeBuilder.
	self
		assert: eb moveBehind controlPoints class
		equals: UndefinedObject.
	self assert: eb moveBehind view class equals: UndefinedObject.
	self assert: eb toObjects class equals: Array.
	self assert: eb fromElements class equals: Array.
	self assert: eb fromObjects class equals: Array.
	eb view: v.
	eb color: (Color red alpha: 0.5).
	eb noRepetition.
	tmp_SZUnnO6Tp35 := eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	self assert: eb class equals: RSEdgeBuilder.
	self assert: eb view numberOfEdges equals: 2.
	self assert: tmp_SZUnnO6Tp35 class equals: TSGroup.
	tmp_kb1oGnmT4C6 := TSGridLayout on: v elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testConnectFrom [
	<madeBySmallAmp>
	| e tmp_T9gePw4AI03 |
	b view: view.
	b objects: #(1 2).
	self assert: b fromElements class equals: TSGroup.
	tmp_T9gePw4AI03 := b connectFrom: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 1.
	self assert: tmp_T9gePw4AI03 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testConnectTo [
	<madeBySmallAmp>
	| e tmp_HTKDk0iRrz3 |
	b view: view.
	b objects: #(1 2).
	tmp_HTKDk0iRrz3 := b connectTo: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: tmp_HTKDk0iRrz3 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testConnectToAll [
	<madeBySmallAmp>
	| eFrom eTo tmp_05u8ib0HNF3 |
	b view: view.
	b objects: #(1 2 3).
	tmp_05u8ib0HNF3 := b
		connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 3.
	self assert: tmp_05u8ib0HNF3 class equals: TSGroup.
	eFrom := (view edges collect: [ :edge | edge from model ]) sorted
		asArray.
	eTo := (view edges collect: [ :edge | edge to model ]) sorted asArray
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testFromAll [
	<madeBySmallAmp>
	| v es tmp_TxrHi4YZ0w4 tmp_pIgkRoBd566 tmp_FwmysnzulH8 tmp_QW8tayaaWs9 tmp_NttCspMgXZ10 |
	v := RSView new.
	es := (RSShapeBuilder circle size: 20) elementsOn: (1 to: 2).
	v addAll: es.
	tmp_pIgkRoBd566 := RSEdgeBuilder new.
	tmp_NttCspMgXZ10 := TSTreeLayout on: es.
	tmp_FwmysnzulH8 := RSEdgeBuilder new.
	tmp_QW8tayaaWs9 := RSEdgeBuilder new.
	tmp_TxrHi4YZ0w4 := tmp_QW8tayaaWs9
		connectFromAll: (Array with: 1)
		to: 2.
	self assert: tmp_QW8tayaaWs9 class equals: RSEdgeBuilder.
	self assert: tmp_TxrHi4YZ0w4 class equals: TSGroup.
	TSTreeLayout on: es
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testObjects02 [
	<madeBySmallAmp>
	b view: view.
	b objects: #even.
	self assert: b toObjects size equals: 5.
	self assert: b fromElements size equals: 5
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testShouldAllowBidirection [
	<madeBySmallAmp>
	| tmp_RL4qv9d8be4 |
	b view: view.
	b noBidirectional.
	b objects: #(1 2).
	tmp_RL4qv9d8be4 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self assert: b view numberOfEdges equals: 1.
	elements := view elementsFromModels: #(1 2)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testSimple5 [
	<madeBySmallAmp>
	| tmp_vvmz6E6lS81 tmp_DMST4Jrz2B3 tmp_Ev8QcUz3Bo5 tmp_LbOzFmUcMU6 |
	tmp_DMST4Jrz2B3 := RSEdgeBuilder line.
	tmp_DMST4Jrz2B3 view: view.
	tmp_Ev8QcUz3Bo5 := RSEdgeBuilder line.
	tmp_LbOzFmUcMU6 := RSEdgeBuilder line.
	tmp_vvmz6E6lS81 := tmp_LbOzFmUcMU6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self assert: tmp_LbOzFmUcMU6 class equals: RSEdgeBuilder.
	self assert: tmp_vvmz6E6lS81 class equals: TSGroup
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testSource [
	<madeBySmallAmp>
	| v es eb c tmp_zpAROMnD0K4 tmp_dowUIRBNRi5 tmp_ZCMGeJjjr16 |
	v := RSView new.
	es := RSShapeBuilder box elementsOn: #(1 2 3).
	v addAll: es.
	eb := RSEdgeBuilder line.
	eb view: v.
	c := OrderedCollection new.
	tmp_zpAROMnD0K4 := c add: 1 -> 2.
	tmp_dowUIRBNRi5 := c add: 3 -> 1.
	tmp_ZCMGeJjjr16 := eb source: c connectFrom: #key to: #value.
	self assert: eb class equals: RSEdgeBuilder.
	self assert: tmp_ZCMGeJjjr16 class equals: TSGroup
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderMinAmpTest >> testconnectFromToAll [
	<madeBySmallAmp>
	| es1 es2 edges v |
	es1 := RSShapeBuilder circle elementsOn: #(1 2 3).
	es2 := RSShapeBuilder box elementsOn: #(1 2 3).
	v := RSView new.
	v addAll: es1.
	v addAll: es2.
	edges := RSEdgeBuilder line
		view: v;
		fromElements: es1;
		toElements: es2;
		connectFrom: #yourself toAll: [ :obj | Array with: obj ].
	self assert: edges size equals: 3
]
