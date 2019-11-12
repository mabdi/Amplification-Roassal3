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
RSEdgeBuilderTestMinAmpTest >> testAllowRepetitionAndUseAssociations [
	<madeBySmallAmp>
	| v eb tmp_vp3J4125zZ5 tmp_fYUZ1IsLkH6 |
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
	tmp_vp3J4125zZ5 := eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	self assert: eb class equals: RSEdgeBuilder.
	self assert: eb view numberOfEdges equals: 2.
	self assert: tmp_vp3J4125zZ5 class equals: TSGroup.
	tmp_fYUZ1IsLkH6 := TSGridLayout on: v elements
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectFrom [
	<madeBySmallAmp>
	| e tmp_ArvRpglQ3C3 |
	b view: view.
	b objects: #(1 2).
	self assert: b fromElements class equals: TSGroup.
	tmp_ArvRpglQ3C3 := b connectFrom: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 1.
	self assert: tmp_ArvRpglQ3C3 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectTo [
	<madeBySmallAmp>
	| e tmp_J6fDRtz6dU3 |
	b view: view.
	b objects: #(1 2).
	tmp_J6fDRtz6dU3 := b connectTo: [ :v | v - 1 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: tmp_J6fDRtz6dU3 class equals: TSGroup.
	e := view edges anyOne
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testConnectToAll [
	<madeBySmallAmp>
	| eFrom eTo tmp_IUAwBuHd963 |
	b view: view.
	b objects: #(1 2 3).
	tmp_IUAwBuHd963 := b
		connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self assert: b class equals: RSEdgeBuilder.
	self assert: b view numberOfEdges equals: 3.
	self assert: tmp_IUAwBuHd963 class equals: TSGroup.
	eFrom := (view edges collect: [ :edge | edge from model ]) sorted
		asArray.
	eTo := (view edges collect: [ :edge | edge to model ]) sorted asArray
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testFromAll [
	<madeBySmallAmp>
	| v es tmp_33tO5IpAN84 tmp_sJMBNYw9IT6 tmp_UXFV4Ikazw8 tmp_SO3S2tbDGg9 tmp_entNKrZbSi10 |
	v := RSView new.
	es := (RSShapeBuilder circle size: 20) elementsOn: (1 to: 2).
	v addAll: es.
	tmp_sJMBNYw9IT6 := RSEdgeBuilder new.
	tmp_entNKrZbSi10 := TSTreeLayout on: es.
	tmp_UXFV4Ikazw8 := RSEdgeBuilder new.
	tmp_SO3S2tbDGg9 := RSEdgeBuilder new.
	tmp_33tO5IpAN84 := tmp_SO3S2tbDGg9
		connectFromAll: (Array with: 1)
		to: 2.
	self assert: tmp_SO3S2tbDGg9 class equals: RSEdgeBuilder.
	self assert: tmp_33tO5IpAN84 class equals: TSGroup.
	TSTreeLayout on: es
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testObjects02 [
	<madeBySmallAmp>
	b view: view.
	b objects: #even.
	self assert: b toObjects size equals: 5.
	self assert: b fromElements size equals: 5
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testShouldAllowBidirection [
	<madeBySmallAmp>
	| tmp_KCNP7bK40k4 |
	b view: view.
	b noBidirectional.
	b objects: #(1 2).
	tmp_KCNP7bK40k4 := b
		useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self assert: b view numberOfEdges equals: 1.
	elements := view elementsFromModels: #(1 2)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testSimple5 [
	<madeBySmallAmp>
	| tmp_mV4IiiRyu41 tmp_oZeclfB0BL3 tmp_02QncjsGGk5 tmp_K3uPWdoSid6 |
	tmp_oZeclfB0BL3 := RSEdgeBuilder line.
	tmp_oZeclfB0BL3 view: view.
	tmp_02QncjsGGk5 := RSEdgeBuilder line.
	tmp_K3uPWdoSid6 := RSEdgeBuilder line.
	tmp_mV4IiiRyu41 := tmp_K3uPWdoSid6
		connectFrom: #yourself
		toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self assert: tmp_K3uPWdoSid6 class equals: RSEdgeBuilder.
	self assert: tmp_mV4IiiRyu41 class equals: TSGroup
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testSource [
	<madeBySmallAmp>
	| v es eb c tmp_6NQ2fHl2Kq4 tmp_ZBTKL0caSb5 tmp_qpfK6DBOqs6 |
	v := RSView new.
	es := RSShapeBuilder box elementsOn: #(1 2 3).
	v addAll: es.
	eb := RSEdgeBuilder line.
	eb view: v.
	c := OrderedCollection new.
	tmp_6NQ2fHl2Kq4 := c add: 1 -> 2.
	tmp_ZBTKL0caSb5 := c add: 3 -> 1.
	tmp_qpfK6DBOqs6 := eb source: c connectFrom: #key to: #value.
	self assert: eb class equals: RSEdgeBuilder.
	self assert: tmp_qpfK6DBOqs6 class equals: TSGroup
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAmpTest >> testconnectFromToAll [
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
