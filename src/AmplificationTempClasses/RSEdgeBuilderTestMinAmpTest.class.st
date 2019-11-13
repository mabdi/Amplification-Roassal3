Class {
	#name : #RSEdgeBuilderTestMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view',
		'elements',
		'b'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RSEdgeBuilder line.
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testAllowRepetitionAndUseAssociations_amp [
	<madeBySmallAmp>
	| v eb tmp_bbf5HEYoXX5 tmp_CNd0FUiWrj6 |
	v := RSView new.
	v addAll: (RSShapeBuilder box elementsOn: (1 to: 3)).
	eb := RSEdgeBuilder line.
	self assert: eb class equals: RSEdgeBuilder.
	self assert: eb isBidirectional class equals: True.
	self assert: eb toObjects class equals: Array.
	self assert: eb controlPoints class equals: UndefinedObject.
	self assert: eb view class equals: UndefinedObject.
	self assert: eb fromElements class equals: Array.
	self assert: eb fromObjects class equals: Array.
	eb view: v.
	eb color: (Color red alpha: 0.5).
	eb noRepetition.
	tmp_bbf5HEYoXX5 := eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	self assert: eb class equals: RSEdgeBuilder.
	self assert: eb view numberOfEdges equals: 2.
	self assert: tmp_bbf5HEYoXX5 class equals: TSGroup.
	tmp_CNd0FUiWrj6 := TSGridLayout on: v elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectFrom_amp [
	<madeBySmallAmp>
	| e tmp_VqT2Ilt5H53 |
	b view: view.
	b objects: #(1 2).
	self assert: b fromElements class equals: TSGroup.
	tmp_VqT2Ilt5H53 := b connectFrom: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 1.
	self assert: tmp_VqT2Ilt5H53 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectToAll_amp [
	<madeBySmallAmp>
	| eFrom eTo tmp_h6q7XIJ87V3 |
	b view: view.
	b objects: #(1 2 3).
	tmp_h6q7XIJ87V3 := b
		connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 3.
	self assert: tmp_h6q7XIJ87V3 class equals: TSGroup.
	eFrom := (view edges collect: [ :edge | edge from model ]) sorted
		asArray.
	eTo := (view edges collect: [ :edge | edge to model ]) sorted asArray
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectTo_amp [
	<madeBySmallAmp>
	| e tmp_VyMpNzMWxR3 |
	b view: view.
	b objects: #(1 2).
	tmp_VyMpNzMWxR3 := b connectTo: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: tmp_VyMpNzMWxR3 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testFromAll_amp [
	<madeBySmallAmp>
	| v es tmp_V3HLESOJqS4 tmp_vuuJlYs8hG6 tmp_Yx5JIciIoV8 tmp_8xiyVuZw5o9 tmp_UUa8MLqecR10 |
	v := RSView new.
	es := (RSShapeBuilder circle size: 20) elementsOn: (1 to: 2).
	v addAll: es.
	tmp_vuuJlYs8hG6 := RSEdgeBuilder new.
	tmp_UUa8MLqecR10 := TSTreeLayout on: es.
	tmp_Yx5JIciIoV8 := RSEdgeBuilder new.
	tmp_8xiyVuZw5o9 := RSEdgeBuilder new.
	tmp_V3HLESOJqS4 := tmp_8xiyVuZw5o9
		connectFromAll: (Array with: 1)
		to: 2.
	self assert: tmp_8xiyVuZw5o9 class equals: RSEdgeBuilder.
	self assert: tmp_V3HLESOJqS4 class equals: TSGroup.
	TSTreeLayout on: es
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testObjects02_amp [
	<madeBySmallAmp>
	b view: view.
	b objects: #even.
	self assert: b toObjects size equals: 5.
	self assert: b fromElements size equals: 5
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testShouldAllowBidirection_amp [
	<madeBySmallAmp>
	| tmp_GD4YB9Plzu4 |
	b view: view.
	b noBidirectional.
	b objects: #(1 2).
	tmp_GD4YB9Plzu4 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self assert: b view numberOfEdges equals: 1.
	elements := view elementsFromModels: #(1 2)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testSimple5_amp [
	<madeBySmallAmp>
	| tmp_dZOEXlAz681 tmp_lbWjN333w53 tmp_TBBQylm1re5 tmp_3evenUevuN6 |
	tmp_lbWjN333w53 := RSEdgeBuilder line.
	tmp_lbWjN333w53 view: view.
	tmp_TBBQylm1re5 := RSEdgeBuilder line.
	tmp_3evenUevuN6 := RSEdgeBuilder line.
	tmp_dZOEXlAz681 := tmp_3evenUevuN6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self assert: tmp_3evenUevuN6 class equals: RSEdgeBuilder.
	self assert: tmp_dZOEXlAz681 class equals: TSGroup
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testSource_amp [
	<madeBySmallAmp>
	| v es eb c tmp_85HGeJ9p9Q4 tmp_YMg7vslTOS5 tmp_xVckvdjllI6 |
	v := RSView new.
	es := RSShapeBuilder box elementsOn: #(1 2 3).
	v addAll: es.
	eb := RSEdgeBuilder line.
	eb view: v.
	c := OrderedCollection new.
	tmp_85HGeJ9p9Q4 := c add: 1 -> 2.
	tmp_YMg7vslTOS5 := c add: 3 -> 1.
	tmp_xVckvdjllI6 := eb source: c connectFrom: #key to: #value.
	self assert: eb class equals: RSEdgeBuilder.
	self assert: tmp_xVckvdjllI6 class equals: TSGroup
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testconnectFromToAll_amp [
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
