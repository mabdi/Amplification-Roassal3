Class {
	#name : #TSLabelTestAmpTest,
	#superclass : #TSCanvasTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> testDrawBorderLabel [
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
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBorderLabel:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBorderLabel:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBorderLabel:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBorderLabel:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBorderLabel:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBorderLabel:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBorderLabel:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBorderLabel:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBorderLabel:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBorderLabel:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBorderLabel:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBorderLabel:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBorderLabel:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBorderLabel:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBorderLabel:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBorderLabel:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBorderLabel:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBorderLabel:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawBorderLabel:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBorderLabel:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBorderLabel:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBorderLabel:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBorderLabel:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBorderLabel:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBorderLabel:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBorderLabel:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBorderLabel:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBorderLabel:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBorderLabel:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBorderLabel:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBorderLabel:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBorderLabel:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBorderLabel:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawBorderLabel:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBorderLabel:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBorderLabel:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBorderLabel:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBorderLabel:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBorderLabel:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBorderLabel:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBorderLabel:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.66'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawBorderLabel:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawBorderLabel:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBorderLabel:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.74'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawBorderLabel:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawBorderLabel:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.78'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawBorderLabel:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBorderLabel:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawBorderLabel:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawBorderLabel:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawBorderLabel:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawBorderLabel:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBorderLabel:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBorderLabel:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBorderLabel:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBorderLabel:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBorderLabel:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBorderLabel:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBorderLabel:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBorderLabel:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBorderLabel:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBorderLabel:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBorderLabel:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBorderLabel:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBorderLabel:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBorderLabel:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBorderLabel:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBorderLabel:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBorderLabel:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawBorderLabel:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBorderLabel:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBorderLabel:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBorderLabel:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBorderLabel:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBorderLabel:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawBorderLabel:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBorderLabel:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBorderLabel:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBorderLabel:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBorderLabel:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBorderLabel:1.152'.
	tmp_boph7cQm3e3 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBorderLabel:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBorderLabel:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBorderLabel:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBorderLabel:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBorderLabel:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBorderLabel:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBorderLabel:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBorderLabel:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBorderLabel:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBorderLabel:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBorderLabel:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBorderLabel:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBorderLabel:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBorderLabel:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBorderLabel:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBorderLabel:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBorderLabel:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBorderLabel:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawBorderLabel:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawBorderLabel:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawBorderLabel:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawBorderLabel:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawBorderLabel:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawBorderLabel:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawBorderLabel:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBorderLabel:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBorderLabel:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBorderLabel:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBorderLabel:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBorderLabel:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBorderLabel:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBorderLabel:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBorderLabel:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBorderLabel:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBorderLabel:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBorderLabel:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBorderLabel:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBorderLabel:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBorderLabel:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBorderLabel:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBorderLabel:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBorderLabel:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBorderLabel:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBorderLabel:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBorderLabel:2.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBorderLabel:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.69'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawBorderLabel:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawBorderLabel:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBorderLabel:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.77'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawBorderLabel:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawBorderLabel:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.81'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawBorderLabel:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBorderLabel:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawBorderLabel:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawBorderLabel:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawBorderLabel:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawBorderLabel:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawBorderLabel:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:2.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBorderLabel:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBorderLabel:2.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBorderLabel:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBorderLabel:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBorderLabel:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBorderLabel:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBorderLabel:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBorderLabel:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBorderLabel:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBorderLabel:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBorderLabel:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBorderLabel:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBorderLabel:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBorderLabel:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBorderLabel:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBorderLabel:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBorderLabel:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBorderLabel:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBorderLabel:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBorderLabel:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBorderLabel:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBorderLabel:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBorderLabel:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBorderLabel:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBorderLabel:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBorderLabel:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBorderLabel:2.151'.
	self
		assert: tmp_boph7cQm3e3 class
		equals: TSAthensMorph
		description: 'testDrawBorderLabel:2.1'.
	self
		assert: tmp_boph7cQm3e3 isDrawing class
		equals: False
		description: 'testDrawBorderLabel:2.2'.
	self
		assert: tmp_boph7cQm3e3 isDrawing
		equals: false
		description: 'testDrawBorderLabel:2.3'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel:2.4'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel:2.5'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBorderLabel:2.6'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.7'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:2.8'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:2.9'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas view
		equals: nil
		description: 'testDrawBorderLabel:2.10'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas isShape class
		equals: False
		description: 'testDrawBorderLabel:2.11'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas isShape
		equals: false
		description: 'testDrawBorderLabel:2.12'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.13'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:2.14'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel:2.15'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBorderLabel:2.16'.
	self
		assert: tmp_boph7cQm3e3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBorderLabel:2.17'.
	self
		assert: tmp_boph7cQm3e3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:2.18'.
	self
		assert: tmp_boph7cQm3e3 renderer builder
		equals: nil
		description: 'testDrawBorderLabel:2.19'.
	self
		assert: tmp_boph7cQm3e3 surface class
		equals: AthensCairoSurface
		description: 'testDrawBorderLabel:2.20'.
	self
		assert: tmp_boph7cQm3e3 surface status class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.21'.
	self
		assert: tmp_boph7cQm3e3 surface status
		equals: 0
		description: 'testDrawBorderLabel:2.22'.
	self
		assert: tmp_boph7cQm3e3 surface width class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.23'.
	self
		assert: tmp_boph7cQm3e3 surface width
		equals: 50
		description: 'testDrawBorderLabel:2.24'.
	self
		assert: tmp_boph7cQm3e3 surface height class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.25'.
	self
		assert: tmp_boph7cQm3e3 surface height
		equals: 40
		description: 'testDrawBorderLabel:2.26'.
	self
		assert: tmp_boph7cQm3e3 surface isSuccess class
		equals: True
		description: 'testDrawBorderLabel:2.27'.
	self
		assert: tmp_boph7cQm3e3 surface isSuccess
		equals: true
		description: 'testDrawBorderLabel:2.28'.
	self
		assert: tmp_boph7cQm3e3 surface stride class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.29'.
	self
		assert: tmp_boph7cQm3e3 surface stride
		equals: 200
		description: 'testDrawBorderLabel:2.30'.
	self
		assert: tmp_boph7cQm3e3 canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel:2.31'.
	self
		assert: tmp_boph7cQm3e3 canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel:2.32'.
	self
		assert: tmp_boph7cQm3e3 canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel:2.33'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.34'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:2.35'.
	self
		assert: tmp_boph7cQm3e3 canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:2.36'.
	self
		assert: tmp_boph7cQm3e3 canvas view
		equals: nil
		description: 'testDrawBorderLabel:2.37'.
	self
		assert: tmp_boph7cQm3e3 canvas isShape class
		equals: False
		description: 'testDrawBorderLabel:2.38'.
	self
		assert: tmp_boph7cQm3e3 canvas isShape
		equals: false
		description: 'testDrawBorderLabel:2.39'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:2.40'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:2.41'.
	self
		assert: tmp_boph7cQm3e3 canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel:2.42'.
	self
		assert: tmp_boph7cQm3e3 canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel:2.43'.
	self
		assert: tmp_boph7cQm3e3 wantsSteps class
		equals: False
		description: 'testDrawBorderLabel:2.44'.
	self
		assert: tmp_boph7cQm3e3 wantsSteps
		equals: false
		description: 'testDrawBorderLabel:2.45'.
	self
		assert: tmp_boph7cQm3e3 isDragging class
		equals: False
		description: 'testDrawBorderLabel:2.46'.
	self
		assert: tmp_boph7cQm3e3 isDragging
		equals: false
		description: 'testDrawBorderLabel:2.47'.
	tmp_boph7cQm3e3 drawOnMockCanvas.
	self
		assert: tmp_boph7cQm3e3 class
		equals: TSAthensMorph
		description: 'testDrawBorderLabel:3.1'.
	self
		assert: tmp_boph7cQm3e3 isDrawing class
		equals: False
		description: 'testDrawBorderLabel:3.2'.
	self
		assert: tmp_boph7cQm3e3 isDrawing
		equals: false
		description: 'testDrawBorderLabel:3.3'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel:3.4'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel:3.5'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBorderLabel:3.6'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.7'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:3.8'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:3.9'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas view
		equals: nil
		description: 'testDrawBorderLabel:3.10'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas isShape class
		equals: False
		description: 'testDrawBorderLabel:3.11'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas isShape
		equals: false
		description: 'testDrawBorderLabel:3.12'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.13'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:3.14'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel:3.15'.
	self
		assert: tmp_boph7cQm3e3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBorderLabel:3.16'.
	self
		assert: tmp_boph7cQm3e3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBorderLabel:3.17'.
	self
		assert: tmp_boph7cQm3e3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:3.18'.
	self
		assert: tmp_boph7cQm3e3 renderer builder
		equals: nil
		description: 'testDrawBorderLabel:3.19'.
	self
		assert: tmp_boph7cQm3e3 surface class
		equals: AthensCairoSurface
		description: 'testDrawBorderLabel:3.20'.
	self
		assert: tmp_boph7cQm3e3 surface status class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.21'.
	self
		assert: tmp_boph7cQm3e3 surface status
		equals: 0
		description: 'testDrawBorderLabel:3.22'.
	self
		assert: tmp_boph7cQm3e3 surface width class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.23'.
	self
		assert: tmp_boph7cQm3e3 surface width
		equals: 50
		description: 'testDrawBorderLabel:3.24'.
	self
		assert: tmp_boph7cQm3e3 surface height class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.25'.
	self
		assert: tmp_boph7cQm3e3 surface height
		equals: 40
		description: 'testDrawBorderLabel:3.26'.
	self
		assert: tmp_boph7cQm3e3 surface isSuccess class
		equals: True
		description: 'testDrawBorderLabel:3.27'.
	self
		assert: tmp_boph7cQm3e3 surface isSuccess
		equals: true
		description: 'testDrawBorderLabel:3.28'.
	self
		assert: tmp_boph7cQm3e3 surface stride class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.29'.
	self
		assert: tmp_boph7cQm3e3 surface stride
		equals: 200
		description: 'testDrawBorderLabel:3.30'.
	self
		assert: tmp_boph7cQm3e3 canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel:3.31'.
	self
		assert: tmp_boph7cQm3e3 canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel:3.32'.
	self
		assert: tmp_boph7cQm3e3 canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel:3.33'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.34'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel:3.35'.
	self
		assert: tmp_boph7cQm3e3 canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel:3.36'.
	self
		assert: tmp_boph7cQm3e3 canvas view
		equals: nil
		description: 'testDrawBorderLabel:3.37'.
	self
		assert: tmp_boph7cQm3e3 canvas isShape class
		equals: False
		description: 'testDrawBorderLabel:3.38'.
	self
		assert: tmp_boph7cQm3e3 canvas isShape
		equals: false
		description: 'testDrawBorderLabel:3.39'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel:3.40'.
	self
		assert: tmp_boph7cQm3e3 canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel:3.41'.
	self
		assert: tmp_boph7cQm3e3 canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel:3.42'.
	self
		assert: tmp_boph7cQm3e3 canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel:3.43'.
	self
		assert: tmp_boph7cQm3e3 wantsSteps class
		equals: False
		description: 'testDrawBorderLabel:3.44'.
	self
		assert: tmp_boph7cQm3e3 wantsSteps
		equals: false
		description: 'testDrawBorderLabel:3.45'.
	self
		assert: tmp_boph7cQm3e3 isDragging class
		equals: False
		description: 'testDrawBorderLabel:3.46'.
	self
		assert: tmp_boph7cQm3e3 isDragging
		equals: false
		description: 'testDrawBorderLabel:3.47'
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> testDrawLabel [
	<madeBySmallAmp>
	| tmp_MoPeJ6Ewvf3 |
	c
		addShape:
			(TSLabel new
				color: (Color purple alpha: 0.5);
				position: -50 @ 0;
				text: 'Hello world!';
				yourself).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawLabel:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLabel:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLabel:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLabel:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLabel:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLabel:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLabel:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLabel:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLabel:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawLabel:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLabel:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLabel:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLabel:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLabel:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawLabel:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLabel:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLabel:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLabel:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLabel:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLabel:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLabel:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLabel:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLabel:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLabel:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLabel:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLabel:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLabel:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLabel:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawLabel:1.33'.
	self assert: c morph equals: nil description: 'testDrawLabel:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLabel:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLabel:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLabel:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLabel:1.38'.
	self assert: c extent y equals: 500 description: 'testDrawLabel:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLabel:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLabel:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLabel:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLabel:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLabel:1.44'.
	self assert: c extent x equals: 500 description: 'testDrawLabel:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLabel:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLabel:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLabel:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLabel:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLabel:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawLabel:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawLabel:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLabel:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLabel:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLabel:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLabel:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLabel:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLabel:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLabel:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLabel:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawLabel:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLabel:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawLabel:1.66'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawLabel:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawLabel:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawLabel:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLabel:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLabel:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawLabel:1.74'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawLabel:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawLabel:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawLabel:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawLabel:1.78'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawLabel:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLabel:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLabel:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawLabel:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawLabel:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawLabel:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawLabel:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLabel:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLabel:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawLabel:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawLabel:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLabel:1.90'.
	self assert: c view equals: nil description: 'testDrawLabel:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLabel:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawLabel:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLabel:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLabel:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLabel:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLabel:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLabel:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLabel:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLabel:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLabel:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLabel:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLabel:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLabel:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLabel:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLabel:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLabel:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLabel:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLabel:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLabel:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLabel:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLabel:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLabel:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLabel:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLabel:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLabel:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLabel:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLabel:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLabel:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawLabel:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawLabel:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLabel:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLabel:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLabel:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLabel:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLabel:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLabel:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLabel:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLabel:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLabel:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLabel:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLabel:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawLabel:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawLabel:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLabel:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLabel:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLabel:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLabel:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLabel:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLabel:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLabel:1.152'.
	tmp_MoPeJ6Ewvf3 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawLabel:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLabel:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLabel:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLabel:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLabel:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLabel:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLabel:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLabel:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLabel:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawLabel:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLabel:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLabel:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLabel:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLabel:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawLabel:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLabel:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLabel:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLabel:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLabel:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLabel:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLabel:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLabel:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLabel:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLabel:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLabel:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLabel:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLabel:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLabel:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawLabel:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawLabel:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawLabel:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawLabel:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawLabel:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawLabel:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawLabel:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLabel:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLabel:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLabel:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLabel:2.43'.
	self assert: c extent y equals: 500 description: 'testDrawLabel:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLabel:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLabel:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLabel:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLabel:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLabel:2.49'.
	self assert: c extent x equals: 500 description: 'testDrawLabel:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLabel:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLabel:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLabel:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLabel:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLabel:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLabel:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLabel:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLabel:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLabel:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLabel:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLabel:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLabel:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLabel:2.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawLabel:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLabel:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawLabel:2.69'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawLabel:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawLabel:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawLabel:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLabel:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLabel:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawLabel:2.77'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawLabel:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawLabel:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawLabel:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawLabel:2.81'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawLabel:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLabel:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLabel:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawLabel:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawLabel:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawLabel:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawLabel:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLabel:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLabel:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawLabel:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawLabel:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLabel:2.93'.
	self assert: c view equals: nil description: 'testDrawLabel:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLabel:2.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawLabel:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLabel:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLabel:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLabel:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLabel:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLabel:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLabel:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLabel:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLabel:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLabel:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLabel:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLabel:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLabel:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLabel:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLabel:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLabel:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLabel:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLabel:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLabel:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLabel:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLabel:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLabel:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLabel:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLabel:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLabel:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLabel:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLabel:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLabel:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLabel:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLabel:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLabel:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLabel:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLabel:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLabel:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLabel:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLabel:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLabel:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLabel:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLabel:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLabel:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLabel:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLabel:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLabel:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLabel:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLabel:2.151'.
	self
		assert: tmp_MoPeJ6Ewvf3 class
		equals: TSAthensMorph
		description: 'testDrawLabel:2.1'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDrawing class
		equals: False
		description: 'testDrawLabel:2.2'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDrawing
		equals: false
		description: 'testDrawLabel:2.3'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLabel:2.4'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLabel:2.5'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLabel:2.6'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.7'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:2.8'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLabel:2.9'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas view
		equals: nil
		description: 'testDrawLabel:2.10'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLabel:2.11'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas isShape
		equals: false
		description: 'testDrawLabel:2.12'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.13'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLabel:2.14'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLabel:2.15'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLabel:2.16'.
	self
		assert: tmp_MoPeJ6Ewvf3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLabel:2.17'.
	self
		assert: tmp_MoPeJ6Ewvf3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLabel:2.18'.
	self
		assert: tmp_MoPeJ6Ewvf3 renderer builder
		equals: nil
		description: 'testDrawLabel:2.19'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLabel:2.20'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface status class
		equals: SmallInteger
		description: 'testDrawLabel:2.21'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface status
		equals: 0
		description: 'testDrawLabel:2.22'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface width class
		equals: SmallInteger
		description: 'testDrawLabel:2.23'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface width
		equals: 50
		description: 'testDrawLabel:2.24'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface height class
		equals: SmallInteger
		description: 'testDrawLabel:2.25'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface height
		equals: 40
		description: 'testDrawLabel:2.26'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface isSuccess class
		equals: True
		description: 'testDrawLabel:2.27'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface isSuccess
		equals: true
		description: 'testDrawLabel:2.28'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface stride class
		equals: SmallInteger
		description: 'testDrawLabel:2.29'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface stride
		equals: 200
		description: 'testDrawLabel:2.30'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas class
		equals: TSCanvas
		description: 'testDrawLabel:2.31'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas showRectangles class
		equals: False
		description: 'testDrawLabel:2.32'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas showRectangles
		equals: false
		description: 'testDrawLabel:2.33'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.34'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:2.35'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel:2.36'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas view
		equals: nil
		description: 'testDrawLabel:2.37'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas isShape class
		equals: False
		description: 'testDrawLabel:2.38'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas isShape
		equals: false
		description: 'testDrawLabel:2.39'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:2.40'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel:2.41'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas clearBackground class
		equals: True
		description: 'testDrawLabel:2.42'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas clearBackground
		equals: true
		description: 'testDrawLabel:2.43'.
	self
		assert: tmp_MoPeJ6Ewvf3 wantsSteps class
		equals: False
		description: 'testDrawLabel:2.44'.
	self
		assert: tmp_MoPeJ6Ewvf3 wantsSteps
		equals: false
		description: 'testDrawLabel:2.45'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDragging class
		equals: False
		description: 'testDrawLabel:2.46'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDragging
		equals: false
		description: 'testDrawLabel:2.47'.
	tmp_MoPeJ6Ewvf3 drawOnMockCanvas.
	self
		assert: tmp_MoPeJ6Ewvf3 class
		equals: TSAthensMorph
		description: 'testDrawLabel:3.1'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDrawing class
		equals: False
		description: 'testDrawLabel:3.2'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDrawing
		equals: false
		description: 'testDrawLabel:3.3'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLabel:3.4'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLabel:3.5'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLabel:3.6'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:3.7'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:3.8'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLabel:3.9'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas view
		equals: nil
		description: 'testDrawLabel:3.10'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLabel:3.11'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas isShape
		equals: false
		description: 'testDrawLabel:3.12'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:3.13'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLabel:3.14'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLabel:3.15'.
	self
		assert: tmp_MoPeJ6Ewvf3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLabel:3.16'.
	self
		assert: tmp_MoPeJ6Ewvf3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLabel:3.17'.
	self
		assert: tmp_MoPeJ6Ewvf3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLabel:3.18'.
	self
		assert: tmp_MoPeJ6Ewvf3 renderer builder
		equals: nil
		description: 'testDrawLabel:3.19'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLabel:3.20'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface status class
		equals: SmallInteger
		description: 'testDrawLabel:3.21'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface status
		equals: 0
		description: 'testDrawLabel:3.22'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface width class
		equals: SmallInteger
		description: 'testDrawLabel:3.23'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface width
		equals: 50
		description: 'testDrawLabel:3.24'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface height class
		equals: SmallInteger
		description: 'testDrawLabel:3.25'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface height
		equals: 40
		description: 'testDrawLabel:3.26'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface isSuccess class
		equals: True
		description: 'testDrawLabel:3.27'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface isSuccess
		equals: true
		description: 'testDrawLabel:3.28'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface stride class
		equals: SmallInteger
		description: 'testDrawLabel:3.29'.
	self
		assert: tmp_MoPeJ6Ewvf3 surface stride
		equals: 200
		description: 'testDrawLabel:3.30'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas class
		equals: TSCanvas
		description: 'testDrawLabel:3.31'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas showRectangles class
		equals: False
		description: 'testDrawLabel:3.32'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas showRectangles
		equals: false
		description: 'testDrawLabel:3.33'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel:3.34'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel:3.35'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel:3.36'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas view
		equals: nil
		description: 'testDrawLabel:3.37'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas isShape class
		equals: False
		description: 'testDrawLabel:3.38'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas isShape
		equals: false
		description: 'testDrawLabel:3.39'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel:3.40'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel:3.41'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas clearBackground class
		equals: True
		description: 'testDrawLabel:3.42'.
	self
		assert: tmp_MoPeJ6Ewvf3 canvas clearBackground
		equals: true
		description: 'testDrawLabel:3.43'.
	self
		assert: tmp_MoPeJ6Ewvf3 wantsSteps class
		equals: False
		description: 'testDrawLabel:3.44'.
	self
		assert: tmp_MoPeJ6Ewvf3 wantsSteps
		equals: false
		description: 'testDrawLabel:3.45'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDragging class
		equals: False
		description: 'testDrawLabel:3.46'.
	self
		assert: tmp_MoPeJ6Ewvf3 isDragging
		equals: false
		description: 'testDrawLabel:3.47'
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> testUnderlineStruckout [
	<madeBySmallAmp>
	| label |
	label := TSLabel new.
	self
		assert: label class
		equals: TSLabel
		description: 'testUnderlineStruckout:1.1'.
	self
		assert: label text class
		equals: UndefinedObject
		description: 'testUnderlineStruckout:1.2'.
	self
		assert: label text
		equals: nil
		description: 'testUnderlineStruckout:1.3'.
	self
		assert: label descent class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.4'.
	self
		assert: label descent
		equals: 5
		description: 'testUnderlineStruckout:1.5'.
	self
		assert: label textHeight class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.6'.
	self
		assert: label textHeight
		equals: 23
		description: 'testUnderlineStruckout:1.7'.
	self
		assert: label font class
		equals: LogicalFont
		description: 'testUnderlineStruckout:1.8'.
	self
		assert: label font isRegular class
		equals: False
		description: 'testUnderlineStruckout:1.9'.
	self
		assert: label font isRegular
		equals: false
		description: 'testUnderlineStruckout:1.10'.
	self
		assert: label font weightValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.11'.
	self
		assert: label font weightValue
		equals: 400
		description: 'testUnderlineStruckout:1.12'.
	self
		assert: label font familyName class
		equals: ByteString
		description: 'testUnderlineStruckout:1.13'.
	self
		assert: label font familyName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout:1.14'.
	self
		assert: label font stretchValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.15'.
	self
		assert: label font stretchValue
		equals: 5
		description: 'testUnderlineStruckout:1.16'.
	self
		assert: label font isBold class
		equals: False
		description: 'testUnderlineStruckout:1.17'.
	self
		assert: label font isBold
		equals: false
		description: 'testUnderlineStruckout:1.18'.
	self
		assert: label font isBoldOrBolder class
		equals: False
		description: 'testUnderlineStruckout:1.19'.
	self
		assert: label font isBoldOrBolder
		equals: false
		description: 'testUnderlineStruckout:1.20'.
	self
		assert: label font slantValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.21'.
	self
		assert: label font slantValue
		equals: 0
		description: 'testUnderlineStruckout:1.22'.
	self
		assert: label font isItalicOrOblique class
		equals: False
		description: 'testUnderlineStruckout:1.23'.
	self
		assert: label font isItalicOrOblique
		equals: false
		description: 'testUnderlineStruckout:1.24'.
	self
		assert: label font isItalic class
		equals: False
		description: 'testUnderlineStruckout:1.25'.
	self
		assert: label font isItalic
		equals: false
		description: 'testUnderlineStruckout:1.26'.
	self
		assert: label font lineGrid class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.27'.
	self
		assert: label font lineGrid
		equals: 23
		description: 'testUnderlineStruckout:1.28'.
	self
		assert: label font pointSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout:1.29'.
	self
		assert: label font pointSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout:1.30'.
	self
		assert: label font maxAscii class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.31'.
	self
		assert: label font maxAscii
		equals: 1152921504606846975
		description: 'testUnderlineStruckout:1.32'.
	self
		assert: label font fallbackFamilyNames class
		equals: UndefinedObject
		description: 'testUnderlineStruckout:1.33'.
	self
		assert: label font fallbackFamilyNames
		equals: nil
		description: 'testUnderlineStruckout:1.34'.
	self
		assert: label textWidth class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.35'.
	self
		assert: label textWidth
		equals: 0
		description: 'testUnderlineStruckout:1.36'.
	self
		assert: label isStruckOut class
		equals: False
		description: 'testUnderlineStruckout:1.37'.
	self
		assert: label isStruckOut
		equals: false
		description: 'testUnderlineStruckout:1.38'.
	self
		assert: label fontName class
		equals: ByteString
		description: 'testUnderlineStruckout:1.39'.
	self
		assert: label fontName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout:1.40'.
	self
		assert: label isBold class
		equals: False
		description: 'testUnderlineStruckout:1.41'.
	self
		assert: label isBold
		equals: false
		description: 'testUnderlineStruckout:1.42'.
	self
		assert: label isNormal class
		equals: True
		description: 'testUnderlineStruckout:1.43'.
	self
		assert: label isNormal
		equals: true
		description: 'testUnderlineStruckout:1.44'.
	self
		assert: label isItalic class
		equals: False
		description: 'testUnderlineStruckout:1.45'.
	self
		assert: label isItalic
		equals: false
		description: 'testUnderlineStruckout:1.46'.
	self
		assert: label fontSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout:1.47'.
	self
		assert: label fontSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout:1.48'.
	self
		assert: label emphasis class
		equals: TextEmphasis
		description: 'testUnderlineStruckout:1.49'.
	self
		assert: label emphasis set class
		equals: False
		description: 'testUnderlineStruckout:1.50'.
	self
		assert: label emphasis set
		equals: false
		description: 'testUnderlineStruckout:1.51'.
	self
		assert: label emphasis emphasisCode class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.52'.
	self
		assert: label emphasis emphasisCode
		equals: 0
		description: 'testUnderlineStruckout:1.53'.
	self
		assert: label emphasis value class
		equals: SmallInteger
		description: 'testUnderlineStruckout:1.54'.
	self
		assert: label emphasis value
		equals: 0
		description: 'testUnderlineStruckout:1.55'.
	self
		assert: label emphasis dominatedByCmd0 class
		equals: True
		description: 'testUnderlineStruckout:1.56'.
	self
		assert: label emphasis dominatedByCmd0
		equals: true
		description: 'testUnderlineStruckout:1.57'.
	self
		assert: label isUnderlined class
		equals: False
		description: 'testUnderlineStruckout:1.58'.
	self
		assert: label isUnderlined
		equals: false
		description: 'testUnderlineStruckout:1.59'.
	label underline.
	self
		assert: label class
		equals: TSLabel
		description: 'testUnderlineStruckout:2.1'.
	self
		assert: label text class
		equals: UndefinedObject
		description: 'testUnderlineStruckout:2.2'.
	self
		assert: label text
		equals: nil
		description: 'testUnderlineStruckout:2.3'.
	self
		assert: label descent class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.4'.
	self
		assert: label descent
		equals: 5
		description: 'testUnderlineStruckout:2.5'.
	self
		assert: label textHeight class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.6'.
	self
		assert: label textHeight
		equals: 23
		description: 'testUnderlineStruckout:2.7'.
	self
		assert: label font class
		equals: LogicalFont
		description: 'testUnderlineStruckout:2.8'.
	self
		assert: label font isRegular class
		equals: False
		description: 'testUnderlineStruckout:2.9'.
	self
		assert: label font isRegular
		equals: false
		description: 'testUnderlineStruckout:2.10'.
	self
		assert: label font weightValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.11'.
	self
		assert: label font weightValue
		equals: 400
		description: 'testUnderlineStruckout:2.12'.
	self
		assert: label font familyName class
		equals: ByteString
		description: 'testUnderlineStruckout:2.13'.
	self
		assert: label font familyName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout:2.14'.
	self
		assert: label font stretchValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.15'.
	self
		assert: label font stretchValue
		equals: 5
		description: 'testUnderlineStruckout:2.16'.
	self
		assert: label font isBold class
		equals: False
		description: 'testUnderlineStruckout:2.17'.
	self
		assert: label font isBold
		equals: false
		description: 'testUnderlineStruckout:2.18'.
	self
		assert: label font isBoldOrBolder class
		equals: False
		description: 'testUnderlineStruckout:2.19'.
	self
		assert: label font isBoldOrBolder
		equals: false
		description: 'testUnderlineStruckout:2.20'.
	self
		assert: label font slantValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.21'.
	self
		assert: label font slantValue
		equals: 0
		description: 'testUnderlineStruckout:2.22'.
	self
		assert: label font isItalicOrOblique class
		equals: False
		description: 'testUnderlineStruckout:2.23'.
	self
		assert: label font isItalicOrOblique
		equals: false
		description: 'testUnderlineStruckout:2.24'.
	self
		assert: label font isItalic class
		equals: False
		description: 'testUnderlineStruckout:2.25'.
	self
		assert: label font isItalic
		equals: false
		description: 'testUnderlineStruckout:2.26'.
	self
		assert: label font lineGrid class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.27'.
	self
		assert: label font lineGrid
		equals: 23
		description: 'testUnderlineStruckout:2.28'.
	self
		assert: label font pointSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout:2.29'.
	self
		assert: label font pointSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout:2.30'.
	self
		assert: label font maxAscii class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.31'.
	self
		assert: label font maxAscii
		equals: 1152921504606846975
		description: 'testUnderlineStruckout:2.32'.
	self
		assert: label font fallbackFamilyNames class
		equals: UndefinedObject
		description: 'testUnderlineStruckout:2.33'.
	self
		assert: label font fallbackFamilyNames
		equals: nil
		description: 'testUnderlineStruckout:2.34'.
	self
		assert: label textWidth class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.35'.
	self
		assert: label textWidth
		equals: 0
		description: 'testUnderlineStruckout:2.36'.
	self
		assert: label isStruckOut class
		equals: False
		description: 'testUnderlineStruckout:2.37'.
	self
		assert: label isStruckOut
		equals: false
		description: 'testUnderlineStruckout:2.38'.
	self
		assert: label fontName class
		equals: ByteString
		description: 'testUnderlineStruckout:2.39'.
	self
		assert: label fontName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout:2.40'.
	self
		assert: label isBold class
		equals: False
		description: 'testUnderlineStruckout:2.41'.
	self
		assert: label isBold
		equals: false
		description: 'testUnderlineStruckout:2.42'.
	self
		assert: label isNormal class
		equals: False
		description: 'testUnderlineStruckout:2.43'.
	self
		assert: label isNormal
		equals: false
		description: 'testUnderlineStruckout:2.44'.
	self
		assert: label isItalic class
		equals: False
		description: 'testUnderlineStruckout:2.45'.
	self
		assert: label isItalic
		equals: false
		description: 'testUnderlineStruckout:2.46'.
	self
		assert: label fontSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout:2.47'.
	self
		assert: label fontSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout:2.48'.
	self
		assert: label emphasis class
		equals: TextEmphasis
		description: 'testUnderlineStruckout:2.49'.
	self
		assert: label emphasis set class
		equals: True
		description: 'testUnderlineStruckout:2.50'.
	self
		assert: label emphasis set
		equals: true
		description: 'testUnderlineStruckout:2.51'.
	self
		assert: label emphasis emphasisCode class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.52'.
	self
		assert: label emphasis emphasisCode
		equals: 4
		description: 'testUnderlineStruckout:2.53'.
	self
		assert: label emphasis value class
		equals: SmallInteger
		description: 'testUnderlineStruckout:2.54'.
	self
		assert: label emphasis value
		equals: 4
		description: 'testUnderlineStruckout:2.55'.
	self
		assert: label emphasis dominatedByCmd0 class
		equals: True
		description: 'testUnderlineStruckout:2.56'.
	self
		assert: label emphasis dominatedByCmd0
		equals: true
		description: 'testUnderlineStruckout:2.57'.
	self
		assert: label isUnderlined class
		equals: True
		description: 'testUnderlineStruckout:2.58'.
	self
		assert: label isUnderlined
		equals: true
		description: 'testUnderlineStruckout:2.59'.
	label bold.
	self
		assert: label class
		equals: TSLabel
		description: 'testUnderlineStruckout:3.1'.
	self
		assert: label text class
		equals: UndefinedObject
		description: 'testUnderlineStruckout:3.2'.
	self
		assert: label text
		equals: nil
		description: 'testUnderlineStruckout:3.3'.
	self
		assert: label descent class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.4'.
	self
		assert: label descent
		equals: 5
		description: 'testUnderlineStruckout:3.5'.
	self
		assert: label textHeight class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.6'.
	self
		assert: label textHeight
		equals: 23
		description: 'testUnderlineStruckout:3.7'.
	self
		assert: label font class
		equals: LogicalFont
		description: 'testUnderlineStruckout:3.8'.
	self
		assert: label font isRegular class
		equals: False
		description: 'testUnderlineStruckout:3.9'.
	self
		assert: label font isRegular
		equals: false
		description: 'testUnderlineStruckout:3.10'.
	self
		assert: label font weightValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.11'.
	self
		assert: label font weightValue
		equals: 700
		description: 'testUnderlineStruckout:3.12'.
	self
		assert: label font familyName class
		equals: ByteString
		description: 'testUnderlineStruckout:3.13'.
	self
		assert: label font familyName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout:3.14'.
	self
		assert: label font stretchValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.15'.
	self
		assert: label font stretchValue
		equals: 5
		description: 'testUnderlineStruckout:3.16'.
	self
		assert: label font isBold class
		equals: True
		description: 'testUnderlineStruckout:3.17'.
	self
		assert: label font isBold
		equals: true
		description: 'testUnderlineStruckout:3.18'.
	self
		assert: label font isBoldOrBolder class
		equals: True
		description: 'testUnderlineStruckout:3.19'.
	self
		assert: label font isBoldOrBolder
		equals: true
		description: 'testUnderlineStruckout:3.20'.
	self
		assert: label font slantValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.21'.
	self
		assert: label font slantValue
		equals: 0
		description: 'testUnderlineStruckout:3.22'.
	self
		assert: label font isItalicOrOblique class
		equals: False
		description: 'testUnderlineStruckout:3.23'.
	self
		assert: label font isItalicOrOblique
		equals: false
		description: 'testUnderlineStruckout:3.24'.
	self
		assert: label font isItalic class
		equals: False
		description: 'testUnderlineStruckout:3.25'.
	self
		assert: label font isItalic
		equals: false
		description: 'testUnderlineStruckout:3.26'.
	self
		assert: label font lineGrid class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.27'.
	self
		assert: label font lineGrid
		equals: 23
		description: 'testUnderlineStruckout:3.28'.
	self
		assert: label font pointSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout:3.29'.
	self
		assert: label font pointSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout:3.30'.
	self
		assert: label font maxAscii class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.31'.
	self
		assert: label font maxAscii
		equals: 1152921504606846975
		description: 'testUnderlineStruckout:3.32'.
	self
		assert: label font fallbackFamilyNames class
		equals: UndefinedObject
		description: 'testUnderlineStruckout:3.33'.
	self
		assert: label font fallbackFamilyNames
		equals: nil
		description: 'testUnderlineStruckout:3.34'.
	self
		assert: label textWidth class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.35'.
	self
		assert: label textWidth
		equals: 0
		description: 'testUnderlineStruckout:3.36'.
	self
		assert: label isStruckOut class
		equals: False
		description: 'testUnderlineStruckout:3.37'.
	self
		assert: label isStruckOut
		equals: false
		description: 'testUnderlineStruckout:3.38'.
	self
		assert: label fontName class
		equals: ByteString
		description: 'testUnderlineStruckout:3.39'.
	self
		assert: label fontName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout:3.40'.
	self
		assert: label isBold class
		equals: True
		description: 'testUnderlineStruckout:3.41'.
	self
		assert: label isBold
		equals: true
		description: 'testUnderlineStruckout:3.42'.
	self
		assert: label isNormal class
		equals: False
		description: 'testUnderlineStruckout:3.43'.
	self
		assert: label isNormal
		equals: false
		description: 'testUnderlineStruckout:3.44'.
	self
		assert: label isItalic class
		equals: False
		description: 'testUnderlineStruckout:3.45'.
	self
		assert: label isItalic
		equals: false
		description: 'testUnderlineStruckout:3.46'.
	self
		assert: label fontSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout:3.47'.
	self
		assert: label fontSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout:3.48'.
	self
		assert: label emphasis class
		equals: TextEmphasis
		description: 'testUnderlineStruckout:3.49'.
	self
		assert: label emphasis set class
		equals: True
		description: 'testUnderlineStruckout:3.50'.
	self
		assert: label emphasis set
		equals: true
		description: 'testUnderlineStruckout:3.51'.
	self
		assert: label emphasis emphasisCode class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.52'.
	self
		assert: label emphasis emphasisCode
		equals: 5
		description: 'testUnderlineStruckout:3.53'.
	self
		assert: label emphasis value class
		equals: SmallInteger
		description: 'testUnderlineStruckout:3.54'.
	self
		assert: label emphasis value
		equals: 5
		description: 'testUnderlineStruckout:3.55'.
	self
		assert: label emphasis dominatedByCmd0 class
		equals: True
		description: 'testUnderlineStruckout:3.56'.
	self
		assert: label emphasis dominatedByCmd0
		equals: true
		description: 'testUnderlineStruckout:3.57'.
	self
		assert: label isUnderlined class
		equals: True
		description: 'testUnderlineStruckout:3.58'.
	self
		assert: label isUnderlined
		equals: true
		description: 'testUnderlineStruckout:3.59'
]
