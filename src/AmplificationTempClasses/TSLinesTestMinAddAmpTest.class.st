Class {
	#name : #TSLinesTestMinAddAmpTest,
	#superclass : #TSCanvasTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSLinesTestMinAddAmpTest >> testDrawBezierLine [
	<madeBySmallAmp>
	c
		addShape:
			(TSBezier new
				strokeColor: Color red;
				width: 2).
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLinesTestMinAddAmpTest >> testDrawBezierLine_amp [
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

{ #category : #'as yet unclassified' }
TSLinesTestMinAddAmpTest >> testDrawLine [
	<madeBySmallAmp>
	c
		addShape:
			(TSLine new
				strokeColor: Color red;
				width: 2).
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLinesTestMinAddAmpTest >> testDrawMarkers [
	<madeBySmallAmp>
	| line m |
	m := TSPolygon new
		points:
			{(-10 @ 0).
			(0 @ -10).
			(10 @ 0)};
		color: Color black;
		size: 10.
	line := TSLine new
		startPoint: 50 @ 50;
		endPoint: 250 @ 50.
	line markerStart: m.
	c addShape: line.
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLinesTestMinAddAmpTest >> testDrawSVGLine [
	<madeBySmallAmp>
	c
		addShape:
			(TSSVGPathLine new
				strokeColor: Color red;
				svgPath: [ :a :b | 'M 100 100 L 200 200' ];
				width: 2).
	c
		addShape:
			(TSSVGPathLine new
				strokeColor: Color red;
				svgPath: [ :a :b | 
					String
						streamContents: [ :stream | 
							stream
								nextPutAll: 'M ';
								nextPutAll: a x asString;
								space;
								nextPutAll: a y asString;
								space;
								nextPutAll: 'L ';
								nextPutAll: b x asString;
								space;
								nextPutAll: b y asString ] ];
				startPoint: 100 @ 100;
				endPoint: 200 @ 200;
				width: 2).
	c
		addShape:
			(TSSVGPathLine new
				strokeColor: Color red;
				svgPath: [ :a :b | 
					[ :canvas | 
					canvas
						absolute;
						moveTo: a;
						lineTo: b ] ];
				width: 2).
	c createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
TSLinesTestMinAddAmpTest >> testPolyline [
	<madeBySmallAmp>
	| line |
	line := TSPolyline new.
	line
		controlPoints:
			{(0 @ 0).
			(0 @ 100)}.
	self assert: (line includesPoint: 0 @ 0).
	self assert: (line includesPoint: 0 @ 100).
	self assert: (line includesPoint: 0 @ 50).
	self assert: (line includesPoint: 5 @ 50).
	self deny: (line includesPoint: 500 @ 500).
	self deny: (line includesPoint: 6 @ 50)
]
