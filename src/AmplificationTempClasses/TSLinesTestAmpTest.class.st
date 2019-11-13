Class {
	#name : #TSLinesTestAmpTest,
	#superclass : #TSCanvasTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testDrawBezierLine_amp [
	<madeBySmallAmp>
	| tmp_KQkzjgnPo73 |
	c
		addShape:
			(TSBezier new
				strokeColor: Color red;
				width: 2).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBezierLine_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBezierLine_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBezierLine_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBezierLine_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBezierLine_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBezierLine_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBezierLine_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBezierLine_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBezierLine_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBezierLine_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBezierLine_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBezierLine_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBezierLine_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBezierLine_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBezierLine_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawBezierLine_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBezierLine_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBezierLine_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBezierLine_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBezierLine_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBezierLine_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBezierLine_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBezierLine_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBezierLine_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBezierLine_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBezierLine_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBezierLine_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawBezierLine_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBezierLine_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBezierLine_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBezierLine_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBezierLine_amp:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBezierLine_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawBezierLine_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawBezierLine_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBezierLine_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBezierLine_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawBezierLine_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawBezierLine_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawBezierLine_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBezierLine_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBezierLine_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawBezierLine_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawBezierLine_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawBezierLine_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawBezierLine_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBezierLine_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBezierLine_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBezierLine_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBezierLine_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBezierLine_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBezierLine_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBezierLine_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBezierLine_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBezierLine_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBezierLine_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBezierLine_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBezierLine_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBezierLine_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBezierLine_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBezierLine_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBezierLine_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawBezierLine_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBezierLine_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBezierLine_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBezierLine_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawBezierLine_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBezierLine_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBezierLine_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBezierLine_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:1.152'.
	tmp_KQkzjgnPo73 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBezierLine_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBezierLine_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBezierLine_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBezierLine_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBezierLine_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBezierLine_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBezierLine_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBezierLine_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBezierLine_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBezierLine_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBezierLine_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBezierLine_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBezierLine_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBezierLine_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBezierLine_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBezierLine_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawBezierLine_amp:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawBezierLine_amp:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawBezierLine_amp:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawBezierLine_amp:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawBezierLine_amp:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawBezierLine_amp:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawBezierLine_amp:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBezierLine_amp:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBezierLine_amp:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBezierLine_amp:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBezierLine_amp:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBezierLine_amp:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBezierLine_amp:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBezierLine_amp:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBezierLine_amp:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBezierLine_amp:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBezierLine_amp:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBezierLine_amp:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBezierLine_amp:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBezierLine_amp:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBezierLine_amp:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBezierLine_amp:2.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBezierLine_amp:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine_amp:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawBezierLine_amp:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine_amp:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine_amp:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawBezierLine_amp:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBezierLine_amp:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBezierLine_amp:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawBezierLine_amp:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawBezierLine_amp:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.81'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawBezierLine_amp:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBezierLine_amp:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBezierLine_amp:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawBezierLine_amp:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawBezierLine_amp:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawBezierLine_amp:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine_amp:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine_amp:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawBezierLine_amp:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:2.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBezierLine_amp:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBezierLine_amp:2.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBezierLine_amp:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine_amp:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBezierLine_amp:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine_amp:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine_amp:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBezierLine_amp:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBezierLine_amp:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBezierLine_amp:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBezierLine_amp:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBezierLine_amp:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBezierLine_amp:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBezierLine_amp:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBezierLine_amp:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBezierLine_amp:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBezierLine_amp:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBezierLine_amp:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine_amp:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine_amp:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBezierLine_amp:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBezierLine_amp:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBezierLine_amp:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBezierLine_amp:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBezierLine_amp:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBezierLine_amp:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBezierLine_amp:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:2.151'.
	self
		assert: tmp_KQkzjgnPo73 class
		equals: TSAthensMorph
		description: 'testDrawBezierLine_amp:2.1'.
	self
		assert: tmp_KQkzjgnPo73 isDrawing class
		equals: False
		description: 'testDrawBezierLine_amp:2.2'.
	self
		assert: tmp_KQkzjgnPo73 isDrawing
		equals: false
		description: 'testDrawBezierLine_amp:2.3'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:2.4'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:2.5'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:2.6'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.7'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:2.8'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:2.9'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas view
		equals: nil
		description: 'testDrawBezierLine_amp:2.10'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas isShape class
		equals: False
		description: 'testDrawBezierLine_amp:2.11'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas isShape
		equals: false
		description: 'testDrawBezierLine_amp:2.12'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.13'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:2.14'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:2.15'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:2.16'.
	self
		assert: tmp_KQkzjgnPo73 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBezierLine_amp:2.17'.
	self
		assert: tmp_KQkzjgnPo73 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:2.18'.
	self
		assert: tmp_KQkzjgnPo73 renderer builder
		equals: nil
		description: 'testDrawBezierLine_amp:2.19'.
	self
		assert: tmp_KQkzjgnPo73 surface class
		equals: AthensCairoSurface
		description: 'testDrawBezierLine_amp:2.20'.
	self
		assert: tmp_KQkzjgnPo73 surface status class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.21'.
	self
		assert: tmp_KQkzjgnPo73 surface status
		equals: 0
		description: 'testDrawBezierLine_amp:2.22'.
	self
		assert: tmp_KQkzjgnPo73 surface width class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.23'.
	self
		assert: tmp_KQkzjgnPo73 surface width
		equals: 50
		description: 'testDrawBezierLine_amp:2.24'.
	self
		assert: tmp_KQkzjgnPo73 surface height class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.25'.
	self
		assert: tmp_KQkzjgnPo73 surface height
		equals: 40
		description: 'testDrawBezierLine_amp:2.26'.
	self
		assert: tmp_KQkzjgnPo73 surface isSuccess class
		equals: True
		description: 'testDrawBezierLine_amp:2.27'.
	self
		assert: tmp_KQkzjgnPo73 surface isSuccess
		equals: true
		description: 'testDrawBezierLine_amp:2.28'.
	self
		assert: tmp_KQkzjgnPo73 surface stride class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.29'.
	self
		assert: tmp_KQkzjgnPo73 surface stride
		equals: 200
		description: 'testDrawBezierLine_amp:2.30'.
	self
		assert: tmp_KQkzjgnPo73 canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:2.31'.
	self
		assert: tmp_KQkzjgnPo73 canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:2.32'.
	self
		assert: tmp_KQkzjgnPo73 canvas showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:2.33'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.34'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:2.35'.
	self
		assert: tmp_KQkzjgnPo73 canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:2.36'.
	self
		assert: tmp_KQkzjgnPo73 canvas view
		equals: nil
		description: 'testDrawBezierLine_amp:2.37'.
	self
		assert: tmp_KQkzjgnPo73 canvas isShape class
		equals: False
		description: 'testDrawBezierLine_amp:2.38'.
	self
		assert: tmp_KQkzjgnPo73 canvas isShape
		equals: false
		description: 'testDrawBezierLine_amp:2.39'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:2.40'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:2.41'.
	self
		assert: tmp_KQkzjgnPo73 canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:2.42'.
	self
		assert: tmp_KQkzjgnPo73 canvas clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:2.43'.
	self
		assert: tmp_KQkzjgnPo73 wantsSteps class
		equals: False
		description: 'testDrawBezierLine_amp:2.44'.
	self
		assert: tmp_KQkzjgnPo73 wantsSteps
		equals: false
		description: 'testDrawBezierLine_amp:2.45'.
	self
		assert: tmp_KQkzjgnPo73 isDragging class
		equals: False
		description: 'testDrawBezierLine_amp:2.46'.
	self
		assert: tmp_KQkzjgnPo73 isDragging
		equals: false
		description: 'testDrawBezierLine_amp:2.47'.
	tmp_KQkzjgnPo73 drawOnMockCanvas.
	self
		assert: tmp_KQkzjgnPo73 class
		equals: TSAthensMorph
		description: 'testDrawBezierLine_amp:3.1'.
	self
		assert: tmp_KQkzjgnPo73 isDrawing class
		equals: False
		description: 'testDrawBezierLine_amp:3.2'.
	self
		assert: tmp_KQkzjgnPo73 isDrawing
		equals: false
		description: 'testDrawBezierLine_amp:3.3'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:3.4'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:3.5'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:3.6'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.7'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:3.8'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:3.9'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas view
		equals: nil
		description: 'testDrawBezierLine_amp:3.10'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas isShape class
		equals: False
		description: 'testDrawBezierLine_amp:3.11'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas isShape
		equals: false
		description: 'testDrawBezierLine_amp:3.12'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.13'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:3.14'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:3.15'.
	self
		assert: tmp_KQkzjgnPo73 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:3.16'.
	self
		assert: tmp_KQkzjgnPo73 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBezierLine_amp:3.17'.
	self
		assert: tmp_KQkzjgnPo73 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:3.18'.
	self
		assert: tmp_KQkzjgnPo73 renderer builder
		equals: nil
		description: 'testDrawBezierLine_amp:3.19'.
	self
		assert: tmp_KQkzjgnPo73 surface class
		equals: AthensCairoSurface
		description: 'testDrawBezierLine_amp:3.20'.
	self
		assert: tmp_KQkzjgnPo73 surface status class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.21'.
	self
		assert: tmp_KQkzjgnPo73 surface status
		equals: 0
		description: 'testDrawBezierLine_amp:3.22'.
	self
		assert: tmp_KQkzjgnPo73 surface width class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.23'.
	self
		assert: tmp_KQkzjgnPo73 surface width
		equals: 50
		description: 'testDrawBezierLine_amp:3.24'.
	self
		assert: tmp_KQkzjgnPo73 surface height class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.25'.
	self
		assert: tmp_KQkzjgnPo73 surface height
		equals: 40
		description: 'testDrawBezierLine_amp:3.26'.
	self
		assert: tmp_KQkzjgnPo73 surface isSuccess class
		equals: True
		description: 'testDrawBezierLine_amp:3.27'.
	self
		assert: tmp_KQkzjgnPo73 surface isSuccess
		equals: true
		description: 'testDrawBezierLine_amp:3.28'.
	self
		assert: tmp_KQkzjgnPo73 surface stride class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.29'.
	self
		assert: tmp_KQkzjgnPo73 surface stride
		equals: 200
		description: 'testDrawBezierLine_amp:3.30'.
	self
		assert: tmp_KQkzjgnPo73 canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine_amp:3.31'.
	self
		assert: tmp_KQkzjgnPo73 canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine_amp:3.32'.
	self
		assert: tmp_KQkzjgnPo73 canvas showRectangles
		equals: false
		description: 'testDrawBezierLine_amp:3.33'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.34'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine_amp:3.35'.
	self
		assert: tmp_KQkzjgnPo73 canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine_amp:3.36'.
	self
		assert: tmp_KQkzjgnPo73 canvas view
		equals: nil
		description: 'testDrawBezierLine_amp:3.37'.
	self
		assert: tmp_KQkzjgnPo73 canvas isShape class
		equals: False
		description: 'testDrawBezierLine_amp:3.38'.
	self
		assert: tmp_KQkzjgnPo73 canvas isShape
		equals: false
		description: 'testDrawBezierLine_amp:3.39'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine_amp:3.40'.
	self
		assert: tmp_KQkzjgnPo73 canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine_amp:3.41'.
	self
		assert: tmp_KQkzjgnPo73 canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine_amp:3.42'.
	self
		assert: tmp_KQkzjgnPo73 canvas clearBackground
		equals: true
		description: 'testDrawBezierLine_amp:3.43'.
	self
		assert: tmp_KQkzjgnPo73 wantsSteps class
		equals: False
		description: 'testDrawBezierLine_amp:3.44'.
	self
		assert: tmp_KQkzjgnPo73 wantsSteps
		equals: false
		description: 'testDrawBezierLine_amp:3.45'.
	self
		assert: tmp_KQkzjgnPo73 isDragging class
		equals: False
		description: 'testDrawBezierLine_amp:3.46'.
	self
		assert: tmp_KQkzjgnPo73 isDragging
		equals: false
		description: 'testDrawBezierLine_amp:3.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testDrawLine_amp [
	<madeBySmallAmp>
	| tmp_CyX3wLOIBJ3 |
	c
		addShape:
			(TSLine new
				strokeColor: Color red;
				width: 2).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawLine_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLine_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLine_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLine_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLine_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLine_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLine_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawLine_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLine_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLine_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawLine_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLine_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLine_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLine_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLine_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLine_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLine_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLine_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLine_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.33'.
	self assert: c morph equals: nil description: 'testDrawLine_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLine_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLine_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLine_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawLine_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLine_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLine_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLine_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLine_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawLine_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLine_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLine_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLine_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLine_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLine_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawLine_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLine_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLine_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLine_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLine_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLine_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLine_amp:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawLine_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLine_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawLine_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawLine_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLine_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLine_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawLine_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawLine_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawLine_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLine_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLine_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawLine_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawLine_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawLine_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLine_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLine_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawLine_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.90'.
	self assert: c view equals: nil description: 'testDrawLine_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLine_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawLine_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLine_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLine_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLine_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLine_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLine_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLine_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLine_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLine_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLine_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLine_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLine_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLine_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLine_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLine_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLine_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLine_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLine_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLine_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLine_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawLine_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLine_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLine_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLine_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLine_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLine_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLine_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLine_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLine_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawLine_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLine_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLine_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLine_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLine_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLine_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLine_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLine_amp:1.152'.
	tmp_CyX3wLOIBJ3 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawLine_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLine_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLine_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLine_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLine_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLine_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLine_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawLine_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLine_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLine_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawLine_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLine_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLine_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLine_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLine_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLine_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLine_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLine_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLine_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawLine_amp:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawLine_amp:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawLine_amp:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawLine_amp:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawLine_amp:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawLine_amp:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawLine_amp:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLine_amp:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLine_amp:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLine_amp:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawLine_amp:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLine_amp:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLine_amp:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLine_amp:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLine_amp:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawLine_amp:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLine_amp:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLine_amp:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLine_amp:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLine_amp:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLine_amp:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLine_amp:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLine_amp:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLine_amp:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLine_amp:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLine_amp:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLine_amp:2.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawLine_amp:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLine_amp:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawLine_amp:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine_amp:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine_amp:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawLine_amp:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLine_amp:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLine_amp:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawLine_amp:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawLine_amp:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.81'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawLine_amp:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLine_amp:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLine_amp:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawLine_amp:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawLine_amp:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawLine_amp:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLine_amp:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLine_amp:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawLine_amp:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:2.93'.
	self assert: c view equals: nil description: 'testDrawLine_amp:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLine_amp:2.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawLine_amp:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLine_amp:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLine_amp:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine_amp:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine_amp:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLine_amp:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLine_amp:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLine_amp:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLine_amp:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLine_amp:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLine_amp:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLine_amp:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLine_amp:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLine_amp:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLine_amp:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLine_amp:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLine_amp:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLine_amp:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLine_amp:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLine_amp:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLine_amp:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLine_amp:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLine_amp:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLine_amp:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLine_amp:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLine_amp:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLine_amp:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLine_amp:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLine_amp:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLine_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLine_amp:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLine_amp:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLine_amp:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLine_amp:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLine_amp:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLine_amp:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLine_amp:2.151'.
	self
		assert: tmp_CyX3wLOIBJ3 class
		equals: TSAthensMorph
		description: 'testDrawLine_amp:2.1'.
	self
		assert: tmp_CyX3wLOIBJ3 isDrawing class
		equals: False
		description: 'testDrawLine_amp:2.2'.
	self
		assert: tmp_CyX3wLOIBJ3 isDrawing
		equals: false
		description: 'testDrawLine_amp:2.3'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLine_amp:2.4'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLine_amp:2.5'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLine_amp:2.6'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.7'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:2.8'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:2.9'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas view
		equals: nil
		description: 'testDrawLine_amp:2.10'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLine_amp:2.11'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas isShape
		equals: false
		description: 'testDrawLine_amp:2.12'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.13'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:2.14'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLine_amp:2.15'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLine_amp:2.16'.
	self
		assert: tmp_CyX3wLOIBJ3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLine_amp:2.17'.
	self
		assert: tmp_CyX3wLOIBJ3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLine_amp:2.18'.
	self
		assert: tmp_CyX3wLOIBJ3 renderer builder
		equals: nil
		description: 'testDrawLine_amp:2.19'.
	self
		assert: tmp_CyX3wLOIBJ3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLine_amp:2.20'.
	self
		assert: tmp_CyX3wLOIBJ3 surface status class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.21'.
	self
		assert: tmp_CyX3wLOIBJ3 surface status
		equals: 0
		description: 'testDrawLine_amp:2.22'.
	self
		assert: tmp_CyX3wLOIBJ3 surface width class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.23'.
	self
		assert: tmp_CyX3wLOIBJ3 surface width
		equals: 50
		description: 'testDrawLine_amp:2.24'.
	self
		assert: tmp_CyX3wLOIBJ3 surface height class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.25'.
	self
		assert: tmp_CyX3wLOIBJ3 surface height
		equals: 40
		description: 'testDrawLine_amp:2.26'.
	self
		assert: tmp_CyX3wLOIBJ3 surface isSuccess class
		equals: True
		description: 'testDrawLine_amp:2.27'.
	self
		assert: tmp_CyX3wLOIBJ3 surface isSuccess
		equals: true
		description: 'testDrawLine_amp:2.28'.
	self
		assert: tmp_CyX3wLOIBJ3 surface stride class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.29'.
	self
		assert: tmp_CyX3wLOIBJ3 surface stride
		equals: 200
		description: 'testDrawLine_amp:2.30'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas class
		equals: TSCanvas
		description: 'testDrawLine_amp:2.31'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas showRectangles class
		equals: False
		description: 'testDrawLine_amp:2.32'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas showRectangles
		equals: false
		description: 'testDrawLine_amp:2.33'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.34'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:2.35'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:2.36'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas view
		equals: nil
		description: 'testDrawLine_amp:2.37'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas isShape class
		equals: False
		description: 'testDrawLine_amp:2.38'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas isShape
		equals: false
		description: 'testDrawLine_amp:2.39'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:2.40'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:2.41'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas clearBackground class
		equals: True
		description: 'testDrawLine_amp:2.42'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas clearBackground
		equals: true
		description: 'testDrawLine_amp:2.43'.
	self
		assert: tmp_CyX3wLOIBJ3 wantsSteps class
		equals: False
		description: 'testDrawLine_amp:2.44'.
	self
		assert: tmp_CyX3wLOIBJ3 wantsSteps
		equals: false
		description: 'testDrawLine_amp:2.45'.
	self
		assert: tmp_CyX3wLOIBJ3 isDragging class
		equals: False
		description: 'testDrawLine_amp:2.46'.
	self
		assert: tmp_CyX3wLOIBJ3 isDragging
		equals: false
		description: 'testDrawLine_amp:2.47'.
	tmp_CyX3wLOIBJ3 drawOnMockCanvas.
	self
		assert: tmp_CyX3wLOIBJ3 class
		equals: TSAthensMorph
		description: 'testDrawLine_amp:3.1'.
	self
		assert: tmp_CyX3wLOIBJ3 isDrawing class
		equals: False
		description: 'testDrawLine_amp:3.2'.
	self
		assert: tmp_CyX3wLOIBJ3 isDrawing
		equals: false
		description: 'testDrawLine_amp:3.3'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLine_amp:3.4'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLine_amp:3.5'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLine_amp:3.6'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.7'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:3.8'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:3.9'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas view
		equals: nil
		description: 'testDrawLine_amp:3.10'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLine_amp:3.11'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas isShape
		equals: false
		description: 'testDrawLine_amp:3.12'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.13'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:3.14'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLine_amp:3.15'.
	self
		assert: tmp_CyX3wLOIBJ3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLine_amp:3.16'.
	self
		assert: tmp_CyX3wLOIBJ3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLine_amp:3.17'.
	self
		assert: tmp_CyX3wLOIBJ3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLine_amp:3.18'.
	self
		assert: tmp_CyX3wLOIBJ3 renderer builder
		equals: nil
		description: 'testDrawLine_amp:3.19'.
	self
		assert: tmp_CyX3wLOIBJ3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLine_amp:3.20'.
	self
		assert: tmp_CyX3wLOIBJ3 surface status class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.21'.
	self
		assert: tmp_CyX3wLOIBJ3 surface status
		equals: 0
		description: 'testDrawLine_amp:3.22'.
	self
		assert: tmp_CyX3wLOIBJ3 surface width class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.23'.
	self
		assert: tmp_CyX3wLOIBJ3 surface width
		equals: 50
		description: 'testDrawLine_amp:3.24'.
	self
		assert: tmp_CyX3wLOIBJ3 surface height class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.25'.
	self
		assert: tmp_CyX3wLOIBJ3 surface height
		equals: 40
		description: 'testDrawLine_amp:3.26'.
	self
		assert: tmp_CyX3wLOIBJ3 surface isSuccess class
		equals: True
		description: 'testDrawLine_amp:3.27'.
	self
		assert: tmp_CyX3wLOIBJ3 surface isSuccess
		equals: true
		description: 'testDrawLine_amp:3.28'.
	self
		assert: tmp_CyX3wLOIBJ3 surface stride class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.29'.
	self
		assert: tmp_CyX3wLOIBJ3 surface stride
		equals: 200
		description: 'testDrawLine_amp:3.30'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas class
		equals: TSCanvas
		description: 'testDrawLine_amp:3.31'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas showRectangles class
		equals: False
		description: 'testDrawLine_amp:3.32'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas showRectangles
		equals: false
		description: 'testDrawLine_amp:3.33'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.34'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine_amp:3.35'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLine_amp:3.36'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas view
		equals: nil
		description: 'testDrawLine_amp:3.37'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas isShape class
		equals: False
		description: 'testDrawLine_amp:3.38'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas isShape
		equals: false
		description: 'testDrawLine_amp:3.39'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine_amp:3.40'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLine_amp:3.41'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas clearBackground class
		equals: True
		description: 'testDrawLine_amp:3.42'.
	self
		assert: tmp_CyX3wLOIBJ3 canvas clearBackground
		equals: true
		description: 'testDrawLine_amp:3.43'.
	self
		assert: tmp_CyX3wLOIBJ3 wantsSteps class
		equals: False
		description: 'testDrawLine_amp:3.44'.
	self
		assert: tmp_CyX3wLOIBJ3 wantsSteps
		equals: false
		description: 'testDrawLine_amp:3.45'.
	self
		assert: tmp_CyX3wLOIBJ3 isDragging class
		equals: False
		description: 'testDrawLine_amp:3.46'.
	self
		assert: tmp_CyX3wLOIBJ3 isDragging
		equals: false
		description: 'testDrawLine_amp:3.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testDrawMarkers_amp [
	<madeBySmallAmp>
	| line m tmp_j0kIKQplTh9 tmp_Fy5EkfC6JI12 |
	m := TSPolygon new
		points:
			{(-10 @ 0).
			(0 @ -10).
			(10 @ 0)};
		color: Color black;
		size: 10.
	self
		assert: m class
		equals: TSPolygon
		description: 'testDrawMarkers_amp:1.1'.
	self
		assert: m cornerRadii class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:1.2'.
	self
		assert: m cornerRadii
		equals: 0
		description: 'testDrawMarkers_amp:1.3'.
	self
		assert: m points class
		equals: Array
		description: 'testDrawMarkers_amp:1.4'.
	self
		assert: m points size
		equals: 3
		description: 'testDrawMarkers_amp:1.5'.
	line := TSLine new
		startPoint: 50 @ 50;
		endPoint: 250 @ 50.
	self
		assert: line class
		equals: TSLine
		description: 'testDrawMarkers_amp:2.1'.
	self
		assert: line markers class
		equals: Array
		description: 'testDrawMarkers_amp:2.2'.
	self
		assert: line markers size
		equals: 3
		description: 'testDrawMarkers_amp:2.3'.
	self
		assert: line privateMarkers class
		equals: Array
		description: 'testDrawMarkers_amp:2.4'.
	self
		assert: line privateMarkers size
		equals: 3
		description: 'testDrawMarkers_amp:2.5'.
	tmp_j0kIKQplTh9 := line markerStart: m.
	self
		assert: line class
		equals: TSLine
		description: 'testDrawMarkers_amp:3.1'.
	self
		assert: line markers class
		equals: Array
		description: 'testDrawMarkers_amp:3.2'.
	self
		assert: line markers size
		equals: 3
		description: 'testDrawMarkers_amp:3.3'.
	self
		assert: line privateMarkers class
		equals: Array
		description: 'testDrawMarkers_amp:3.4'.
	self
		assert: line privateMarkers size
		equals: 3
		description: 'testDrawMarkers_amp:3.5'.
	self
		assert: tmp_j0kIKQplTh9 class
		equals: TSMarker
		description: 'testDrawMarkers_amp:3.1'.
	self
		assert: tmp_j0kIKQplTh9 shape class
		equals: TSPolygon
		description: 'testDrawMarkers_amp:3.2'.
	self
		assert: tmp_j0kIKQplTh9 shape cornerRadii class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:3.3'.
	self
		assert: tmp_j0kIKQplTh9 shape cornerRadii
		equals: 0
		description: 'testDrawMarkers_amp:3.4'.
	self
		assert: tmp_j0kIKQplTh9 offsetRatio class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:3.5'.
	self
		assert: tmp_j0kIKQplTh9 offsetRatio
		equals: 0
		description: 'testDrawMarkers_amp:3.6'.
	self
		assert: tmp_j0kIKQplTh9 offset class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:3.7'.
	self
		assert: tmp_j0kIKQplTh9 offset
		equals: 0
		description: 'testDrawMarkers_amp:3.8'.
	c addShape: line.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:4.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawMarkers_amp:4.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawMarkers_amp:4.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:4.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawMarkers_amp:4.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawMarkers_amp:4.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawMarkers_amp:4.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawMarkers_amp:4.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawMarkers_amp:4.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawMarkers_amp:4.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawMarkers_amp:4.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawMarkers_amp:4.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawMarkers_amp:4.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawMarkers_amp:4.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawMarkers_amp:4.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawMarkers_amp:4.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawMarkers_amp:4.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:4.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawMarkers_amp:4.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:4.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawMarkers_amp:4.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawMarkers_amp:4.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawMarkers_amp:4.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawMarkers_amp:4.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawMarkers_amp:4.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawMarkers_amp:4.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawMarkers_amp:4.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawMarkers_amp:4.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawMarkers_amp:4.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawMarkers_amp:4.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawMarkers_amp:4.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawMarkers_amp:4.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:4.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:4.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawMarkers_amp:4.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:4.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawMarkers_amp:4.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawMarkers_amp:4.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawMarkers_amp:4.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawMarkers_amp:4.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:4.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:4.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawMarkers_amp:4.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawMarkers_amp:4.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawMarkers_amp:4.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawMarkers_amp:4.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.66'.
	self
		assert: c encompassingRectangle top
		equals: 50
		description: 'testDrawMarkers_amp:4.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers_amp:4.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers_amp:4.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.70'.
	self
		assert: c encompassingRectangle area
		equals: 200
		description: 'testDrawMarkers_amp:4.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawMarkers_amp:4.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawMarkers_amp:4.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.74'.
	self
		assert: c encompassingRectangle left
		equals: 50
		description: 'testDrawMarkers_amp:4.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.76'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawMarkers_amp:4.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.78'.
	self
		assert: c encompassingRectangle right
		equals: 250
		description: 'testDrawMarkers_amp:4.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawMarkers_amp:4.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawMarkers_amp:4.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawMarkers_amp:4.82'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawMarkers_amp:4.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 51
		description: 'testDrawMarkers_amp:4.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers_amp:4.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawMarkers_amp:4.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.88'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawMarkers_amp:4.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawMarkers_amp:4.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawMarkers_amp:4.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawMarkers_amp:4.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawMarkers_amp:4.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawMarkers_amp:4.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers_amp:4.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers_amp:4.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawMarkers_amp:4.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawMarkers_amp:4.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawMarkers_amp:4.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawMarkers_amp:4.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawMarkers_amp:4.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawMarkers_amp:4.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawMarkers_amp:4.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawMarkers_amp:4.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawMarkers_amp:4.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawMarkers_amp:4.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawMarkers_amp:4.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers_amp:4.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawMarkers_amp:4.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawMarkers_amp:4.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:4.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:4.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawMarkers_amp:4.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:4.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawMarkers_amp:4.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawMarkers_amp:4.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawMarkers_amp:4.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawMarkers_amp:4.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:4.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:4.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawMarkers_amp:4.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:4.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:4.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:4.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawMarkers_amp:4.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:4.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawMarkers_amp:4.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:4.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawMarkers_amp:4.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawMarkers_amp:4.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawMarkers_amp:4.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:4.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:4.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:4.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawMarkers_amp:4.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:4.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawMarkers_amp:4.152'.
	tmp_Fy5EkfC6JI12 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:5.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawMarkers_amp:5.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawMarkers_amp:5.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:5.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawMarkers_amp:5.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawMarkers_amp:5.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawMarkers_amp:5.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawMarkers_amp:5.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawMarkers_amp:5.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawMarkers_amp:5.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawMarkers_amp:5.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawMarkers_amp:5.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawMarkers_amp:5.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawMarkers_amp:5.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawMarkers_amp:5.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawMarkers_amp:5.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawMarkers_amp:5.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawMarkers_amp:5.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawMarkers_amp:5.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:5.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawMarkers_amp:5.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawMarkers_amp:5.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawMarkers_amp:5.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawMarkers_amp:5.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawMarkers_amp:5.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawMarkers_amp:5.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawMarkers_amp:5.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawMarkers_amp:5.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawMarkers_amp:5.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawMarkers_amp:5.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawMarkers_amp:5.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawMarkers_amp:5.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawMarkers_amp:5.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawMarkers_amp:5.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawMarkers_amp:5.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawMarkers_amp:5.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawMarkers_amp:5.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawMarkers_amp:5.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:5.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:5.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawMarkers_amp:5.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:5.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:5.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawMarkers_amp:5.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawMarkers_amp:5.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawMarkers_amp:5.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:5.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:5.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawMarkers_amp:5.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawMarkers_amp:5.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawMarkers_amp:5.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawMarkers_amp:5.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.69'.
	self
		assert: c encompassingRectangle top
		equals: 50
		description: 'testDrawMarkers_amp:5.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers_amp:5.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers_amp:5.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.73'.
	self
		assert: c encompassingRectangle area
		equals: 200
		description: 'testDrawMarkers_amp:5.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawMarkers_amp:5.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawMarkers_amp:5.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.77'.
	self
		assert: c encompassingRectangle left
		equals: 50
		description: 'testDrawMarkers_amp:5.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.79'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawMarkers_amp:5.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.81'.
	self
		assert: c encompassingRectangle right
		equals: 250
		description: 'testDrawMarkers_amp:5.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawMarkers_amp:5.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawMarkers_amp:5.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawMarkers_amp:5.85'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawMarkers_amp:5.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 51
		description: 'testDrawMarkers_amp:5.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers_amp:5.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawMarkers_amp:5.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.91'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawMarkers_amp:5.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:5.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawMarkers_amp:5.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawMarkers_amp:5.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawMarkers_amp:5.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawMarkers_amp:5.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawMarkers_amp:5.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers_amp:5.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers_amp:5.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawMarkers_amp:5.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawMarkers_amp:5.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawMarkers_amp:5.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawMarkers_amp:5.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawMarkers_amp:5.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawMarkers_amp:5.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawMarkers_amp:5.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawMarkers_amp:5.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawMarkers_amp:5.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawMarkers_amp:5.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawMarkers_amp:5.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers_amp:5.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawMarkers_amp:5.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawMarkers_amp:5.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:5.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:5.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawMarkers_amp:5.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:5.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:5.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawMarkers_amp:5.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawMarkers_amp:5.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawMarkers_amp:5.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:5.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:5.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawMarkers_amp:5.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:5.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:5.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:5.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawMarkers_amp:5.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:5.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:5.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawMarkers_amp:5.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawMarkers_amp:5.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawMarkers_amp:5.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:5.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:5.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawMarkers_amp:5.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:5.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawMarkers_amp:5.151'.
	self
		assert: tmp_Fy5EkfC6JI12 class
		equals: TSAthensMorph
		description: 'testDrawMarkers_amp:5.1'.
	self
		assert: tmp_Fy5EkfC6JI12 isDrawing class
		equals: False
		description: 'testDrawMarkers_amp:5.2'.
	self
		assert: tmp_Fy5EkfC6JI12 isDrawing
		equals: false
		description: 'testDrawMarkers_amp:5.3'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:5.4'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:5.5'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas showRectangles
		equals: false
		description: 'testDrawMarkers_amp:5.6'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.7'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:5.8'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:5.9'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas view
		equals: nil
		description: 'testDrawMarkers_amp:5.10'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas isShape class
		equals: False
		description: 'testDrawMarkers_amp:5.11'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas isShape
		equals: false
		description: 'testDrawMarkers_amp:5.12'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.13'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:5.14'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:5.15'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas clearBackground
		equals: true
		description: 'testDrawMarkers_amp:5.16'.
	self
		assert: tmp_Fy5EkfC6JI12 renderer class
		equals: TSAthensRenderer
		description: 'testDrawMarkers_amp:5.17'.
	self
		assert: tmp_Fy5EkfC6JI12 renderer builder class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:5.18'.
	self
		assert: tmp_Fy5EkfC6JI12 renderer builder
		equals: nil
		description: 'testDrawMarkers_amp:5.19'.
	self
		assert: tmp_Fy5EkfC6JI12 surface class
		equals: AthensCairoSurface
		description: 'testDrawMarkers_amp:5.20'.
	self
		assert: tmp_Fy5EkfC6JI12 surface status class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.21'.
	self
		assert: tmp_Fy5EkfC6JI12 surface status
		equals: 0
		description: 'testDrawMarkers_amp:5.22'.
	self
		assert: tmp_Fy5EkfC6JI12 surface width class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.23'.
	self
		assert: tmp_Fy5EkfC6JI12 surface width
		equals: 50
		description: 'testDrawMarkers_amp:5.24'.
	self
		assert: tmp_Fy5EkfC6JI12 surface height class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.25'.
	self
		assert: tmp_Fy5EkfC6JI12 surface height
		equals: 40
		description: 'testDrawMarkers_amp:5.26'.
	self
		assert: tmp_Fy5EkfC6JI12 surface isSuccess class
		equals: True
		description: 'testDrawMarkers_amp:5.27'.
	self
		assert: tmp_Fy5EkfC6JI12 surface isSuccess
		equals: true
		description: 'testDrawMarkers_amp:5.28'.
	self
		assert: tmp_Fy5EkfC6JI12 surface stride class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.29'.
	self
		assert: tmp_Fy5EkfC6JI12 surface stride
		equals: 200
		description: 'testDrawMarkers_amp:5.30'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:5.31'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:5.32'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas showRectangles
		equals: false
		description: 'testDrawMarkers_amp:5.33'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.34'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:5.35'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:5.36'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas view
		equals: nil
		description: 'testDrawMarkers_amp:5.37'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas isShape class
		equals: False
		description: 'testDrawMarkers_amp:5.38'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas isShape
		equals: false
		description: 'testDrawMarkers_amp:5.39'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:5.40'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:5.41'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:5.42'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas clearBackground
		equals: true
		description: 'testDrawMarkers_amp:5.43'.
	self
		assert: tmp_Fy5EkfC6JI12 wantsSteps class
		equals: False
		description: 'testDrawMarkers_amp:5.44'.
	self
		assert: tmp_Fy5EkfC6JI12 wantsSteps
		equals: false
		description: 'testDrawMarkers_amp:5.45'.
	self
		assert: tmp_Fy5EkfC6JI12 isDragging class
		equals: False
		description: 'testDrawMarkers_amp:5.46'.
	self
		assert: tmp_Fy5EkfC6JI12 isDragging
		equals: false
		description: 'testDrawMarkers_amp:5.47'.
	tmp_Fy5EkfC6JI12 drawOnMockCanvas.
	self
		assert: tmp_Fy5EkfC6JI12 class
		equals: TSAthensMorph
		description: 'testDrawMarkers_amp:6.1'.
	self
		assert: tmp_Fy5EkfC6JI12 isDrawing class
		equals: False
		description: 'testDrawMarkers_amp:6.2'.
	self
		assert: tmp_Fy5EkfC6JI12 isDrawing
		equals: false
		description: 'testDrawMarkers_amp:6.3'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:6.4'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:6.5'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas showRectangles
		equals: false
		description: 'testDrawMarkers_amp:6.6'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.7'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:6.8'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:6.9'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas view
		equals: nil
		description: 'testDrawMarkers_amp:6.10'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas isShape class
		equals: False
		description: 'testDrawMarkers_amp:6.11'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas isShape
		equals: false
		description: 'testDrawMarkers_amp:6.12'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.13'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:6.14'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:6.15'.
	self
		assert: tmp_Fy5EkfC6JI12 trachelCanvas clearBackground
		equals: true
		description: 'testDrawMarkers_amp:6.16'.
	self
		assert: tmp_Fy5EkfC6JI12 renderer class
		equals: TSAthensRenderer
		description: 'testDrawMarkers_amp:6.17'.
	self
		assert: tmp_Fy5EkfC6JI12 renderer builder class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:6.18'.
	self
		assert: tmp_Fy5EkfC6JI12 renderer builder
		equals: nil
		description: 'testDrawMarkers_amp:6.19'.
	self
		assert: tmp_Fy5EkfC6JI12 surface class
		equals: AthensCairoSurface
		description: 'testDrawMarkers_amp:6.20'.
	self
		assert: tmp_Fy5EkfC6JI12 surface status class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.21'.
	self
		assert: tmp_Fy5EkfC6JI12 surface status
		equals: 0
		description: 'testDrawMarkers_amp:6.22'.
	self
		assert: tmp_Fy5EkfC6JI12 surface width class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.23'.
	self
		assert: tmp_Fy5EkfC6JI12 surface width
		equals: 50
		description: 'testDrawMarkers_amp:6.24'.
	self
		assert: tmp_Fy5EkfC6JI12 surface height class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.25'.
	self
		assert: tmp_Fy5EkfC6JI12 surface height
		equals: 40
		description: 'testDrawMarkers_amp:6.26'.
	self
		assert: tmp_Fy5EkfC6JI12 surface isSuccess class
		equals: True
		description: 'testDrawMarkers_amp:6.27'.
	self
		assert: tmp_Fy5EkfC6JI12 surface isSuccess
		equals: true
		description: 'testDrawMarkers_amp:6.28'.
	self
		assert: tmp_Fy5EkfC6JI12 surface stride class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.29'.
	self
		assert: tmp_Fy5EkfC6JI12 surface stride
		equals: 200
		description: 'testDrawMarkers_amp:6.30'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas class
		equals: TSCanvas
		description: 'testDrawMarkers_amp:6.31'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas showRectangles class
		equals: False
		description: 'testDrawMarkers_amp:6.32'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas showRectangles
		equals: false
		description: 'testDrawMarkers_amp:6.33'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.34'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers_amp:6.35'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers_amp:6.36'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas view
		equals: nil
		description: 'testDrawMarkers_amp:6.37'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas isShape class
		equals: False
		description: 'testDrawMarkers_amp:6.38'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas isShape
		equals: false
		description: 'testDrawMarkers_amp:6.39'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers_amp:6.40'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers_amp:6.41'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas clearBackground class
		equals: True
		description: 'testDrawMarkers_amp:6.42'.
	self
		assert: tmp_Fy5EkfC6JI12 canvas clearBackground
		equals: true
		description: 'testDrawMarkers_amp:6.43'.
	self
		assert: tmp_Fy5EkfC6JI12 wantsSteps class
		equals: False
		description: 'testDrawMarkers_amp:6.44'.
	self
		assert: tmp_Fy5EkfC6JI12 wantsSteps
		equals: false
		description: 'testDrawMarkers_amp:6.45'.
	self
		assert: tmp_Fy5EkfC6JI12 isDragging class
		equals: False
		description: 'testDrawMarkers_amp:6.46'.
	self
		assert: tmp_Fy5EkfC6JI12 isDragging
		equals: false
		description: 'testDrawMarkers_amp:6.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testDrawSVGLine_amp [
	<madeBySmallAmp>
	| tmp_jkpE4y3Ip95 |
	c
		addShape:
			(TSSVGPathLine new
				strokeColor: Color red;
				svgPath: [ :a :b | 'M 100 100 L 200 200' ];
				width: 2).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawSVGLine_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawSVGLine_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawSVGLine_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawSVGLine_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawSVGLine_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawSVGLine_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawSVGLine_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawSVGLine_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawSVGLine_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawSVGLine_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawSVGLine_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawSVGLine_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawSVGLine_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawSVGLine_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawSVGLine_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:1.152'.
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
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawSVGLine_amp:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine_amp:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine_amp:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine_amp:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine_amp:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine_amp:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine_amp:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine_amp:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine_amp:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine_amp:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine_amp:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine_amp:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawSVGLine_amp:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine_amp:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine_amp:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 2
		description: 'testDrawSVGLine_amp:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:2.63'.
	self
		assert: c shapes size
		equals: 2
		description: 'testDrawSVGLine_amp:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 40000
		description: 'testDrawSVGLine_amp:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawSVGLine_amp:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 200
		description: 'testDrawSVGLine_amp:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 200
		description: 'testDrawSVGLine_amp:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 200
		description: 'testDrawSVGLine_amp:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawSVGLine_amp:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine_amp:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine_amp:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine_amp:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine_amp:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine_amp:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine_amp:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine_amp:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawSVGLine_amp:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine_amp:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine_amp:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 2
		description: 'testDrawSVGLine_amp:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.134'.
	self
		assert: c numberOfShapes
		equals: 2
		description: 'testDrawSVGLine_amp:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawSVGLine_amp:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine_amp:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 2
		description: 'testDrawSVGLine_amp:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:2.152'.
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
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:3.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine_amp:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine_amp:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine_amp:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine_amp:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine_amp:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine_amp:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine_amp:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine_amp:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine_amp:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:3.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawSVGLine_amp:3.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine_amp:3.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine_amp:3.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine_amp:3.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine_amp:3.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine_amp:3.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine_amp:3.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine_amp:3.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine_amp:3.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine_amp:3.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine_amp:3.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine_amp:3.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:3.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:3.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:3.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:3.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawSVGLine_amp:3.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine_amp:3.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:3.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine_amp:3.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.59'.
	self
		assert: c parent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:3.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:3.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:3.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:3.63'.
	self
		assert: c shapes size
		equals: 3
		description: 'testDrawSVGLine_amp:3.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:3.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:3.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:3.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:3.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.70'.
	self
		assert: c encompassingRectangle area
		equals: 40000
		description: 'testDrawSVGLine_amp:3.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:3.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:3.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:3.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.76'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawSVGLine_amp:3.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.78'.
	self
		assert: c encompassingRectangle right
		equals: 200
		description: 'testDrawSVGLine_amp:3.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:3.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:3.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:3.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:3.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 200
		description: 'testDrawSVGLine_amp:3.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:3.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:3.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.88'.
	self
		assert: c encompassingRectangle height
		equals: 200
		description: 'testDrawSVGLine_amp:3.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawSVGLine_amp:3.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine_amp:3.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine_amp:3.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:3.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:3.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:3.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:3.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine_amp:3.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:3.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:3.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:3.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine_amp:3.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine_amp:3.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:3.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:3.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:3.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:3.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine_amp:3.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:3.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:3.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine_amp:3.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:3.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:3.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:3.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:3.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawSVGLine_amp:3.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine_amp:3.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:3.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine_amp:3.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.130'.
	self
		assert: c topParent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:3.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:3.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:3.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.134'.
	self
		assert: c numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:3.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:3.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:3.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:3.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:3.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawSVGLine_amp:3.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:3.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine_amp:3.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:3.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:3.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:3.147'.
	self
		assert: c canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:3.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:3.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:3.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:3.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:3.152'.
	tmp_jkpE4y3Ip95 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:4.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:4.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine_amp:4.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:4.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:4.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine_amp:4.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine_amp:4.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine_amp:4.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:4.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:4.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine_amp:4.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine_amp:4.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine_amp:4.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine_amp:4.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:4.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine_amp:4.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine_amp:4.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine_amp:4.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine_amp:4.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:4.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawSVGLine_amp:4.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawSVGLine_amp:4.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawSVGLine_amp:4.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawSVGLine_amp:4.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawSVGLine_amp:4.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawSVGLine_amp:4.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawSVGLine_amp:4.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine_amp:4.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine_amp:4.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine_amp:4.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine_amp:4.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine_amp:4.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine_amp:4.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine_amp:4.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine_amp:4.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine_amp:4.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine_amp:4.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine_amp:4.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:4.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:4.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:4.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:4.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:4.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine_amp:4.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:4.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine_amp:4.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.62'.
	self
		assert: c parent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:4.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:4.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:4.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine_amp:4.66'.
	self
		assert: c shapes size
		equals: 3
		description: 'testDrawSVGLine_amp:4.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:4.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:4.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:4.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:4.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.73'.
	self
		assert: c encompassingRectangle area
		equals: 40000
		description: 'testDrawSVGLine_amp:4.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:4.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:4.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:4.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.79'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawSVGLine_amp:4.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.81'.
	self
		assert: c encompassingRectangle right
		equals: 200
		description: 'testDrawSVGLine_amp:4.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:4.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:4.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:4.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:4.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 200
		description: 'testDrawSVGLine_amp:4.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:4.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:4.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.91'.
	self
		assert: c encompassingRectangle height
		equals: 200
		description: 'testDrawSVGLine_amp:4.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:4.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawSVGLine_amp:4.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine_amp:4.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine_amp:4.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine_amp:4.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine_amp:4.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine_amp:4.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine_amp:4.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine_amp:4.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine_amp:4.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine_amp:4.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine_amp:4.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine_amp:4.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine_amp:4.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine_amp:4.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine_amp:4.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine_amp:4.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine_amp:4.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine_amp:4.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine_amp:4.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine_amp:4.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine_amp:4.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:4.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:4.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:4.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:4.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:4.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine_amp:4.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine_amp:4.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine_amp:4.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.131'.
	self
		assert: c topParent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:4.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:4.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:4.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.135'.
	self
		assert: c numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:4.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:4.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:4.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:4.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:4.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:4.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine_amp:4.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:4.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:4.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.146'.
	self
		assert: c canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:4.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:4.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:4.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:4.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:4.151'.
	self
		assert: tmp_jkpE4y3Ip95 class
		equals: TSAthensMorph
		description: 'testDrawSVGLine_amp:4.1'.
	self
		assert: tmp_jkpE4y3Ip95 isDrawing class
		equals: False
		description: 'testDrawSVGLine_amp:4.2'.
	self
		assert: tmp_jkpE4y3Ip95 isDrawing
		equals: false
		description: 'testDrawSVGLine_amp:4.3'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:4.4'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:4.5'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:4.6'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.7'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:4.8'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:4.9'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas view
		equals: nil
		description: 'testDrawSVGLine_amp:4.10'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:4.11'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:4.12'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.13'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:4.14'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:4.15'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:4.16'.
	self
		assert: tmp_jkpE4y3Ip95 renderer class
		equals: TSAthensRenderer
		description: 'testDrawSVGLine_amp:4.17'.
	self
		assert: tmp_jkpE4y3Ip95 renderer builder class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:4.18'.
	self
		assert: tmp_jkpE4y3Ip95 renderer builder
		equals: nil
		description: 'testDrawSVGLine_amp:4.19'.
	self
		assert: tmp_jkpE4y3Ip95 surface class
		equals: AthensCairoSurface
		description: 'testDrawSVGLine_amp:4.20'.
	self
		assert: tmp_jkpE4y3Ip95 surface status class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.21'.
	self
		assert: tmp_jkpE4y3Ip95 surface status
		equals: 0
		description: 'testDrawSVGLine_amp:4.22'.
	self
		assert: tmp_jkpE4y3Ip95 surface width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.23'.
	self
		assert: tmp_jkpE4y3Ip95 surface width
		equals: 50
		description: 'testDrawSVGLine_amp:4.24'.
	self
		assert: tmp_jkpE4y3Ip95 surface height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.25'.
	self
		assert: tmp_jkpE4y3Ip95 surface height
		equals: 40
		description: 'testDrawSVGLine_amp:4.26'.
	self
		assert: tmp_jkpE4y3Ip95 surface isSuccess class
		equals: True
		description: 'testDrawSVGLine_amp:4.27'.
	self
		assert: tmp_jkpE4y3Ip95 surface isSuccess
		equals: true
		description: 'testDrawSVGLine_amp:4.28'.
	self
		assert: tmp_jkpE4y3Ip95 surface stride class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.29'.
	self
		assert: tmp_jkpE4y3Ip95 surface stride
		equals: 200
		description: 'testDrawSVGLine_amp:4.30'.
	self
		assert: tmp_jkpE4y3Ip95 canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:4.31'.
	self
		assert: tmp_jkpE4y3Ip95 canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:4.32'.
	self
		assert: tmp_jkpE4y3Ip95 canvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:4.33'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.34'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:4.35'.
	self
		assert: tmp_jkpE4y3Ip95 canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:4.36'.
	self
		assert: tmp_jkpE4y3Ip95 canvas view
		equals: nil
		description: 'testDrawSVGLine_amp:4.37'.
	self
		assert: tmp_jkpE4y3Ip95 canvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:4.38'.
	self
		assert: tmp_jkpE4y3Ip95 canvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:4.39'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:4.40'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:4.41'.
	self
		assert: tmp_jkpE4y3Ip95 canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:4.42'.
	self
		assert: tmp_jkpE4y3Ip95 canvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:4.43'.
	self
		assert: tmp_jkpE4y3Ip95 wantsSteps class
		equals: False
		description: 'testDrawSVGLine_amp:4.44'.
	self
		assert: tmp_jkpE4y3Ip95 wantsSteps
		equals: false
		description: 'testDrawSVGLine_amp:4.45'.
	self
		assert: tmp_jkpE4y3Ip95 isDragging class
		equals: False
		description: 'testDrawSVGLine_amp:4.46'.
	self
		assert: tmp_jkpE4y3Ip95 isDragging
		equals: false
		description: 'testDrawSVGLine_amp:4.47'.
	tmp_jkpE4y3Ip95 drawOnMockCanvas.
	self
		assert: tmp_jkpE4y3Ip95 class
		equals: TSAthensMorph
		description: 'testDrawSVGLine_amp:5.1'.
	self
		assert: tmp_jkpE4y3Ip95 isDrawing class
		equals: False
		description: 'testDrawSVGLine_amp:5.2'.
	self
		assert: tmp_jkpE4y3Ip95 isDrawing
		equals: false
		description: 'testDrawSVGLine_amp:5.3'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:5.4'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:5.5'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:5.6'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.7'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:5.8'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:5.9'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas view
		equals: nil
		description: 'testDrawSVGLine_amp:5.10'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:5.11'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:5.12'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.13'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:5.14'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:5.15'.
	self
		assert: tmp_jkpE4y3Ip95 trachelCanvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:5.16'.
	self
		assert: tmp_jkpE4y3Ip95 renderer class
		equals: TSAthensRenderer
		description: 'testDrawSVGLine_amp:5.17'.
	self
		assert: tmp_jkpE4y3Ip95 renderer builder class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:5.18'.
	self
		assert: tmp_jkpE4y3Ip95 renderer builder
		equals: nil
		description: 'testDrawSVGLine_amp:5.19'.
	self
		assert: tmp_jkpE4y3Ip95 surface class
		equals: AthensCairoSurface
		description: 'testDrawSVGLine_amp:5.20'.
	self
		assert: tmp_jkpE4y3Ip95 surface status class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.21'.
	self
		assert: tmp_jkpE4y3Ip95 surface status
		equals: 0
		description: 'testDrawSVGLine_amp:5.22'.
	self
		assert: tmp_jkpE4y3Ip95 surface width class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.23'.
	self
		assert: tmp_jkpE4y3Ip95 surface width
		equals: 50
		description: 'testDrawSVGLine_amp:5.24'.
	self
		assert: tmp_jkpE4y3Ip95 surface height class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.25'.
	self
		assert: tmp_jkpE4y3Ip95 surface height
		equals: 40
		description: 'testDrawSVGLine_amp:5.26'.
	self
		assert: tmp_jkpE4y3Ip95 surface isSuccess class
		equals: True
		description: 'testDrawSVGLine_amp:5.27'.
	self
		assert: tmp_jkpE4y3Ip95 surface isSuccess
		equals: true
		description: 'testDrawSVGLine_amp:5.28'.
	self
		assert: tmp_jkpE4y3Ip95 surface stride class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.29'.
	self
		assert: tmp_jkpE4y3Ip95 surface stride
		equals: 200
		description: 'testDrawSVGLine_amp:5.30'.
	self
		assert: tmp_jkpE4y3Ip95 canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine_amp:5.31'.
	self
		assert: tmp_jkpE4y3Ip95 canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine_amp:5.32'.
	self
		assert: tmp_jkpE4y3Ip95 canvas showRectangles
		equals: false
		description: 'testDrawSVGLine_amp:5.33'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.34'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine_amp:5.35'.
	self
		assert: tmp_jkpE4y3Ip95 canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine_amp:5.36'.
	self
		assert: tmp_jkpE4y3Ip95 canvas view
		equals: nil
		description: 'testDrawSVGLine_amp:5.37'.
	self
		assert: tmp_jkpE4y3Ip95 canvas isShape class
		equals: False
		description: 'testDrawSVGLine_amp:5.38'.
	self
		assert: tmp_jkpE4y3Ip95 canvas isShape
		equals: false
		description: 'testDrawSVGLine_amp:5.39'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine_amp:5.40'.
	self
		assert: tmp_jkpE4y3Ip95 canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine_amp:5.41'.
	self
		assert: tmp_jkpE4y3Ip95 canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine_amp:5.42'.
	self
		assert: tmp_jkpE4y3Ip95 canvas clearBackground
		equals: true
		description: 'testDrawSVGLine_amp:5.43'.
	self
		assert: tmp_jkpE4y3Ip95 wantsSteps class
		equals: False
		description: 'testDrawSVGLine_amp:5.44'.
	self
		assert: tmp_jkpE4y3Ip95 wantsSteps
		equals: false
		description: 'testDrawSVGLine_amp:5.45'.
	self
		assert: tmp_jkpE4y3Ip95 isDragging class
		equals: False
		description: 'testDrawSVGLine_amp:5.46'.
	self
		assert: tmp_jkpE4y3Ip95 isDragging
		equals: false
		description: 'testDrawSVGLine_amp:5.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testPolyline_amp [
	<madeBySmallAmp>
	| line |
	line := TSPolyline new.
	self
		assert: line class
		equals: TSPolyline
		description: 'testPolyline_amp:1.1'.
	self
		assert: line cornerRadii class
		equals: SmallInteger
		description: 'testPolyline_amp:1.2'.
	self
		assert: line cornerRadii
		equals: 0
		description: 'testPolyline_amp:1.3'.
	line
		controlPoints:
			{(0 @ 0).
			(0 @ 100)}.
	self
		assert: line class
		equals: TSPolyline
		description: 'testPolyline_amp:2.1'.
	self
		assert: line cornerRadii class
		equals: SmallInteger
		description: 'testPolyline_amp:2.2'.
	self
		assert: line cornerRadii
		equals: 0
		description: 'testPolyline_amp:2.3'
]
