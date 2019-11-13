Class {
	#name : #TSCanvasTestMinAddAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'c'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> setUp [
	super setUp.
	c := TSCanvas new
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testAddOneShape [
	<madeBySmallAmp>
	c addShape: TSBox new.
	self assert: c numberOfShapes equals: 1.
	self assert: c numberOfFixedShapes equals: 0
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testAddOneShape_amp [
	<madeBySmallAmp>
	c addShape: TSBox new.
	self assert: c fixedShapes class equals: TSGroup.
	self assert: c showRectangles class equals: False.
	self assert: c color class equals: Color.
	self assert: c numberOfFixedShapes class equals: SmallInteger.
	self assert: c morph class equals: UndefinedObject.
	self assert: c extent class equals: Point.
	self assert: c parent view class equals: UndefinedObject.
	self assert: c parent isShape class equals: False.
	self assert: c parent numberOfShapes class equals: SmallInteger.
	self assert: c parent clearBackground class equals: True.
	self assert: c shapes class equals: TSGroup.
	self assert: c encompassingRectangle class equals: Rectangle.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True.
	self assert: c basicRectangle class equals: Rectangle
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testDrawCanvas [
	<madeBySmallAmp>
	c
		addShape:
			(TSBox new
				extent: 100 @ 100;
				yourself).
	c
		addShape:
			(TSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testDrawCanvasWithGroup [
	<madeBySmallAmp>
	| g |
	g := TSComposite new.
	g
		add:
			(TSBox new
				extent: 100 @ 100;
				yourself).
	g
		add:
			(TSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	c addShape: g.
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testDrawCanvasWithGroup_amp [
	<madeBySmallAmp>
	| g tmp_C81dg3r4CM5 |
	g := TSComposite new.
	g
		add:
			(TSBox new
				extent: 100 @ 100;
				yourself).
	g
		add:
			(TSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	c addShape: g.
	tmp_C81dg3r4CM5 := c createMorph.
	self assert: c class equals: TSCanvas.
	self assert: c morph wantsSteps class equals: False.
	self assert: tmp_C81dg3r4CM5 class equals: TSAthensMorph.
	self
		assert: tmp_C81dg3r4CM5 canvas view class
		equals: UndefinedObject.
	tmp_C81dg3r4CM5 drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testDrawFixed [
	<madeBySmallAmp>
	| box |
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	box isFixed: true.
	c addShape: box.
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	c addShape: box.
	self deny: box isFixed.
	box setAsFixed.
	self assert: box isFixed.
	self assert: c numberOfShapes equals: 0.
	self assert: c numberOfFixedShapes equals: 2.
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testDrawFixed_amp [
	<madeBySmallAmp>
	| box tmp_T8gT1umE4112 |
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	box isFixed: true.
	c addShape: box.
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	c addShape: box.
	box setAsFixed.
	tmp_T8gT1umE4112 := c createMorph.
	self assert: c parent numberOfShapes equals: 0.
	tmp_T8gT1umE4112 drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testEmpty [
	<madeBySmallAmp>
	self assert: c numberOfShapes equals: 0
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testEvent [
	<madeBySmallAmp>
	| box |
	box := TSBox new.
	box when: TSMouseClick do: [ :evt |  ]
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testLowLevelEvent [
	<madeBySmallAmp>
	| box |
	box := TSBox new size: 30.
	box when: TSMouseDragging do: [ :evt | box ].
	c addShape: box.
	self
		assert:
			(c shapeWithAction: TSMouseDragging forPositionInPixels: 250 @ 250)
				== box
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testNestedShape [
	<madeBySmallAmp>
	| shape innerShape |
	shape := TSComposite new.
	c addShape: shape.
	innerShape := TSBox new.
	shape add: innerShape.
	self assert: shape canvas equals: c.
	self assert: innerShape parent equals: shape.
	self assert: innerShape canvas equals: c
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testNestedShapeNotAddedToACanvas [
	<madeBySmallAmp>
	| shape innerShape |
	shape := TSComposite new.
	innerShape := TSBox new.
	shape add: innerShape.
	self assert: shape canvas isNil.
	self assert: innerShape parent equals: shape.
	self assert: innerShape canvas isNil
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testOpening [
	<madeBySmallAmp>
	c open delete
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testOpening_amp [
	<madeBySmallAmp>
	| tmp_NRRzW2MuQf2 |
	tmp_NRRzW2MuQf2 := c open.
	self assert: c class equals: TSCanvas.
	self assert: tmp_NRRzW2MuQf2 class equals: SystemWindow.
	tmp_NRRzW2MuQf2 delete
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAddAmpTest >> testRemovingShapes [
	<madeBySmallAmp>
	| e |
	e := TSEllipse new.
	c addShape: e.
	self assert: c shapes size equals: 1.
	e remove.
	self assert: c shapes size equals: 0
]
