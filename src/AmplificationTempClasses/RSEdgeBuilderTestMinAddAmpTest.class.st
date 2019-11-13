Class {
	#name : #RSEdgeBuilderTestMinAddAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view',
		'elements',
		'b'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RSEdgeBuilder line.
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testAllowRepetitionAndUseAssociations [
	<madeBySmallAmp>
	| v eb |
	v := RSView new.
	v addAll: (RSShapeBuilder box elementsOn: (1 to: 3)).
	eb := RSEdgeBuilder line.
	eb view: v.
	eb color: (Color red alpha: 0.5).
	eb noRepetition.
	eb useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 1 -> 2).
	TSGridLayout on: v elements.
	self assert: v numberOfEdges equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testAllowRepetitionAndUseAssociations_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testConnectFrom [
	<madeBySmallAmp>
	| e |
	b view: view.
	b objects: #(1 2).
	b connectFrom: [ :v | v - 1 ].
	self assert: view numberOfEdges equals: 1.
	e := view edges anyOne.
	self assert: e from model equals: 1.
	self assert: e to model equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testConnectFrom_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testConnectTo [
	<madeBySmallAmp>
	| e |
	b view: view.
	b objects: #(1 2).
	b connectTo: [ :v | v - 1 ].
	self assert: view numberOfEdges equals: 1.
	e := view edges anyOne.
	self assert: e from model equals: 2.
	self assert: e to model equals: 1
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testConnectToAll [
	<madeBySmallAmp>
	| eFrom eTo |
	b view: view.
	b objects: #(1 2 3).
	b connectToAll: [ :v | Array with: v - 1 with: v - 2 ].
	self assert: view numberOfEdges equals: 3.
	eFrom := (view edges collect: [ :edge | edge from model ]) sorted
		asArray.
	eTo := (view edges collect: [ :edge | edge to model ]) sorted asArray.
	self assert: eFrom equals: #(2 3 3).
	self assert: eTo equals: #(1 1 2)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testConnectToAll_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testConnectTo_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testDefault [
	<madeBySmallAmp>
	self assert: view numberOfEdges equals: 0
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testElements [
	<madeBySmallAmp>
	| es |
	b := RSEdgeBuilder new.
	b view: view.
	self assert: b fromElements equals: view elements.
	es := RSShapeBuilder box elementsOn: (1 to: 4).
	b elements: es.
	self assert: b fromElements equals: es
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testElementsToLookup [
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
		connectTo: #yourself.
	self assert: edges size equals: 3.
	self assert: edges first from equals: es1 first.
	self assert: edges first to equals: es2 first
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testFromAll [
	<madeBySmallAmp>
	| v es |
	v := RSView new.
	es := (RSShapeBuilder circle size: 20) elementsOn: (1 to: 2).
	v addAll: es.
	self assert: v edges size equals: 0.
	RSEdgeBuilder new
		view: v;
		objects: (1 to: 2);
		connectFromAll: (Array with: 1) to: 2.
	TSTreeLayout on: es.
	self assert: v edges size equals: 1.
	self assert: v edges first from position equals: 15.0 @ 15.0.
	self assert: v edges first to position equals: 15.0 @ 55.0
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testFromAll_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testFromObjects [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	| edges |
	b view: view.
	b fromObjects: #(1 2).
	b connectFrom: #yourself to: 10.
	self assert: view numberOfEdges equals: 2.
	edges := view edges.
	self assert: edges first from model equals: 1.
	self assert: edges first to model equals: 10.
	self assert: b toObjects asArray equals: (1 to: 10) asArray.
	self assert: b fromObjects asArray equals: #(1 2)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testFromObjects02 [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	b view: view.
	b fromObjects: #(1).
	b connectFrom: #yourself to: 10.
	self assert: view numberOfEdges equals: 1.
	self assert: b toObjects asArray equals: (1 to: 10) asArray.
	self assert: b fromObjects asArray equals: #(1)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testFromObjectsError [
	"
view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	self should: [ RSEdgeBuilder new fromObjects: #(1 2) ] raise: Error
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testFromObjectsToElements [
	<madeBySmallAmp>
	| edges |
	b view: view.
	edges := b
		fromObjects: #(1 2);
		toElements: (elements copyFrom: 10 to: 10);
		connectTo: 10.
	self assert: edges size equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testInit [
	<madeBySmallAmp>
	| eb |
	eb := RSEdgeBuilder new.
	self deny: eb shouldAllowRepetition.
	eb allowRepetition.
	self assert: eb shouldAllowRepetition
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testNoMoveBehind [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		useAssociations:
			(Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6).
	self
		assert: (view canvas shapes collect: [ :c | c class name ]) asArray
		equals:
			#(#TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSLine #TSLine #TSLine)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testObjectFrom [
	<madeBySmallAmp>
	| e |
	b view: view.
	b
		objects: #(1 2);
		connectFrom: [ :v | v - 1 ].
	self assert: view numberOfEdges equals: 1.
	e := view edges anyOne.
	self assert: e from model equals: 1.
	self assert: e to model equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testObjectTo [
	<madeBySmallAmp>
	| e |
	b view: view.
	b
		objects: #(1 2);
		connectTo: [ :v | v - 1 ].
	self assert: view numberOfEdges equals: 1.
	e := view edges anyOne.
	self assert: e from model equals: 2.
	self assert: e to model equals: 1
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testObjects [
	<madeBySmallAmp>
	b view: view.
	b objects: (1 to: 5).
	self assert: b fromElements equals: (elements copyFrom: 1 to: 5)

	"	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testObjects02 [
	<madeBySmallAmp>
	b view: view.
	b objects: #even.
	self
		assert: (b fromElements collect: #model) asArray
		equals: #(2 4 6 8 10)

	"	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testObjects02_amp [
	<madeBySmallAmp>
	b view: view.
	b objects: #even.
	self assert: b toObjects size equals: 5.
	self assert: b fromElements size equals: 5
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testObjects03 [
	<madeBySmallAmp>
	b view: view.
	b objects: #odd.
	self
		assert: (b fromElements collect: #model) asArray
		equals: #(1 3 5 7 9)

	"	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testShouldAllowBidirection [
	<madeBySmallAmp>
	self assert: view numberOfEdges equals: 0.
	self assert: b isBidirectional.
	b view: view.
	b noBidirectional.
	b objects: #(1 2).
	b useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self deny: b isBidirectional.
	elements := view elementsFromModels: #(1 2).
	self assert: elements size equals: 2.
	self
		assert: (b shouldCreateEdgeFrom: elements first to: elements second).
	self assert: view numberOfEdges equals: 1.
	self assert: view edges anyOne from model equals: 1.
	self assert: view edges anyOne to model equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testShouldAllowBidirection_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testShouldNotAllowBidirection [
	<madeBySmallAmp>
	self assert: view numberOfEdges equals: 0.
	b view: view.
	b objects: #(1 2).
	b useAssociations: (Array with: 1 -> 2 with: 2 -> 1).
	self assert: view numberOfEdges equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSimple [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		useElementAssociations:
			(Array
				with: elements first -> elements second
				with: elements second -> elements third).
	self assert: view numberOfEdges equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSimple2 [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		useAssociations:
			(Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6).
	self assert: view numberOfEdges equals: 3
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSimple3 [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		fromObjects: #(1 2 3 6);
		toObjects: (1 to: 10);
		connectFrom: #yourself to: [ :v | v + 1 ].
	self assert: view numberOfEdges equals: 4.
	self
		assert: (view edges collect: [ :e | e from model -> e to model ]) asArray
		equals:
			((Array new: 4)
				at: 1 put: 1 -> 2;
				at: 2 put: 2 -> 3;
				at: 3 put: 3 -> 4;
				at: 4 put: 6 -> 7;
				yourself)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSimple4 [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		fromObjects: #(1 2 3 6);
		toObjects: #(1 2 3 6);
		connectFrom: #yourself to: [ :v | v + 1 ].
	self assert: view numberOfEdges equals: 2.
	self
		assert: (view edges collect: [ :e | e from model -> e to model ]) asArray
		equals:
			((Array new: 2)
				at: 1 put: 1 -> 2;
				at: 2 put: 2 -> 3;
				yourself)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSimple5 [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		fromObjects: #(1 2 3 6);
		connectFrom: #yourself
			toAll: [ :v | Array with: v + 1 with: v + 2 ].
	self assert: view numberOfEdges equals: 8
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSimple5_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testSimple6 [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		fromObjects: (Array with: 2);
		connectFromAll: (Array with: 2) to: 3.
	self assert: view numberOfEdges equals: 1
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSimple7 [
	<madeBySmallAmp>
	RSEdgeBuilder line
		view: view;
		useAssociation: 1 -> 2;
		useAssociation: 2 -> 3;
		useAssociation: 5 -> 6.
	self assert: view numberOfEdges equals: 3
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSource [
	<madeBySmallAmp>
	| v es eb c |
	v := RSView new.
	es := RSShapeBuilder box elementsOn: #(1 2 3).
	v addAll: es.
	eb := RSEdgeBuilder line.
	eb view: v.
	c := OrderedCollection new.
	c add: 1 -> 2.
	c add: 3 -> 1.
	eb source: c connectFrom: #key to: #value.
	self assert: v numberOfEdges equals: 2
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testSource_amp [
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
RSEdgeBuilderTestMinAddAmpTest >> testToObjects [
	"
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."

	<madeBySmallAmp>
	b view: view.
	b toObjects: #(1 2).
	b connectFrom: #yourself to: 10.
	self assert: view numberOfEdges equals: 0.
	self assert: b toObjects asArray equals: #(1 2).
	self assert: b fromObjects asArray equals: (1 to: 10) asArray
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testUseInLayout [
	<madeBySmallAmp>
	b
		view: view;
		notUseInLayout;
		connectTo: [ :v | v + 1 ].
	TSTreeLayout on: view elements.
	self
		assert: (view elements collect: #position) asArray
		equals:
			((Array new: 10)
				at: 1 put: 7.5 @ 7.5;
				at: 2 put: 15.5 @ 7.5;
				at: 3 put: 23.5 @ 7.5;
				at: 4 put: 31.5 @ 7.5;
				at: 5 put: 39.5 @ 7.5;
				at: 6 put: 47.5 @ 7.5;
				at: 7 put: 55.5 @ 7.5;
				at: 8 put: 63.5 @ 7.5;
				at: 9 put: 71.5 @ 7.5;
				at: 10 put: 79.5 @ 7.5;
				yourself)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testUseInLayoutDefault [
	<madeBySmallAmp>
	b
		view: view;
		connectTo: [ :v | v + 1 ].
	TSTreeLayout on: view elements.
	self
		assert: (view elements collect: #position) asArray
		equals:
			((Array new: 10)
				at: 1 put: 7.5 @ 7.5;
				at: 2 put: 7.5 @ 32.5;
				at: 3 put: 7.5 @ 57.5;
				at: 4 put: 7.5 @ 82.5;
				at: 5 put: 7.5 @ 107.5;
				at: 6 put: 7.5 @ 132.5;
				at: 7 put: 7.5 @ 157.5;
				at: 8 put: 7.5 @ 182.5;
				at: 9 put: 7.5 @ 207.5;
				at: 10 put: 7.5 @ 232.5;
				yourself)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testWithMoveBehind [
	<madeBySmallAmp>
	RSEdgeBuilder new
		view: view;
		moveBehind;
		useAssociations:
			(Array with: 1 -> 2 with: 2 -> 3 with: 5 -> 6).
	self
		assert: (view canvas shapes collect: [ :c | c class name ]) asArray
		equals:
			#(#TSLine #TSLine #TSLine #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testWithMoveBehind02 [
	<madeBySmallAmp>
	RSEdgeBuilder new
		view: view;
		moveBehind;
		connectFrom: [ :v | v - 1 ].
	self
		assert: (view canvas shapes collect: [ :c | c class name ]) asArray
		equals:
			#(#TSLine #TSLine #TSLine #TSLine #TSLine #TSLine #TSLine #TSLine #TSLine #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox #TSBox)
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testconnectFromToAll [
	<madeBySmallAmp>
	| es1 es2 edges v |
	es1 := RSShapeBuilder circle elementsOn: #(1 2 3).
	es2 := RSShapeBuilder box elementsOn: #(1 2 3).
	v := RSView new.
	v
		addAll: es1;
		addAll: es2.
	edges := RSEdgeBuilder line
		view: v;
		fromElements: es1;
		toElements: es2;
		connectFrom: #yourself toAll: [ :obj | Array with: obj ].
	self assert: edges size equals: 3.
	self assert: edges first from equals: es1 first.
	self assert: edges first to equals: es2 first
]

{ #category : #'as yet unclassified' }
RSEdgeBuilderTestMinAddAmpTest >> testconnectFromToAll_amp [
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
