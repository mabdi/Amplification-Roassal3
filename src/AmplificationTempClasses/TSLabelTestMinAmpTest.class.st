Class {
	#name : #TSLabelTestMinAmpTest,
	#superclass : #TSCanvasTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSLabelTestMinAmpTest >> testDrawBorderLabel_amp [
	<madeBySmallAmp>
	| tmp_7nxp63qlXm3 |
	c
		addShape:
			(TSLabel new
				border: TSBorder new;
				color: (Color purple alpha: 0.5);
				fontName: 'Source Sans Pro';
				position: -50 @ 0;
				text: 'Hello world!';
				yourself).
	self assert: c encompassingRectangle area equals: 2139.0.
	tmp_7nxp63qlXm3 := c createMorph.
	tmp_7nxp63qlXm3 drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLabelTestMinAmpTest >> testUnderlineStruckout_amp [
	<madeBySmallAmp>
	| label |
	label := TSLabel new.
	self assert: label fontName class equals: ByteString.
	self assert: label isBold class equals: False.
	self assert: label isNormal class equals: True.
	self assert: label isItalic class equals: False.
	self assert: label fontSize class equals: SmallFloat64.
	self assert: label emphasis class equals: TextEmphasis.
	label underline.
	self assert: label isUnderlined class equals: True.
	label bold
]
