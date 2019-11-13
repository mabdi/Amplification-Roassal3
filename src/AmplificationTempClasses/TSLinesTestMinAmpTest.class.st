Class {
	#name : #TSLinesTestMinAmpTest,
	#superclass : #TSCanvasTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSLinesTestMinAmpTest >> testDrawBezierLine_amp [
	<madeBySmallAmp>
	| tmp_KQkzjgnPo73 |
	c
		addShape:
			(TSBezier new
				strokeColor: Color red;
				width: 2).
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
	self assert: c encompassingRectangle area equals: 10000.
	self assert: c basicRectangle class equals: Rectangle.
	tmp_KQkzjgnPo73 := c createMorph.
	self assert: c class equals: TSCanvas.
	self assert: c morph wantsSteps class equals: False.
	self assert: tmp_KQkzjgnPo73 class equals: TSAthensMorph.
	self
		assert: tmp_KQkzjgnPo73 canvas view class
		equals: UndefinedObject.
	tmp_KQkzjgnPo73 drawOnMockCanvas
]
