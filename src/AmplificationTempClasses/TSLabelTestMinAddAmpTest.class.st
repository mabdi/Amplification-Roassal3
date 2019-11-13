Class {
	#name : #TSLabelTestMinAddAmpTest,
	#superclass : #TSCanvasTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSLabelTestMinAddAmpTest >> testDrawBorderLabel [
	<madeBySmallAmp>
	c
		addShape:
			(TSLabel new
				border: TSBorder new;
				color: (Color purple alpha: 0.5);
				fontName: 'Source Sans Pro';
				position: -50 @ 0;
				text: 'Hello world!';
				yourself).
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLabelTestMinAddAmpTest >> testDrawBorderLabel_amp [
	<madeBySmallAmp>
	| tmp_lFGzB2sdgp3 |
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
	tmp_lFGzB2sdgp3 := c createMorph.
	self assert: c class equals: TSCanvas.
	self assert: c morph wantsSteps class equals: False.
	self assert: tmp_lFGzB2sdgp3 class equals: TSAthensMorph.
	self
		assert: tmp_lFGzB2sdgp3 canvas view class
		equals: UndefinedObject.
	tmp_lFGzB2sdgp3 drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLabelTestMinAddAmpTest >> testDrawLabel [
	<madeBySmallAmp>
	c
		addShape:
			(TSLabel new
				color: (Color purple alpha: 0.5);
				position: -50 @ 0;
				text: 'Hello world!';
				yourself).
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLabelTestMinAddAmpTest >> testUnderlineStruckout [
	<madeBySmallAmp>
	| label |
	label := TSLabel new.
	self assert: label isNormal.
	label underline.
	label bold.
	self assert: label isBold.
	self assert: label isUnderlined
]
