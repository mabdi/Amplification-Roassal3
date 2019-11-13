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
	| v eb tmp_YovJF7oads5 tmp_p1G9j8Bazg6 |
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
	tmp_YovJF7oads5 := eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	self assert: eb class equals: RSEdgeBuilder.
	self assert: eb view numberOfEdges equals: 2.
	self assert: tmp_YovJF7oads5 class equals: TSGroup.
	tmp_p1G9j8Bazg6 := TSGridLayout on: v elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectFrom_amp [
	<madeBySmallAmp>
	| e tmp_gvKJXALbUL3 |
	b view: view.
	b objects: #(1 2).
	self assert: b fromElements class equals: TSGroup.
	tmp_gvKJXALbUL3 := b connectFrom: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 1.
	self assert: tmp_gvKJXALbUL3 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectToAll_amp [
	<madeBySmallAmp>
	| eFrom eTo tmp_ng2sDHs5133 |
	b view: view.
	b objects: #(1 2 3).
	tmp_ng2sDHs5133 := b
		connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 3.
	self assert: tmp_ng2sDHs5133 class equals: TSGroup.
	eFrom := (view edges collect: [ :edge | edge from model ]) sorted
		asArray.
	eTo := (view edges collect: [ :edge | edge to model ]) sorted asArray
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectTo_amp [
	<madeBySmallAmp>
	| e tmp_UL3xK3i3Vi3 |
	b view: view.
	b objects: #(1 2).
	tmp_UL3xK3i3Vi3 := b connectTo: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: tmp_UL3xK3i3Vi3 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testFromAll_amp [
	<madeBySmallAmp>
	| v es tmp_MAkLlVRCnI4 tmp_HSGNGVtBeI6 tmp_UF0iQjg0zJ8 tmp_nJf6EL8QAW9 tmp_Pli53kceem10 |
	v := RSView new.
	es := (RSShapeBuilder circle size: 20) elementsOn: (1 to: 2).
	v addAll: es.
	tmp_HSGNGVtBeI6 := RSEdgeBuilder new.
	tmp_Pli53kceem10 := TSTreeLayout on: es.
	tmp_UF0iQjg0zJ8 := RSEdgeBuilder new.
	tmp_nJf6EL8QAW9 := RSEdgeBuilder new.
	tmp_MAkLlVRCnI4 := tmp_nJf6EL8QAW9
		connectFromAll: (Array with: 1)
		to: 2.
	self assert: tmp_nJf6EL8QAW9 class equals: RSEdgeBuilder.
	self assert: tmp_MAkLlVRCnI4 class equals: TSGroup.
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
	| tmp_MoUgspPvsn4 |
	b view: view.
	b noBidirectional.
	b objects: #(1 2).
	tmp_MoUgspPvsn4 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self assert: b view numberOfEdges equals: 1.
	elements := view elementsFromModels: #(1 2)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testSimple5_amp [
	<madeBySmallAmp>
	| tmp_4bxiPnh2z11 tmp_yLSoCOHTuY3 tmp_EvHZFgNPIP5 tmp_VPZ9w5oi8L6 |
	tmp_yLSoCOHTuY3 := RSEdgeBuilder line.
	tmp_yLSoCOHTuY3 view: view.
	tmp_EvHZFgNPIP5 := RSEdgeBuilder line.
	tmp_VPZ9w5oi8L6 := RSEdgeBuilder line.
	tmp_4bxiPnh2z11 := tmp_VPZ9w5oi8L6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self assert: tmp_VPZ9w5oi8L6 class equals: RSEdgeBuilder.
	self assert: tmp_4bxiPnh2z11 class equals: TSGroup
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testSource_amp [
	<madeBySmallAmp>
	| v es eb c tmp_3ZxTA6axFL4 tmp_FzGhZk2bLb5 tmp_Y3rRT4Raa86 |
	v := RSView new.
	es := RSShapeBuilder box elementsOn: #(1 2 3).
	v addAll: es.
	eb := RSEdgeBuilder line.
	eb view: v.
	c := OrderedCollection new.
	tmp_3ZxTA6axFL4 := c add: 1 -> 2.
	tmp_FzGhZk2bLb5 := c add: 3 -> 1.
	tmp_Y3rRT4Raa86 := eb source: c connectFrom: #key to: #value.
	self assert: eb class equals: RSEdgeBuilder.
	self assert: tmp_Y3rRT4Raa86 class equals: TSGroup
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
