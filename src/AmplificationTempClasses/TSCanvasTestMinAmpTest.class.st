Class {
	#name : #TSCanvasTestMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'c'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCanvasTestMinAmpTest >> setUp [
	super setUp.
	c := TSCanvas new
]

{ #category : #'as yet unclassified' }
TSCanvasTestMinAmpTest >> testAddOneShape_amp [
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
TSCanvasTestMinAmpTest >> testDrawCanvasWithGroup_amp [
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
TSCanvasTestMinAmpTest >> testDrawFixed_amp [
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
TSCanvasTestMinAmpTest >> testOpening_amp [
	<madeBySmallAmp>
	| tmp_NRRzW2MuQf2 |
	tmp_NRRzW2MuQf2 := c open.
	self assert: c class equals: TSCanvas.
	self assert: tmp_NRRzW2MuQf2 class equals: SystemWindow.
	tmp_NRRzW2MuQf2 delete
]
