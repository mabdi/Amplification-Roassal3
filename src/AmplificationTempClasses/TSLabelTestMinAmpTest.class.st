Class {
	#name : #TSLabelTestMinAmpTest,
	#superclass : #TSCanvasTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSLabelTestMinAmpTest >> testDrawBorderLabel [
	<madeBySmallAmp>
	| tmp_boph7cQm3e3 |
	c
		addShape:
			(TSLabel new
				border: TSBorder new;
				color: (Color purple alpha: 0.5);
				fontName: 'Source Sans Pro';
				position: -50 @ 0;
				text: 'Hello world!';
				yourself).
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
	self assert: c encompassingRectangle area equals: 2139.0.
	self assert: c basicRectangle class equals: Rectangle.
	tmp_boph7cQm3e3 := c createMorph.
	self assert: c class equals: TSCanvas.
	self assert: c morph wantsSteps class equals: False.
	self assert: tmp_boph7cQm3e3 class equals: TSAthensMorph.
	self
		assert: tmp_boph7cQm3e3 canvas view class
		equals: UndefinedObject.
	tmp_boph7cQm3e3 drawOnMockCanvas
]
