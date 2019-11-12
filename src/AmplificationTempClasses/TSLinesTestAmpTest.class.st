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
TSLinesTestAmpTest >> testDrawBezierLine [
	<madeBySmallAmp>
	| tmp_Pm38weMs963 |
	c
		addShape:
			(TSBezier new
				strokeColor: Color red;
				width: 2).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBezierLine:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBezierLine:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBezierLine:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBezierLine:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBezierLine:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBezierLine:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBezierLine:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBezierLine:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBezierLine:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBezierLine:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBezierLine:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBezierLine:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBezierLine:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBezierLine:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBezierLine:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBezierLine:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBezierLine:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBezierLine:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBezierLine:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawBezierLine:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBezierLine:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBezierLine:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBezierLine:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBezierLine:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBezierLine:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBezierLine:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBezierLine:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBezierLine:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBezierLine:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBezierLine:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBezierLine:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBezierLine:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBezierLine:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBezierLine:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawBezierLine:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBezierLine:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBezierLine:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBezierLine:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBezierLine:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBezierLine:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBezierLine:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBezierLine:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawBezierLine:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawBezierLine:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBezierLine:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBezierLine:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawBezierLine:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawBezierLine:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawBezierLine:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBezierLine:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBezierLine:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawBezierLine:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawBezierLine:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawBezierLine:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawBezierLine:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBezierLine:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBezierLine:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBezierLine:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBezierLine:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBezierLine:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBezierLine:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBezierLine:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBezierLine:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBezierLine:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBezierLine:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBezierLine:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBezierLine:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBezierLine:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBezierLine:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBezierLine:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBezierLine:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBezierLine:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBezierLine:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBezierLine:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawBezierLine:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBezierLine:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBezierLine:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBezierLine:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBezierLine:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBezierLine:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBezierLine:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawBezierLine:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBezierLine:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBezierLine:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBezierLine:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBezierLine:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBezierLine:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBezierLine:1.152'.
	tmp_Pm38weMs963 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBezierLine:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBezierLine:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBezierLine:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBezierLine:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBezierLine:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBezierLine:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBezierLine:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBezierLine:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBezierLine:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBezierLine:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBezierLine:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBezierLine:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBezierLine:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBezierLine:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBezierLine:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBezierLine:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBezierLine:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBezierLine:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBezierLine:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawBezierLine:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawBezierLine:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawBezierLine:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawBezierLine:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawBezierLine:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawBezierLine:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawBezierLine:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBezierLine:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBezierLine:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBezierLine:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBezierLine:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBezierLine:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBezierLine:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBezierLine:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBezierLine:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBezierLine:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBezierLine:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBezierLine:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBezierLine:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBezierLine:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBezierLine:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBezierLine:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBezierLine:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBezierLine:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBezierLine:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBezierLine:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBezierLine:2.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBezierLine:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawBezierLine:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawBezierLine:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBezierLine:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBezierLine:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawBezierLine:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawBezierLine:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.81'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawBezierLine:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBezierLine:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBezierLine:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawBezierLine:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawBezierLine:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawBezierLine:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawBezierLine:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:2.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBezierLine:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBezierLine:2.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBezierLine:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBezierLine:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBezierLine:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBezierLine:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBezierLine:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBezierLine:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBezierLine:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBezierLine:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBezierLine:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBezierLine:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBezierLine:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBezierLine:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBezierLine:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBezierLine:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBezierLine:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBezierLine:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBezierLine:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBezierLine:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBezierLine:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBezierLine:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBezierLine:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBezierLine:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBezierLine:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBezierLine:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBezierLine:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBezierLine:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBezierLine:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBezierLine:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBezierLine:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBezierLine:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBezierLine:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBezierLine:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBezierLine:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBezierLine:2.151'.
	self
		assert: tmp_Pm38weMs963 class
		equals: TSAthensMorph
		description: 'testDrawBezierLine:2.1'.
	self
		assert: tmp_Pm38weMs963 isDrawing class
		equals: False
		description: 'testDrawBezierLine:2.2'.
	self
		assert: tmp_Pm38weMs963 isDrawing
		equals: false
		description: 'testDrawBezierLine:2.3'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBezierLine:2.4'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBezierLine:2.5'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBezierLine:2.6'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.7'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:2.8'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:2.9'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas view
		equals: nil
		description: 'testDrawBezierLine:2.10'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas isShape class
		equals: False
		description: 'testDrawBezierLine:2.11'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas isShape
		equals: false
		description: 'testDrawBezierLine:2.12'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.13'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:2.14'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBezierLine:2.15'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBezierLine:2.16'.
	self
		assert: tmp_Pm38weMs963 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBezierLine:2.17'.
	self
		assert: tmp_Pm38weMs963 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBezierLine:2.18'.
	self
		assert: tmp_Pm38weMs963 renderer builder
		equals: nil
		description: 'testDrawBezierLine:2.19'.
	self
		assert: tmp_Pm38weMs963 surface class
		equals: AthensCairoSurface
		description: 'testDrawBezierLine:2.20'.
	self
		assert: tmp_Pm38weMs963 surface status class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.21'.
	self
		assert: tmp_Pm38weMs963 surface status
		equals: 0
		description: 'testDrawBezierLine:2.22'.
	self
		assert: tmp_Pm38weMs963 surface width class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.23'.
	self
		assert: tmp_Pm38weMs963 surface width
		equals: 50
		description: 'testDrawBezierLine:2.24'.
	self
		assert: tmp_Pm38weMs963 surface height class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.25'.
	self
		assert: tmp_Pm38weMs963 surface height
		equals: 40
		description: 'testDrawBezierLine:2.26'.
	self
		assert: tmp_Pm38weMs963 surface isSuccess class
		equals: True
		description: 'testDrawBezierLine:2.27'.
	self
		assert: tmp_Pm38weMs963 surface isSuccess
		equals: true
		description: 'testDrawBezierLine:2.28'.
	self
		assert: tmp_Pm38weMs963 surface stride class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.29'.
	self
		assert: tmp_Pm38weMs963 surface stride
		equals: 200
		description: 'testDrawBezierLine:2.30'.
	self
		assert: tmp_Pm38weMs963 canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine:2.31'.
	self
		assert: tmp_Pm38weMs963 canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine:2.32'.
	self
		assert: tmp_Pm38weMs963 canvas showRectangles
		equals: false
		description: 'testDrawBezierLine:2.33'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.34'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:2.35'.
	self
		assert: tmp_Pm38weMs963 canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:2.36'.
	self
		assert: tmp_Pm38weMs963 canvas view
		equals: nil
		description: 'testDrawBezierLine:2.37'.
	self
		assert: tmp_Pm38weMs963 canvas isShape class
		equals: False
		description: 'testDrawBezierLine:2.38'.
	self
		assert: tmp_Pm38weMs963 canvas isShape
		equals: false
		description: 'testDrawBezierLine:2.39'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:2.40'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:2.41'.
	self
		assert: tmp_Pm38weMs963 canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine:2.42'.
	self
		assert: tmp_Pm38weMs963 canvas clearBackground
		equals: true
		description: 'testDrawBezierLine:2.43'.
	self
		assert: tmp_Pm38weMs963 wantsSteps class
		equals: False
		description: 'testDrawBezierLine:2.44'.
	self
		assert: tmp_Pm38weMs963 wantsSteps
		equals: false
		description: 'testDrawBezierLine:2.45'.
	self
		assert: tmp_Pm38weMs963 isDragging class
		equals: False
		description: 'testDrawBezierLine:2.46'.
	self
		assert: tmp_Pm38weMs963 isDragging
		equals: false
		description: 'testDrawBezierLine:2.47'.
	tmp_Pm38weMs963 drawOnMockCanvas.
	self
		assert: tmp_Pm38weMs963 class
		equals: TSAthensMorph
		description: 'testDrawBezierLine:3.1'.
	self
		assert: tmp_Pm38weMs963 isDrawing class
		equals: False
		description: 'testDrawBezierLine:3.2'.
	self
		assert: tmp_Pm38weMs963 isDrawing
		equals: false
		description: 'testDrawBezierLine:3.3'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBezierLine:3.4'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBezierLine:3.5'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBezierLine:3.6'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.7'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:3.8'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:3.9'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas view
		equals: nil
		description: 'testDrawBezierLine:3.10'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas isShape class
		equals: False
		description: 'testDrawBezierLine:3.11'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas isShape
		equals: false
		description: 'testDrawBezierLine:3.12'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.13'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:3.14'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBezierLine:3.15'.
	self
		assert: tmp_Pm38weMs963 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBezierLine:3.16'.
	self
		assert: tmp_Pm38weMs963 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBezierLine:3.17'.
	self
		assert: tmp_Pm38weMs963 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBezierLine:3.18'.
	self
		assert: tmp_Pm38weMs963 renderer builder
		equals: nil
		description: 'testDrawBezierLine:3.19'.
	self
		assert: tmp_Pm38weMs963 surface class
		equals: AthensCairoSurface
		description: 'testDrawBezierLine:3.20'.
	self
		assert: tmp_Pm38weMs963 surface status class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.21'.
	self
		assert: tmp_Pm38weMs963 surface status
		equals: 0
		description: 'testDrawBezierLine:3.22'.
	self
		assert: tmp_Pm38weMs963 surface width class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.23'.
	self
		assert: tmp_Pm38weMs963 surface width
		equals: 50
		description: 'testDrawBezierLine:3.24'.
	self
		assert: tmp_Pm38weMs963 surface height class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.25'.
	self
		assert: tmp_Pm38weMs963 surface height
		equals: 40
		description: 'testDrawBezierLine:3.26'.
	self
		assert: tmp_Pm38weMs963 surface isSuccess class
		equals: True
		description: 'testDrawBezierLine:3.27'.
	self
		assert: tmp_Pm38weMs963 surface isSuccess
		equals: true
		description: 'testDrawBezierLine:3.28'.
	self
		assert: tmp_Pm38weMs963 surface stride class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.29'.
	self
		assert: tmp_Pm38weMs963 surface stride
		equals: 200
		description: 'testDrawBezierLine:3.30'.
	self
		assert: tmp_Pm38weMs963 canvas class
		equals: TSCanvas
		description: 'testDrawBezierLine:3.31'.
	self
		assert: tmp_Pm38weMs963 canvas showRectangles class
		equals: False
		description: 'testDrawBezierLine:3.32'.
	self
		assert: tmp_Pm38weMs963 canvas showRectangles
		equals: false
		description: 'testDrawBezierLine:3.33'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.34'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBezierLine:3.35'.
	self
		assert: tmp_Pm38weMs963 canvas view class
		equals: UndefinedObject
		description: 'testDrawBezierLine:3.36'.
	self
		assert: tmp_Pm38weMs963 canvas view
		equals: nil
		description: 'testDrawBezierLine:3.37'.
	self
		assert: tmp_Pm38weMs963 canvas isShape class
		equals: False
		description: 'testDrawBezierLine:3.38'.
	self
		assert: tmp_Pm38weMs963 canvas isShape
		equals: false
		description: 'testDrawBezierLine:3.39'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBezierLine:3.40'.
	self
		assert: tmp_Pm38weMs963 canvas numberOfShapes
		equals: 1
		description: 'testDrawBezierLine:3.41'.
	self
		assert: tmp_Pm38weMs963 canvas clearBackground class
		equals: True
		description: 'testDrawBezierLine:3.42'.
	self
		assert: tmp_Pm38weMs963 canvas clearBackground
		equals: true
		description: 'testDrawBezierLine:3.43'.
	self
		assert: tmp_Pm38weMs963 wantsSteps class
		equals: False
		description: 'testDrawBezierLine:3.44'.
	self
		assert: tmp_Pm38weMs963 wantsSteps
		equals: false
		description: 'testDrawBezierLine:3.45'.
	self
		assert: tmp_Pm38weMs963 isDragging class
		equals: False
		description: 'testDrawBezierLine:3.46'.
	self
		assert: tmp_Pm38weMs963 isDragging
		equals: false
		description: 'testDrawBezierLine:3.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testDrawLine [
	<madeBySmallAmp>
	| tmp_eM47ODGrJT3 |
	c
		addShape:
			(TSLine new
				strokeColor: Color red;
				width: 2).
	self assert: c class equals: TSCanvas description: 'testDrawLine:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLine:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLine:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLine:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLine:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLine:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLine:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLine:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLine:1.9'.
	self assert: c color red equals: 1.0 description: 'testDrawLine:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLine:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLine:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLine:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLine:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLine:1.15'.
	self assert: c color hue equals: 0.0 description: 'testDrawLine:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLine:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLine:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLine:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLine:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLine:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLine:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLine:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLine:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLine:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLine:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLine:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLine:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLine:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLine:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawLine:1.33'.
	self assert: c morph equals: nil description: 'testDrawLine:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLine:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLine:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLine:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLine:1.38'.
	self assert: c extent y equals: 500 description: 'testDrawLine:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLine:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLine:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLine:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLine:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLine:1.44'.
	self assert: c extent x equals: 500 description: 'testDrawLine:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLine:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLine:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLine:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLine:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLine:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawLine:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawLine:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLine:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLine:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLine:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLine:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLine:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLine:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLine:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLine:1.63'.
	self assert: c shapes size equals: 1 description: 'testDrawLine:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLine:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawLine:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawLine:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawLine:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawLine:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLine:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLine:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawLine:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawLine:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawLine:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawLine:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawLine:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawLine:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLine:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLine:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawLine:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawLine:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawLine:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLine:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLine:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawLine:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawLine:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLine:1.90'.
	self assert: c view equals: nil description: 'testDrawLine:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLine:1.92'.
	self assert: c isShape equals: false description: 'testDrawLine:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLine:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLine:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLine:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLine:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLine:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLine:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLine:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLine:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLine:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLine:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLine:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLine:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLine:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLine:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLine:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLine:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLine:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLine:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLine:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLine:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLine:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLine:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLine:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLine:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLine:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawLine:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawLine:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLine:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLine:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLine:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLine:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLine:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLine:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLine:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLine:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLine:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLine:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLine:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawLine:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawLine:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLine:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLine:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLine:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLine:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLine:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLine:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLine:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLine:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLine:1.152'.
	tmp_eM47ODGrJT3 := c createMorph.
	self assert: c class equals: TSCanvas description: 'testDrawLine:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLine:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLine:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLine:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLine:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLine:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLine:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLine:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLine:2.9'.
	self assert: c color red equals: 1.0 description: 'testDrawLine:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLine:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLine:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLine:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLine:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLine:2.15'.
	self assert: c color hue equals: 0.0 description: 'testDrawLine:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLine:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLine:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLine:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLine:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLine:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLine:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLine:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLine:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLine:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLine:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLine:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLine:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLine:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLine:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawLine:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawLine:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawLine:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawLine:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawLine:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawLine:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawLine:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLine:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLine:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLine:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLine:2.43'.
	self assert: c extent y equals: 500 description: 'testDrawLine:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLine:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLine:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLine:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLine:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLine:2.49'.
	self assert: c extent x equals: 500 description: 'testDrawLine:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLine:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLine:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLine:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLine:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLine:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLine:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLine:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLine:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLine:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLine:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLine:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLine:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLine:2.66'.
	self assert: c shapes size equals: 1 description: 'testDrawLine:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLine:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawLine:2.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawLine:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawLine:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawLine:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLine:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLine:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawLine:2.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawLine:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawLine:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawLine:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawLine:2.81'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawLine:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLine:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLine:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawLine:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawLine:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawLine:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLine:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLine:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawLine:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawLine:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLine:2.93'.
	self assert: c view equals: nil description: 'testDrawLine:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLine:2.95'.
	self assert: c isShape equals: false description: 'testDrawLine:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLine:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLine:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLine:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLine:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLine:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLine:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLine:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLine:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLine:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLine:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLine:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLine:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLine:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLine:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLine:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLine:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLine:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLine:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLine:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLine:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLine:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLine:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLine:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLine:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLine:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLine:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLine:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLine:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLine:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLine:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLine:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLine:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLine:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLine:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLine:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLine:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLine:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLine:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLine:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLine:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLine:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLine:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLine:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLine:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLine:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLine:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLine:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLine:2.151'.
	self
		assert: tmp_eM47ODGrJT3 class
		equals: TSAthensMorph
		description: 'testDrawLine:2.1'.
	self
		assert: tmp_eM47ODGrJT3 isDrawing class
		equals: False
		description: 'testDrawLine:2.2'.
	self
		assert: tmp_eM47ODGrJT3 isDrawing
		equals: false
		description: 'testDrawLine:2.3'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLine:2.4'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLine:2.5'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLine:2.6'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.7'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:2.8'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLine:2.9'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas view
		equals: nil
		description: 'testDrawLine:2.10'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLine:2.11'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas isShape
		equals: false
		description: 'testDrawLine:2.12'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.13'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLine:2.14'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLine:2.15'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLine:2.16'.
	self
		assert: tmp_eM47ODGrJT3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLine:2.17'.
	self
		assert: tmp_eM47ODGrJT3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLine:2.18'.
	self
		assert: tmp_eM47ODGrJT3 renderer builder
		equals: nil
		description: 'testDrawLine:2.19'.
	self
		assert: tmp_eM47ODGrJT3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLine:2.20'.
	self
		assert: tmp_eM47ODGrJT3 surface status class
		equals: SmallInteger
		description: 'testDrawLine:2.21'.
	self
		assert: tmp_eM47ODGrJT3 surface status
		equals: 0
		description: 'testDrawLine:2.22'.
	self
		assert: tmp_eM47ODGrJT3 surface width class
		equals: SmallInteger
		description: 'testDrawLine:2.23'.
	self
		assert: tmp_eM47ODGrJT3 surface width
		equals: 50
		description: 'testDrawLine:2.24'.
	self
		assert: tmp_eM47ODGrJT3 surface height class
		equals: SmallInteger
		description: 'testDrawLine:2.25'.
	self
		assert: tmp_eM47ODGrJT3 surface height
		equals: 40
		description: 'testDrawLine:2.26'.
	self
		assert: tmp_eM47ODGrJT3 surface isSuccess class
		equals: True
		description: 'testDrawLine:2.27'.
	self
		assert: tmp_eM47ODGrJT3 surface isSuccess
		equals: true
		description: 'testDrawLine:2.28'.
	self
		assert: tmp_eM47ODGrJT3 surface stride class
		equals: SmallInteger
		description: 'testDrawLine:2.29'.
	self
		assert: tmp_eM47ODGrJT3 surface stride
		equals: 200
		description: 'testDrawLine:2.30'.
	self
		assert: tmp_eM47ODGrJT3 canvas class
		equals: TSCanvas
		description: 'testDrawLine:2.31'.
	self
		assert: tmp_eM47ODGrJT3 canvas showRectangles class
		equals: False
		description: 'testDrawLine:2.32'.
	self
		assert: tmp_eM47ODGrJT3 canvas showRectangles
		equals: false
		description: 'testDrawLine:2.33'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.34'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:2.35'.
	self
		assert: tmp_eM47ODGrJT3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLine:2.36'.
	self
		assert: tmp_eM47ODGrJT3 canvas view
		equals: nil
		description: 'testDrawLine:2.37'.
	self
		assert: tmp_eM47ODGrJT3 canvas isShape class
		equals: False
		description: 'testDrawLine:2.38'.
	self
		assert: tmp_eM47ODGrJT3 canvas isShape
		equals: false
		description: 'testDrawLine:2.39'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:2.40'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLine:2.41'.
	self
		assert: tmp_eM47ODGrJT3 canvas clearBackground class
		equals: True
		description: 'testDrawLine:2.42'.
	self
		assert: tmp_eM47ODGrJT3 canvas clearBackground
		equals: true
		description: 'testDrawLine:2.43'.
	self
		assert: tmp_eM47ODGrJT3 wantsSteps class
		equals: False
		description: 'testDrawLine:2.44'.
	self
		assert: tmp_eM47ODGrJT3 wantsSteps
		equals: false
		description: 'testDrawLine:2.45'.
	self
		assert: tmp_eM47ODGrJT3 isDragging class
		equals: False
		description: 'testDrawLine:2.46'.
	self
		assert: tmp_eM47ODGrJT3 isDragging
		equals: false
		description: 'testDrawLine:2.47'.
	tmp_eM47ODGrJT3 drawOnMockCanvas.
	self
		assert: tmp_eM47ODGrJT3 class
		equals: TSAthensMorph
		description: 'testDrawLine:3.1'.
	self
		assert: tmp_eM47ODGrJT3 isDrawing class
		equals: False
		description: 'testDrawLine:3.2'.
	self
		assert: tmp_eM47ODGrJT3 isDrawing
		equals: false
		description: 'testDrawLine:3.3'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLine:3.4'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLine:3.5'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLine:3.6'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:3.7'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:3.8'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLine:3.9'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas view
		equals: nil
		description: 'testDrawLine:3.10'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLine:3.11'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas isShape
		equals: false
		description: 'testDrawLine:3.12'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:3.13'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLine:3.14'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLine:3.15'.
	self
		assert: tmp_eM47ODGrJT3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLine:3.16'.
	self
		assert: tmp_eM47ODGrJT3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLine:3.17'.
	self
		assert: tmp_eM47ODGrJT3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLine:3.18'.
	self
		assert: tmp_eM47ODGrJT3 renderer builder
		equals: nil
		description: 'testDrawLine:3.19'.
	self
		assert: tmp_eM47ODGrJT3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLine:3.20'.
	self
		assert: tmp_eM47ODGrJT3 surface status class
		equals: SmallInteger
		description: 'testDrawLine:3.21'.
	self
		assert: tmp_eM47ODGrJT3 surface status
		equals: 0
		description: 'testDrawLine:3.22'.
	self
		assert: tmp_eM47ODGrJT3 surface width class
		equals: SmallInteger
		description: 'testDrawLine:3.23'.
	self
		assert: tmp_eM47ODGrJT3 surface width
		equals: 50
		description: 'testDrawLine:3.24'.
	self
		assert: tmp_eM47ODGrJT3 surface height class
		equals: SmallInteger
		description: 'testDrawLine:3.25'.
	self
		assert: tmp_eM47ODGrJT3 surface height
		equals: 40
		description: 'testDrawLine:3.26'.
	self
		assert: tmp_eM47ODGrJT3 surface isSuccess class
		equals: True
		description: 'testDrawLine:3.27'.
	self
		assert: tmp_eM47ODGrJT3 surface isSuccess
		equals: true
		description: 'testDrawLine:3.28'.
	self
		assert: tmp_eM47ODGrJT3 surface stride class
		equals: SmallInteger
		description: 'testDrawLine:3.29'.
	self
		assert: tmp_eM47ODGrJT3 surface stride
		equals: 200
		description: 'testDrawLine:3.30'.
	self
		assert: tmp_eM47ODGrJT3 canvas class
		equals: TSCanvas
		description: 'testDrawLine:3.31'.
	self
		assert: tmp_eM47ODGrJT3 canvas showRectangles class
		equals: False
		description: 'testDrawLine:3.32'.
	self
		assert: tmp_eM47ODGrJT3 canvas showRectangles
		equals: false
		description: 'testDrawLine:3.33'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLine:3.34'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLine:3.35'.
	self
		assert: tmp_eM47ODGrJT3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLine:3.36'.
	self
		assert: tmp_eM47ODGrJT3 canvas view
		equals: nil
		description: 'testDrawLine:3.37'.
	self
		assert: tmp_eM47ODGrJT3 canvas isShape class
		equals: False
		description: 'testDrawLine:3.38'.
	self
		assert: tmp_eM47ODGrJT3 canvas isShape
		equals: false
		description: 'testDrawLine:3.39'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLine:3.40'.
	self
		assert: tmp_eM47ODGrJT3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLine:3.41'.
	self
		assert: tmp_eM47ODGrJT3 canvas clearBackground class
		equals: True
		description: 'testDrawLine:3.42'.
	self
		assert: tmp_eM47ODGrJT3 canvas clearBackground
		equals: true
		description: 'testDrawLine:3.43'.
	self
		assert: tmp_eM47ODGrJT3 wantsSteps class
		equals: False
		description: 'testDrawLine:3.44'.
	self
		assert: tmp_eM47ODGrJT3 wantsSteps
		equals: false
		description: 'testDrawLine:3.45'.
	self
		assert: tmp_eM47ODGrJT3 isDragging class
		equals: False
		description: 'testDrawLine:3.46'.
	self
		assert: tmp_eM47ODGrJT3 isDragging
		equals: false
		description: 'testDrawLine:3.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testDrawMarkers [
	<madeBySmallAmp>
	| line m tmp_gEKfqJOfFN9 tmp_q8GgbLTzvY12 |
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
		description: 'testDrawMarkers:1.1'.
	self
		assert: m cornerRadii class
		equals: SmallInteger
		description: 'testDrawMarkers:1.2'.
	self
		assert: m cornerRadii
		equals: 0
		description: 'testDrawMarkers:1.3'.
	self
		assert: m points class
		equals: Array
		description: 'testDrawMarkers:1.4'.
	self
		assert: m points size
		equals: 3
		description: 'testDrawMarkers:1.5'.
	line := TSLine new
		startPoint: 50 @ 50;
		endPoint: 250 @ 50.
	self
		assert: line class
		equals: TSLine
		description: 'testDrawMarkers:2.1'.
	self
		assert: line markers class
		equals: Array
		description: 'testDrawMarkers:2.2'.
	self
		assert: line markers size
		equals: 3
		description: 'testDrawMarkers:2.3'.
	self
		assert: line privateMarkers class
		equals: Array
		description: 'testDrawMarkers:2.4'.
	self
		assert: line privateMarkers size
		equals: 3
		description: 'testDrawMarkers:2.5'.
	tmp_gEKfqJOfFN9 := line markerStart: m.
	self
		assert: line class
		equals: TSLine
		description: 'testDrawMarkers:3.1'.
	self
		assert: line markers class
		equals: Array
		description: 'testDrawMarkers:3.2'.
	self
		assert: line markers size
		equals: 3
		description: 'testDrawMarkers:3.3'.
	self
		assert: line privateMarkers class
		equals: Array
		description: 'testDrawMarkers:3.4'.
	self
		assert: line privateMarkers size
		equals: 3
		description: 'testDrawMarkers:3.5'.
	self
		assert: tmp_gEKfqJOfFN9 class
		equals: TSMarker
		description: 'testDrawMarkers:3.1'.
	self
		assert: tmp_gEKfqJOfFN9 shape class
		equals: TSPolygon
		description: 'testDrawMarkers:3.2'.
	self
		assert: tmp_gEKfqJOfFN9 shape cornerRadii class
		equals: SmallInteger
		description: 'testDrawMarkers:3.3'.
	self
		assert: tmp_gEKfqJOfFN9 shape cornerRadii
		equals: 0
		description: 'testDrawMarkers:3.4'.
	self
		assert: tmp_gEKfqJOfFN9 offsetRatio class
		equals: SmallInteger
		description: 'testDrawMarkers:3.5'.
	self
		assert: tmp_gEKfqJOfFN9 offsetRatio
		equals: 0
		description: 'testDrawMarkers:3.6'.
	self
		assert: tmp_gEKfqJOfFN9 offset class
		equals: SmallInteger
		description: 'testDrawMarkers:3.7'.
	self
		assert: tmp_gEKfqJOfFN9 offset
		equals: 0
		description: 'testDrawMarkers:3.8'.
	c addShape: line.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawMarkers:4.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawMarkers:4.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawMarkers:4.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawMarkers:4.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawMarkers:4.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawMarkers:4.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawMarkers:4.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawMarkers:4.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawMarkers:4.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawMarkers:4.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawMarkers:4.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawMarkers:4.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawMarkers:4.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawMarkers:4.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawMarkers:4.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawMarkers:4.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawMarkers:4.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawMarkers:4.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawMarkers:4.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:4.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.33'.
	self assert: c morph equals: nil description: 'testDrawMarkers:4.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawMarkers:4.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawMarkers:4.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawMarkers:4.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawMarkers:4.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawMarkers:4.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawMarkers:4.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawMarkers:4.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawMarkers:4.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawMarkers:4.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawMarkers:4.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawMarkers:4.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawMarkers:4.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawMarkers:4.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawMarkers:4.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawMarkers:4.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawMarkers:4.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:4.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawMarkers:4.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawMarkers:4.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawMarkers:4.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawMarkers:4.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawMarkers:4.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawMarkers:4.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawMarkers:4.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawMarkers:4.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawMarkers:4.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawMarkers:4.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers:4.66'.
	self
		assert: c encompassingRectangle top
		equals: 50
		description: 'testDrawMarkers:4.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers:4.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers:4.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers:4.70'.
	self
		assert: c encompassingRectangle area
		equals: 200
		description: 'testDrawMarkers:4.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawMarkers:4.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawMarkers:4.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers:4.74'.
	self
		assert: c encompassingRectangle left
		equals: 50
		description: 'testDrawMarkers:4.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers:4.76'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawMarkers:4.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers:4.78'.
	self
		assert: c encompassingRectangle right
		equals: 250
		description: 'testDrawMarkers:4.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawMarkers:4.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawMarkers:4.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawMarkers:4.82'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawMarkers:4.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers:4.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 51
		description: 'testDrawMarkers:4.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers:4.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawMarkers:4.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers:4.88'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawMarkers:4.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.90'.
	self assert: c view equals: nil description: 'testDrawMarkers:4.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawMarkers:4.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawMarkers:4.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawMarkers:4.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers:4.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawMarkers:4.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers:4.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers:4.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers:4.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawMarkers:4.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawMarkers:4.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawMarkers:4.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers:4.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawMarkers:4.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers:4.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawMarkers:4.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers:4.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawMarkers:4.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawMarkers:4.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawMarkers:4.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawMarkers:4.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawMarkers:4.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers:4.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawMarkers:4.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers:4.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawMarkers:4.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers:4.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawMarkers:4.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawMarkers:4.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawMarkers:4.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawMarkers:4.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:4.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawMarkers:4.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawMarkers:4.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawMarkers:4.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawMarkers:4.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawMarkers:4.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawMarkers:4.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawMarkers:4.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawMarkers:4.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawMarkers:4.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawMarkers:4.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawMarkers:4.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:4.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawMarkers:4.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers:4.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawMarkers:4.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawMarkers:4.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawMarkers:4.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:4.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers:4.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawMarkers:4.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawMarkers:4.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawMarkers:4.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawMarkers:4.152'.
	tmp_q8GgbLTzvY12 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawMarkers:5.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawMarkers:5.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawMarkers:5.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawMarkers:5.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawMarkers:5.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawMarkers:5.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawMarkers:5.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawMarkers:5.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawMarkers:5.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawMarkers:5.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawMarkers:5.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawMarkers:5.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawMarkers:5.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawMarkers:5.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawMarkers:5.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawMarkers:5.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawMarkers:5.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawMarkers:5.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawMarkers:5.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:5.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawMarkers:5.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawMarkers:5.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawMarkers:5.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawMarkers:5.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawMarkers:5.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawMarkers:5.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawMarkers:5.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawMarkers:5.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawMarkers:5.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawMarkers:5.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawMarkers:5.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawMarkers:5.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawMarkers:5.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawMarkers:5.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawMarkers:5.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawMarkers:5.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawMarkers:5.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawMarkers:5.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawMarkers:5.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawMarkers:5.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawMarkers:5.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawMarkers:5.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawMarkers:5.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:5.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawMarkers:5.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawMarkers:5.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawMarkers:5.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawMarkers:5.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawMarkers:5.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawMarkers:5.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawMarkers:5.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawMarkers:5.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawMarkers:5.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawMarkers:5.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers:5.69'.
	self
		assert: c encompassingRectangle top
		equals: 50
		description: 'testDrawMarkers:5.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers:5.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers:5.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers:5.73'.
	self
		assert: c encompassingRectangle area
		equals: 200
		description: 'testDrawMarkers:5.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawMarkers:5.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawMarkers:5.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers:5.77'.
	self
		assert: c encompassingRectangle left
		equals: 50
		description: 'testDrawMarkers:5.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers:5.79'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawMarkers:5.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers:5.81'.
	self
		assert: c encompassingRectangle right
		equals: 250
		description: 'testDrawMarkers:5.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawMarkers:5.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawMarkers:5.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawMarkers:5.85'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawMarkers:5.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers:5.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 51
		description: 'testDrawMarkers:5.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers:5.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawMarkers:5.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers:5.91'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawMarkers:5.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawMarkers:5.93'.
	self assert: c view equals: nil description: 'testDrawMarkers:5.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawMarkers:5.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawMarkers:5.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawMarkers:5.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawMarkers:5.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawMarkers:5.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawMarkers:5.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawMarkers:5.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawMarkers:5.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawMarkers:5.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawMarkers:5.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawMarkers:5.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawMarkers:5.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawMarkers:5.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawMarkers:5.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawMarkers:5.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawMarkers:5.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawMarkers:5.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawMarkers:5.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawMarkers:5.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawMarkers:5.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawMarkers:5.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawMarkers:5.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawMarkers:5.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawMarkers:5.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawMarkers:5.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawMarkers:5.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawMarkers:5.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawMarkers:5.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawMarkers:5.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawMarkers:5.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:5.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawMarkers:5.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawMarkers:5.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawMarkers:5.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawMarkers:5.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawMarkers:5.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawMarkers:5.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawMarkers:5.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawMarkers:5.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawMarkers:5.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawMarkers:5.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawMarkers:5.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:5.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers:5.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawMarkers:5.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawMarkers:5.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawMarkers:5.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers:5.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawMarkers:5.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawMarkers:5.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawMarkers:5.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawMarkers:5.151'.
	self
		assert: tmp_q8GgbLTzvY12 class
		equals: TSAthensMorph
		description: 'testDrawMarkers:5.1'.
	self
		assert: tmp_q8GgbLTzvY12 isDrawing class
		equals: False
		description: 'testDrawMarkers:5.2'.
	self
		assert: tmp_q8GgbLTzvY12 isDrawing
		equals: false
		description: 'testDrawMarkers:5.3'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawMarkers:5.4'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawMarkers:5.5'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas showRectangles
		equals: false
		description: 'testDrawMarkers:5.6'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.7'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:5.8'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers:5.9'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas view
		equals: nil
		description: 'testDrawMarkers:5.10'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas isShape class
		equals: False
		description: 'testDrawMarkers:5.11'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas isShape
		equals: false
		description: 'testDrawMarkers:5.12'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.13'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers:5.14'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawMarkers:5.15'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas clearBackground
		equals: true
		description: 'testDrawMarkers:5.16'.
	self
		assert: tmp_q8GgbLTzvY12 renderer class
		equals: TSAthensRenderer
		description: 'testDrawMarkers:5.17'.
	self
		assert: tmp_q8GgbLTzvY12 renderer builder class
		equals: UndefinedObject
		description: 'testDrawMarkers:5.18'.
	self
		assert: tmp_q8GgbLTzvY12 renderer builder
		equals: nil
		description: 'testDrawMarkers:5.19'.
	self
		assert: tmp_q8GgbLTzvY12 surface class
		equals: AthensCairoSurface
		description: 'testDrawMarkers:5.20'.
	self
		assert: tmp_q8GgbLTzvY12 surface status class
		equals: SmallInteger
		description: 'testDrawMarkers:5.21'.
	self
		assert: tmp_q8GgbLTzvY12 surface status
		equals: 0
		description: 'testDrawMarkers:5.22'.
	self
		assert: tmp_q8GgbLTzvY12 surface width class
		equals: SmallInteger
		description: 'testDrawMarkers:5.23'.
	self
		assert: tmp_q8GgbLTzvY12 surface width
		equals: 50
		description: 'testDrawMarkers:5.24'.
	self
		assert: tmp_q8GgbLTzvY12 surface height class
		equals: SmallInteger
		description: 'testDrawMarkers:5.25'.
	self
		assert: tmp_q8GgbLTzvY12 surface height
		equals: 40
		description: 'testDrawMarkers:5.26'.
	self
		assert: tmp_q8GgbLTzvY12 surface isSuccess class
		equals: True
		description: 'testDrawMarkers:5.27'.
	self
		assert: tmp_q8GgbLTzvY12 surface isSuccess
		equals: true
		description: 'testDrawMarkers:5.28'.
	self
		assert: tmp_q8GgbLTzvY12 surface stride class
		equals: SmallInteger
		description: 'testDrawMarkers:5.29'.
	self
		assert: tmp_q8GgbLTzvY12 surface stride
		equals: 200
		description: 'testDrawMarkers:5.30'.
	self
		assert: tmp_q8GgbLTzvY12 canvas class
		equals: TSCanvas
		description: 'testDrawMarkers:5.31'.
	self
		assert: tmp_q8GgbLTzvY12 canvas showRectangles class
		equals: False
		description: 'testDrawMarkers:5.32'.
	self
		assert: tmp_q8GgbLTzvY12 canvas showRectangles
		equals: false
		description: 'testDrawMarkers:5.33'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.34'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:5.35'.
	self
		assert: tmp_q8GgbLTzvY12 canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers:5.36'.
	self
		assert: tmp_q8GgbLTzvY12 canvas view
		equals: nil
		description: 'testDrawMarkers:5.37'.
	self
		assert: tmp_q8GgbLTzvY12 canvas isShape class
		equals: False
		description: 'testDrawMarkers:5.38'.
	self
		assert: tmp_q8GgbLTzvY12 canvas isShape
		equals: false
		description: 'testDrawMarkers:5.39'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:5.40'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers:5.41'.
	self
		assert: tmp_q8GgbLTzvY12 canvas clearBackground class
		equals: True
		description: 'testDrawMarkers:5.42'.
	self
		assert: tmp_q8GgbLTzvY12 canvas clearBackground
		equals: true
		description: 'testDrawMarkers:5.43'.
	self
		assert: tmp_q8GgbLTzvY12 wantsSteps class
		equals: False
		description: 'testDrawMarkers:5.44'.
	self
		assert: tmp_q8GgbLTzvY12 wantsSteps
		equals: false
		description: 'testDrawMarkers:5.45'.
	self
		assert: tmp_q8GgbLTzvY12 isDragging class
		equals: False
		description: 'testDrawMarkers:5.46'.
	self
		assert: tmp_q8GgbLTzvY12 isDragging
		equals: false
		description: 'testDrawMarkers:5.47'.
	tmp_q8GgbLTzvY12 drawOnMockCanvas.
	self
		assert: tmp_q8GgbLTzvY12 class
		equals: TSAthensMorph
		description: 'testDrawMarkers:6.1'.
	self
		assert: tmp_q8GgbLTzvY12 isDrawing class
		equals: False
		description: 'testDrawMarkers:6.2'.
	self
		assert: tmp_q8GgbLTzvY12 isDrawing
		equals: false
		description: 'testDrawMarkers:6.3'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawMarkers:6.4'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawMarkers:6.5'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas showRectangles
		equals: false
		description: 'testDrawMarkers:6.6'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:6.7'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:6.8'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers:6.9'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas view
		equals: nil
		description: 'testDrawMarkers:6.10'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas isShape class
		equals: False
		description: 'testDrawMarkers:6.11'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas isShape
		equals: false
		description: 'testDrawMarkers:6.12'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:6.13'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers:6.14'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawMarkers:6.15'.
	self
		assert: tmp_q8GgbLTzvY12 trachelCanvas clearBackground
		equals: true
		description: 'testDrawMarkers:6.16'.
	self
		assert: tmp_q8GgbLTzvY12 renderer class
		equals: TSAthensRenderer
		description: 'testDrawMarkers:6.17'.
	self
		assert: tmp_q8GgbLTzvY12 renderer builder class
		equals: UndefinedObject
		description: 'testDrawMarkers:6.18'.
	self
		assert: tmp_q8GgbLTzvY12 renderer builder
		equals: nil
		description: 'testDrawMarkers:6.19'.
	self
		assert: tmp_q8GgbLTzvY12 surface class
		equals: AthensCairoSurface
		description: 'testDrawMarkers:6.20'.
	self
		assert: tmp_q8GgbLTzvY12 surface status class
		equals: SmallInteger
		description: 'testDrawMarkers:6.21'.
	self
		assert: tmp_q8GgbLTzvY12 surface status
		equals: 0
		description: 'testDrawMarkers:6.22'.
	self
		assert: tmp_q8GgbLTzvY12 surface width class
		equals: SmallInteger
		description: 'testDrawMarkers:6.23'.
	self
		assert: tmp_q8GgbLTzvY12 surface width
		equals: 50
		description: 'testDrawMarkers:6.24'.
	self
		assert: tmp_q8GgbLTzvY12 surface height class
		equals: SmallInteger
		description: 'testDrawMarkers:6.25'.
	self
		assert: tmp_q8GgbLTzvY12 surface height
		equals: 40
		description: 'testDrawMarkers:6.26'.
	self
		assert: tmp_q8GgbLTzvY12 surface isSuccess class
		equals: True
		description: 'testDrawMarkers:6.27'.
	self
		assert: tmp_q8GgbLTzvY12 surface isSuccess
		equals: true
		description: 'testDrawMarkers:6.28'.
	self
		assert: tmp_q8GgbLTzvY12 surface stride class
		equals: SmallInteger
		description: 'testDrawMarkers:6.29'.
	self
		assert: tmp_q8GgbLTzvY12 surface stride
		equals: 200
		description: 'testDrawMarkers:6.30'.
	self
		assert: tmp_q8GgbLTzvY12 canvas class
		equals: TSCanvas
		description: 'testDrawMarkers:6.31'.
	self
		assert: tmp_q8GgbLTzvY12 canvas showRectangles class
		equals: False
		description: 'testDrawMarkers:6.32'.
	self
		assert: tmp_q8GgbLTzvY12 canvas showRectangles
		equals: false
		description: 'testDrawMarkers:6.33'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:6.34'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawMarkers:6.35'.
	self
		assert: tmp_q8GgbLTzvY12 canvas view class
		equals: UndefinedObject
		description: 'testDrawMarkers:6.36'.
	self
		assert: tmp_q8GgbLTzvY12 canvas view
		equals: nil
		description: 'testDrawMarkers:6.37'.
	self
		assert: tmp_q8GgbLTzvY12 canvas isShape class
		equals: False
		description: 'testDrawMarkers:6.38'.
	self
		assert: tmp_q8GgbLTzvY12 canvas isShape
		equals: false
		description: 'testDrawMarkers:6.39'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawMarkers:6.40'.
	self
		assert: tmp_q8GgbLTzvY12 canvas numberOfShapes
		equals: 1
		description: 'testDrawMarkers:6.41'.
	self
		assert: tmp_q8GgbLTzvY12 canvas clearBackground class
		equals: True
		description: 'testDrawMarkers:6.42'.
	self
		assert: tmp_q8GgbLTzvY12 canvas clearBackground
		equals: true
		description: 'testDrawMarkers:6.43'.
	self
		assert: tmp_q8GgbLTzvY12 wantsSteps class
		equals: False
		description: 'testDrawMarkers:6.44'.
	self
		assert: tmp_q8GgbLTzvY12 wantsSteps
		equals: false
		description: 'testDrawMarkers:6.45'.
	self
		assert: tmp_q8GgbLTzvY12 isDragging class
		equals: False
		description: 'testDrawMarkers:6.46'.
	self
		assert: tmp_q8GgbLTzvY12 isDragging
		equals: false
		description: 'testDrawMarkers:6.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testDrawSVGLine [
	<madeBySmallAmp>
	| tmp_Bu77k8NJhQ5 |
	c
		addShape:
			(TSSVGPathLine new
				strokeColor: Color red;
				svgPath: [ :a :b | 'M 100 100 L 200 200' ];
				width: 2).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawSVGLine:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.33'.
	self assert: c morph equals: nil description: 'testDrawSVGLine:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawSVGLine:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawSVGLine:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawSVGLine:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000
		description: 'testDrawSVGLine:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100
		description: 'testDrawSVGLine:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 100
		description: 'testDrawSVGLine:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 100
		description: 'testDrawSVGLine:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100
		description: 'testDrawSVGLine:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.90'.
	self assert: c view equals: nil description: 'testDrawSVGLine:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawSVGLine:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawSVGLine:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawSVGLine:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawSVGLine:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawSVGLine:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine:1.152'.
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
		description: 'testDrawSVGLine:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.33'.
	self assert: c morph equals: nil description: 'testDrawSVGLine:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawSVGLine:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 2
		description: 'testDrawSVGLine:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine:2.63'.
	self
		assert: c shapes size
		equals: 2
		description: 'testDrawSVGLine:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 40000
		description: 'testDrawSVGLine:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawSVGLine:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 200
		description: 'testDrawSVGLine:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 200
		description: 'testDrawSVGLine:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 200
		description: 'testDrawSVGLine:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.90'.
	self assert: c view equals: nil description: 'testDrawSVGLine:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawSVGLine:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 2
		description: 'testDrawSVGLine:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.134'.
	self
		assert: c numberOfShapes
		equals: 2
		description: 'testDrawSVGLine:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawSVGLine:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 2
		description: 'testDrawSVGLine:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine:2.152'.
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
		description: 'testDrawSVGLine:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine:3.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:3.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.33'.
	self assert: c morph equals: nil description: 'testDrawSVGLine:3.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine:3.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine:3.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine:3.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine:3.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine:3.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine:3.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine:3.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine:3.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine:3.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine:3.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine:3.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine:3.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine:3.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine:3.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:3.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawSVGLine:3.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine:3.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine:3.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine:3.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.59'.
	self
		assert: c parent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:3.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine:3.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine:3.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine:3.63'.
	self
		assert: c shapes size
		equals: 3
		description: 'testDrawSVGLine:3.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:3.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine:3.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:3.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:3.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.70'.
	self
		assert: c encompassingRectangle area
		equals: 40000
		description: 'testDrawSVGLine:3.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:3.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine:3.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine:3.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.76'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawSVGLine:3.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.78'.
	self
		assert: c encompassingRectangle right
		equals: 200
		description: 'testDrawSVGLine:3.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:3.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine:3.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:3.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine:3.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 200
		description: 'testDrawSVGLine:3.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:3.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:3.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.88'.
	self
		assert: c encompassingRectangle height
		equals: 200
		description: 'testDrawSVGLine:3.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.90'.
	self assert: c view equals: nil description: 'testDrawSVGLine:3.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine:3.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine:3.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:3.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine:3.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:3.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:3.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine:3.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:3.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine:3.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine:3.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine:3.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine:3.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:3.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine:3.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:3.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine:3.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine:3.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:3.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:3.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine:3.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine:3.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine:3.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine:3.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:3.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawSVGLine:3.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine:3.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine:3.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine:3.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.130'.
	self
		assert: c topParent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:3.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine:3.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine:3.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.134'.
	self
		assert: c numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:3.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:3.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:3.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine:3.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:3.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawSVGLine:3.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:3.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine:3.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine:3.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine:3.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:3.147'.
	self
		assert: c canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:3.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:3.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine:3.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine:3.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine:3.152'.
	tmp_Bu77k8NJhQ5 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawSVGLine:4.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawSVGLine:4.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawSVGLine:4.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawSVGLine:4.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawSVGLine:4.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawSVGLine:4.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawSVGLine:4.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawSVGLine:4.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawSVGLine:4.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawSVGLine:4.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawSVGLine:4.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawSVGLine:4.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawSVGLine:4.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawSVGLine:4.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawSVGLine:4.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawSVGLine:4.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawSVGLine:4.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawSVGLine:4.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawSVGLine:4.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:4.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawSVGLine:4.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawSVGLine:4.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawSVGLine:4.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawSVGLine:4.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawSVGLine:4.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawSVGLine:4.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawSVGLine:4.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawSVGLine:4.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawSVGLine:4.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawSVGLine:4.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawSVGLine:4.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawSVGLine:4.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawSVGLine:4.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawSVGLine:4.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawSVGLine:4.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawSVGLine:4.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawSVGLine:4.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawSVGLine:4.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawSVGLine:4.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawSVGLine:4.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawSVGLine:4.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:4.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:4.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawSVGLine:4.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawSVGLine:4.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawSVGLine:4.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.62'.
	self
		assert: c parent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:4.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawSVGLine:4.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawSVGLine:4.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawSVGLine:4.66'.
	self
		assert: c shapes size
		equals: 3
		description: 'testDrawSVGLine:4.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:4.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawSVGLine:4.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:4.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:4.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.73'.
	self
		assert: c encompassingRectangle area
		equals: 40000
		description: 'testDrawSVGLine:4.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:4.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawSVGLine:4.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawSVGLine:4.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.79'.
	self
		assert: c encompassingRectangle width
		equals: 200
		description: 'testDrawSVGLine:4.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.81'.
	self
		assert: c encompassingRectangle right
		equals: 200
		description: 'testDrawSVGLine:4.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:4.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawSVGLine:4.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:4.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawSVGLine:4.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 200
		description: 'testDrawSVGLine:4.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:4.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:4.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.91'.
	self
		assert: c encompassingRectangle height
		equals: 200
		description: 'testDrawSVGLine:4.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:4.93'.
	self assert: c view equals: nil description: 'testDrawSVGLine:4.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawSVGLine:4.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawSVGLine:4.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawSVGLine:4.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawSVGLine:4.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawSVGLine:4.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawSVGLine:4.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawSVGLine:4.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawSVGLine:4.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawSVGLine:4.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawSVGLine:4.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawSVGLine:4.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawSVGLine:4.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawSVGLine:4.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawSVGLine:4.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawSVGLine:4.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawSVGLine:4.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawSVGLine:4.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawSVGLine:4.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawSVGLine:4.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawSVGLine:4.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawSVGLine:4.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawSVGLine:4.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawSVGLine:4.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:4.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:4.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawSVGLine:4.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawSVGLine:4.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawSVGLine:4.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.131'.
	self
		assert: c topParent numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:4.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawSVGLine:4.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawSVGLine:4.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.135'.
	self
		assert: c numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:4.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:4.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:4.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawSVGLine:4.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:4.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:4.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawSVGLine:4.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawSVGLine:4.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawSVGLine:4.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.146'.
	self
		assert: c canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:4.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:4.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawSVGLine:4.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawSVGLine:4.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawSVGLine:4.151'.
	self
		assert: tmp_Bu77k8NJhQ5 class
		equals: TSAthensMorph
		description: 'testDrawSVGLine:4.1'.
	self
		assert: tmp_Bu77k8NJhQ5 isDrawing class
		equals: False
		description: 'testDrawSVGLine:4.2'.
	self
		assert: tmp_Bu77k8NJhQ5 isDrawing
		equals: false
		description: 'testDrawSVGLine:4.3'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:4.4'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:4.5'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawSVGLine:4.6'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.7'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:4.8'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:4.9'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas view
		equals: nil
		description: 'testDrawSVGLine:4.10'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas isShape class
		equals: False
		description: 'testDrawSVGLine:4.11'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas isShape
		equals: false
		description: 'testDrawSVGLine:4.12'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.13'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:4.14'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:4.15'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawSVGLine:4.16'.
	self
		assert: tmp_Bu77k8NJhQ5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawSVGLine:4.17'.
	self
		assert: tmp_Bu77k8NJhQ5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawSVGLine:4.18'.
	self
		assert: tmp_Bu77k8NJhQ5 renderer builder
		equals: nil
		description: 'testDrawSVGLine:4.19'.
	self
		assert: tmp_Bu77k8NJhQ5 surface class
		equals: AthensCairoSurface
		description: 'testDrawSVGLine:4.20'.
	self
		assert: tmp_Bu77k8NJhQ5 surface status class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.21'.
	self
		assert: tmp_Bu77k8NJhQ5 surface status
		equals: 0
		description: 'testDrawSVGLine:4.22'.
	self
		assert: tmp_Bu77k8NJhQ5 surface width class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.23'.
	self
		assert: tmp_Bu77k8NJhQ5 surface width
		equals: 50
		description: 'testDrawSVGLine:4.24'.
	self
		assert: tmp_Bu77k8NJhQ5 surface height class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.25'.
	self
		assert: tmp_Bu77k8NJhQ5 surface height
		equals: 40
		description: 'testDrawSVGLine:4.26'.
	self
		assert: tmp_Bu77k8NJhQ5 surface isSuccess class
		equals: True
		description: 'testDrawSVGLine:4.27'.
	self
		assert: tmp_Bu77k8NJhQ5 surface isSuccess
		equals: true
		description: 'testDrawSVGLine:4.28'.
	self
		assert: tmp_Bu77k8NJhQ5 surface stride class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.29'.
	self
		assert: tmp_Bu77k8NJhQ5 surface stride
		equals: 200
		description: 'testDrawSVGLine:4.30'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:4.31'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:4.32'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas showRectangles
		equals: false
		description: 'testDrawSVGLine:4.33'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.34'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:4.35'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:4.36'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas view
		equals: nil
		description: 'testDrawSVGLine:4.37'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas isShape class
		equals: False
		description: 'testDrawSVGLine:4.38'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas isShape
		equals: false
		description: 'testDrawSVGLine:4.39'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:4.40'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:4.41'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:4.42'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas clearBackground
		equals: true
		description: 'testDrawSVGLine:4.43'.
	self
		assert: tmp_Bu77k8NJhQ5 wantsSteps class
		equals: False
		description: 'testDrawSVGLine:4.44'.
	self
		assert: tmp_Bu77k8NJhQ5 wantsSteps
		equals: false
		description: 'testDrawSVGLine:4.45'.
	self
		assert: tmp_Bu77k8NJhQ5 isDragging class
		equals: False
		description: 'testDrawSVGLine:4.46'.
	self
		assert: tmp_Bu77k8NJhQ5 isDragging
		equals: false
		description: 'testDrawSVGLine:4.47'.
	tmp_Bu77k8NJhQ5 drawOnMockCanvas.
	self
		assert: tmp_Bu77k8NJhQ5 class
		equals: TSAthensMorph
		description: 'testDrawSVGLine:5.1'.
	self
		assert: tmp_Bu77k8NJhQ5 isDrawing class
		equals: False
		description: 'testDrawSVGLine:5.2'.
	self
		assert: tmp_Bu77k8NJhQ5 isDrawing
		equals: false
		description: 'testDrawSVGLine:5.3'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:5.4'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:5.5'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawSVGLine:5.6'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.7'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:5.8'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:5.9'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas view
		equals: nil
		description: 'testDrawSVGLine:5.10'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas isShape class
		equals: False
		description: 'testDrawSVGLine:5.11'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas isShape
		equals: false
		description: 'testDrawSVGLine:5.12'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.13'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:5.14'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:5.15'.
	self
		assert: tmp_Bu77k8NJhQ5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawSVGLine:5.16'.
	self
		assert: tmp_Bu77k8NJhQ5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawSVGLine:5.17'.
	self
		assert: tmp_Bu77k8NJhQ5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawSVGLine:5.18'.
	self
		assert: tmp_Bu77k8NJhQ5 renderer builder
		equals: nil
		description: 'testDrawSVGLine:5.19'.
	self
		assert: tmp_Bu77k8NJhQ5 surface class
		equals: AthensCairoSurface
		description: 'testDrawSVGLine:5.20'.
	self
		assert: tmp_Bu77k8NJhQ5 surface status class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.21'.
	self
		assert: tmp_Bu77k8NJhQ5 surface status
		equals: 0
		description: 'testDrawSVGLine:5.22'.
	self
		assert: tmp_Bu77k8NJhQ5 surface width class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.23'.
	self
		assert: tmp_Bu77k8NJhQ5 surface width
		equals: 50
		description: 'testDrawSVGLine:5.24'.
	self
		assert: tmp_Bu77k8NJhQ5 surface height class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.25'.
	self
		assert: tmp_Bu77k8NJhQ5 surface height
		equals: 40
		description: 'testDrawSVGLine:5.26'.
	self
		assert: tmp_Bu77k8NJhQ5 surface isSuccess class
		equals: True
		description: 'testDrawSVGLine:5.27'.
	self
		assert: tmp_Bu77k8NJhQ5 surface isSuccess
		equals: true
		description: 'testDrawSVGLine:5.28'.
	self
		assert: tmp_Bu77k8NJhQ5 surface stride class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.29'.
	self
		assert: tmp_Bu77k8NJhQ5 surface stride
		equals: 200
		description: 'testDrawSVGLine:5.30'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas class
		equals: TSCanvas
		description: 'testDrawSVGLine:5.31'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas showRectangles class
		equals: False
		description: 'testDrawSVGLine:5.32'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas showRectangles
		equals: false
		description: 'testDrawSVGLine:5.33'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.34'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawSVGLine:5.35'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas view class
		equals: UndefinedObject
		description: 'testDrawSVGLine:5.36'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas view
		equals: nil
		description: 'testDrawSVGLine:5.37'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas isShape class
		equals: False
		description: 'testDrawSVGLine:5.38'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas isShape
		equals: false
		description: 'testDrawSVGLine:5.39'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawSVGLine:5.40'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas numberOfShapes
		equals: 3
		description: 'testDrawSVGLine:5.41'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas clearBackground class
		equals: True
		description: 'testDrawSVGLine:5.42'.
	self
		assert: tmp_Bu77k8NJhQ5 canvas clearBackground
		equals: true
		description: 'testDrawSVGLine:5.43'.
	self
		assert: tmp_Bu77k8NJhQ5 wantsSteps class
		equals: False
		description: 'testDrawSVGLine:5.44'.
	self
		assert: tmp_Bu77k8NJhQ5 wantsSteps
		equals: false
		description: 'testDrawSVGLine:5.45'.
	self
		assert: tmp_Bu77k8NJhQ5 isDragging class
		equals: False
		description: 'testDrawSVGLine:5.46'.
	self
		assert: tmp_Bu77k8NJhQ5 isDragging
		equals: false
		description: 'testDrawSVGLine:5.47'
]

{ #category : #'as yet unclassified' }
TSLinesTestAmpTest >> testPolyline [
	<madeBySmallAmp>
	| line |
	line := TSPolyline new.
	self
		assert: line class
		equals: TSPolyline
		description: 'testPolyline:1.1'.
	self
		assert: line cornerRadii class
		equals: SmallInteger
		description: 'testPolyline:1.2'.
	self
		assert: line cornerRadii
		equals: 0
		description: 'testPolyline:1.3'.
	line
		controlPoints:
			{(0 @ 0).
			(0 @ 100)}.
	self
		assert: line class
		equals: TSPolyline
		description: 'testPolyline:2.1'.
	self
		assert: line cornerRadii class
		equals: SmallInteger
		description: 'testPolyline:2.2'.
	self
		assert: line cornerRadii
		equals: 0
		description: 'testPolyline:2.3'
]
