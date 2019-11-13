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
TSLabelTestAmpTest >> testDrawBorderLabel_amp [
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
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBorderLabel_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBorderLabel_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBorderLabel_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBorderLabel_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBorderLabel_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBorderLabel_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBorderLabel_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBorderLabel_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBorderLabel_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBorderLabel_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBorderLabel_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBorderLabel_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBorderLabel_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBorderLabel_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBorderLabel_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawBorderLabel_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBorderLabel_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBorderLabel_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBorderLabel_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBorderLabel_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBorderLabel_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBorderLabel_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBorderLabel_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBorderLabel_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBorderLabel_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBorderLabel_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBorderLabel_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawBorderLabel_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBorderLabel_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBorderLabel_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBorderLabel_amp:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBorderLabel_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawBorderLabel_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawBorderLabel_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBorderLabel_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawBorderLabel_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawBorderLabel_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawBorderLabel_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBorderLabel_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawBorderLabel_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawBorderLabel_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawBorderLabel_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawBorderLabel_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBorderLabel_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBorderLabel_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBorderLabel_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBorderLabel_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBorderLabel_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBorderLabel_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBorderLabel_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBorderLabel_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBorderLabel_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBorderLabel_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBorderLabel_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBorderLabel_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBorderLabel_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawBorderLabel_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBorderLabel_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBorderLabel_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawBorderLabel_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBorderLabel_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBorderLabel_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:1.152'.
	tmp_lFGzB2sdgp3 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawBorderLabel_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawBorderLabel_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawBorderLabel_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawBorderLabel_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawBorderLabel_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawBorderLabel_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawBorderLabel_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawBorderLabel_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawBorderLabel_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawBorderLabel_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawBorderLabel_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawBorderLabel_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawBorderLabel_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawBorderLabel_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawBorderLabel_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawBorderLabel_amp:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawBorderLabel_amp:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawBorderLabel_amp:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawBorderLabel_amp:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawBorderLabel_amp:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawBorderLabel_amp:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawBorderLabel_amp:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawBorderLabel_amp:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawBorderLabel_amp:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawBorderLabel_amp:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawBorderLabel_amp:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawBorderLabel_amp:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawBorderLabel_amp:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawBorderLabel_amp:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawBorderLabel_amp:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawBorderLabel_amp:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawBorderLabel_amp:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawBorderLabel_amp:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawBorderLabel_amp:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawBorderLabel_amp:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawBorderLabel_amp:2.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawBorderLabel_amp:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel_amp:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.69'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawBorderLabel_amp:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel_amp:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel_amp:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawBorderLabel_amp:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel_amp:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawBorderLabel_amp:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.77'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawBorderLabel_amp:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawBorderLabel_amp:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.81'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawBorderLabel_amp:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel_amp:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawBorderLabel_amp:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawBorderLabel_amp:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawBorderLabel_amp:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawBorderLabel_amp:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel_amp:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel_amp:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawBorderLabel_amp:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawBorderLabel_amp:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:2.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawBorderLabel_amp:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:2.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawBorderLabel_amp:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawBorderLabel_amp:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawBorderLabel_amp:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawBorderLabel_amp:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawBorderLabel_amp:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawBorderLabel_amp:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawBorderLabel_amp:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawBorderLabel_amp:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawBorderLabel_amp:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawBorderLabel_amp:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawBorderLabel_amp:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawBorderLabel_amp:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawBorderLabel_amp:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawBorderLabel_amp:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawBorderLabel_amp:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawBorderLabel_amp:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawBorderLabel_amp:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawBorderLabel_amp:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawBorderLabel_amp:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawBorderLabel_amp:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawBorderLabel_amp:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawBorderLabel_amp:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawBorderLabel_amp:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:2.151'.
	self
		assert: tmp_lFGzB2sdgp3 class
		equals: TSAthensMorph
		description: 'testDrawBorderLabel_amp:2.1'.
	self
		assert: tmp_lFGzB2sdgp3 isDrawing class
		equals: False
		description: 'testDrawBorderLabel_amp:2.2'.
	self
		assert: tmp_lFGzB2sdgp3 isDrawing
		equals: false
		description: 'testDrawBorderLabel_amp:2.3'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:2.4'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:2.5'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:2.6'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.7'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:2.8'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:2.9'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas view
		equals: nil
		description: 'testDrawBorderLabel_amp:2.10'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:2.11'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas isShape
		equals: false
		description: 'testDrawBorderLabel_amp:2.12'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.13'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:2.14'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:2.15'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:2.16'.
	self
		assert: tmp_lFGzB2sdgp3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBorderLabel_amp:2.17'.
	self
		assert: tmp_lFGzB2sdgp3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:2.18'.
	self
		assert: tmp_lFGzB2sdgp3 renderer builder
		equals: nil
		description: 'testDrawBorderLabel_amp:2.19'.
	self
		assert: tmp_lFGzB2sdgp3 surface class
		equals: AthensCairoSurface
		description: 'testDrawBorderLabel_amp:2.20'.
	self
		assert: tmp_lFGzB2sdgp3 surface status class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.21'.
	self
		assert: tmp_lFGzB2sdgp3 surface status
		equals: 0
		description: 'testDrawBorderLabel_amp:2.22'.
	self
		assert: tmp_lFGzB2sdgp3 surface width class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.23'.
	self
		assert: tmp_lFGzB2sdgp3 surface width
		equals: 50
		description: 'testDrawBorderLabel_amp:2.24'.
	self
		assert: tmp_lFGzB2sdgp3 surface height class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.25'.
	self
		assert: tmp_lFGzB2sdgp3 surface height
		equals: 40
		description: 'testDrawBorderLabel_amp:2.26'.
	self
		assert: tmp_lFGzB2sdgp3 surface isSuccess class
		equals: True
		description: 'testDrawBorderLabel_amp:2.27'.
	self
		assert: tmp_lFGzB2sdgp3 surface isSuccess
		equals: true
		description: 'testDrawBorderLabel_amp:2.28'.
	self
		assert: tmp_lFGzB2sdgp3 surface stride class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.29'.
	self
		assert: tmp_lFGzB2sdgp3 surface stride
		equals: 200
		description: 'testDrawBorderLabel_amp:2.30'.
	self
		assert: tmp_lFGzB2sdgp3 canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:2.31'.
	self
		assert: tmp_lFGzB2sdgp3 canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:2.32'.
	self
		assert: tmp_lFGzB2sdgp3 canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:2.33'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.34'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:2.35'.
	self
		assert: tmp_lFGzB2sdgp3 canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:2.36'.
	self
		assert: tmp_lFGzB2sdgp3 canvas view
		equals: nil
		description: 'testDrawBorderLabel_amp:2.37'.
	self
		assert: tmp_lFGzB2sdgp3 canvas isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:2.38'.
	self
		assert: tmp_lFGzB2sdgp3 canvas isShape
		equals: false
		description: 'testDrawBorderLabel_amp:2.39'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:2.40'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:2.41'.
	self
		assert: tmp_lFGzB2sdgp3 canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:2.42'.
	self
		assert: tmp_lFGzB2sdgp3 canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:2.43'.
	self
		assert: tmp_lFGzB2sdgp3 wantsSteps class
		equals: False
		description: 'testDrawBorderLabel_amp:2.44'.
	self
		assert: tmp_lFGzB2sdgp3 wantsSteps
		equals: false
		description: 'testDrawBorderLabel_amp:2.45'.
	self
		assert: tmp_lFGzB2sdgp3 isDragging class
		equals: False
		description: 'testDrawBorderLabel_amp:2.46'.
	self
		assert: tmp_lFGzB2sdgp3 isDragging
		equals: false
		description: 'testDrawBorderLabel_amp:2.47'.
	tmp_lFGzB2sdgp3 drawOnMockCanvas.
	self
		assert: tmp_lFGzB2sdgp3 class
		equals: TSAthensMorph
		description: 'testDrawBorderLabel_amp:3.1'.
	self
		assert: tmp_lFGzB2sdgp3 isDrawing class
		equals: False
		description: 'testDrawBorderLabel_amp:3.2'.
	self
		assert: tmp_lFGzB2sdgp3 isDrawing
		equals: false
		description: 'testDrawBorderLabel_amp:3.3'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:3.4'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:3.5'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:3.6'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.7'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:3.8'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:3.9'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas view
		equals: nil
		description: 'testDrawBorderLabel_amp:3.10'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:3.11'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas isShape
		equals: false
		description: 'testDrawBorderLabel_amp:3.12'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.13'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:3.14'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:3.15'.
	self
		assert: tmp_lFGzB2sdgp3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:3.16'.
	self
		assert: tmp_lFGzB2sdgp3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawBorderLabel_amp:3.17'.
	self
		assert: tmp_lFGzB2sdgp3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:3.18'.
	self
		assert: tmp_lFGzB2sdgp3 renderer builder
		equals: nil
		description: 'testDrawBorderLabel_amp:3.19'.
	self
		assert: tmp_lFGzB2sdgp3 surface class
		equals: AthensCairoSurface
		description: 'testDrawBorderLabel_amp:3.20'.
	self
		assert: tmp_lFGzB2sdgp3 surface status class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.21'.
	self
		assert: tmp_lFGzB2sdgp3 surface status
		equals: 0
		description: 'testDrawBorderLabel_amp:3.22'.
	self
		assert: tmp_lFGzB2sdgp3 surface width class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.23'.
	self
		assert: tmp_lFGzB2sdgp3 surface width
		equals: 50
		description: 'testDrawBorderLabel_amp:3.24'.
	self
		assert: tmp_lFGzB2sdgp3 surface height class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.25'.
	self
		assert: tmp_lFGzB2sdgp3 surface height
		equals: 40
		description: 'testDrawBorderLabel_amp:3.26'.
	self
		assert: tmp_lFGzB2sdgp3 surface isSuccess class
		equals: True
		description: 'testDrawBorderLabel_amp:3.27'.
	self
		assert: tmp_lFGzB2sdgp3 surface isSuccess
		equals: true
		description: 'testDrawBorderLabel_amp:3.28'.
	self
		assert: tmp_lFGzB2sdgp3 surface stride class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.29'.
	self
		assert: tmp_lFGzB2sdgp3 surface stride
		equals: 200
		description: 'testDrawBorderLabel_amp:3.30'.
	self
		assert: tmp_lFGzB2sdgp3 canvas class
		equals: TSCanvas
		description: 'testDrawBorderLabel_amp:3.31'.
	self
		assert: tmp_lFGzB2sdgp3 canvas showRectangles class
		equals: False
		description: 'testDrawBorderLabel_amp:3.32'.
	self
		assert: tmp_lFGzB2sdgp3 canvas showRectangles
		equals: false
		description: 'testDrawBorderLabel_amp:3.33'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.34'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawBorderLabel_amp:3.35'.
	self
		assert: tmp_lFGzB2sdgp3 canvas view class
		equals: UndefinedObject
		description: 'testDrawBorderLabel_amp:3.36'.
	self
		assert: tmp_lFGzB2sdgp3 canvas view
		equals: nil
		description: 'testDrawBorderLabel_amp:3.37'.
	self
		assert: tmp_lFGzB2sdgp3 canvas isShape class
		equals: False
		description: 'testDrawBorderLabel_amp:3.38'.
	self
		assert: tmp_lFGzB2sdgp3 canvas isShape
		equals: false
		description: 'testDrawBorderLabel_amp:3.39'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawBorderLabel_amp:3.40'.
	self
		assert: tmp_lFGzB2sdgp3 canvas numberOfShapes
		equals: 1
		description: 'testDrawBorderLabel_amp:3.41'.
	self
		assert: tmp_lFGzB2sdgp3 canvas clearBackground class
		equals: True
		description: 'testDrawBorderLabel_amp:3.42'.
	self
		assert: tmp_lFGzB2sdgp3 canvas clearBackground
		equals: true
		description: 'testDrawBorderLabel_amp:3.43'.
	self
		assert: tmp_lFGzB2sdgp3 wantsSteps class
		equals: False
		description: 'testDrawBorderLabel_amp:3.44'.
	self
		assert: tmp_lFGzB2sdgp3 wantsSteps
		equals: false
		description: 'testDrawBorderLabel_amp:3.45'.
	self
		assert: tmp_lFGzB2sdgp3 isDragging class
		equals: False
		description: 'testDrawBorderLabel_amp:3.46'.
	self
		assert: tmp_lFGzB2sdgp3 isDragging
		equals: false
		description: 'testDrawBorderLabel_amp:3.47'
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> testDrawLabel_amp [
	<madeBySmallAmp>
	| tmp_Nwg9pUYr4J3 |
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
		description: 'testDrawLabel_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLabel_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLabel_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLabel_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLabel_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLabel_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLabel_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawLabel_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLabel_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLabel_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawLabel_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLabel_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLabel_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLabel_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLabel_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLabel_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLabel_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLabel_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawLabel_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLabel_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLabel_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLabel_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawLabel_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLabel_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLabel_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLabel_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLabel_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawLabel_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLabel_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLabel_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLabel_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLabel_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLabel_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawLabel_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLabel_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLabel_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLabel_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLabel_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLabel_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLabel_amp:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawLabel_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLabel_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawLabel_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawLabel_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLabel_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLabel_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawLabel_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawLabel_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawLabel_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLabel_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLabel_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawLabel_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawLabel_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawLabel_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLabel_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLabel_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawLabel_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.90'.
	self assert: c view equals: nil description: 'testDrawLabel_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLabel_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawLabel_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLabel_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLabel_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLabel_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLabel_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLabel_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLabel_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLabel_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLabel_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLabel_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLabel_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLabel_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLabel_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLabel_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLabel_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLabel_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLabel_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLabel_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLabel_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLabel_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawLabel_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLabel_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLabel_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLabel_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLabel_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLabel_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLabel_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLabel_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLabel_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawLabel_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLabel_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLabel_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLabel_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLabel_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLabel_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLabel_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLabel_amp:1.152'.
	tmp_Nwg9pUYr4J3 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawLabel_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawLabel_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawLabel_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawLabel_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawLabel_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawLabel_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawLabel_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawLabel_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawLabel_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawLabel_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawLabel_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawLabel_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawLabel_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawLabel_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawLabel_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawLabel_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawLabel_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawLabel_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:2.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawLabel_amp:2.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawLabel_amp:2.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawLabel_amp:2.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawLabel_amp:2.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawLabel_amp:2.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawLabel_amp:2.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawLabel_amp:2.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawLabel_amp:2.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawLabel_amp:2.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawLabel_amp:2.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawLabel_amp:2.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawLabel_amp:2.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawLabel_amp:2.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawLabel_amp:2.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawLabel_amp:2.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawLabel_amp:2.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawLabel_amp:2.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawLabel_amp:2.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawLabel_amp:2.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawLabel_amp:2.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawLabel_amp:2.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:2.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:2.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawLabel_amp:2.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawLabel_amp:2.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawLabel_amp:2.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:2.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawLabel_amp:2.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawLabel_amp:2.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawLabel_amp:2.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawLabel_amp:2.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawLabel_amp:2.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.69'.
	self
		assert: c encompassingRectangle top
		equals: -11.5
		description: 'testDrawLabel_amp:2.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel_amp:2.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel_amp:2.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.73'.
	self
		assert: c encompassingRectangle area
		equals: 2139.0
		description: 'testDrawLabel_amp:2.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawLabel_amp:2.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawLabel_amp:2.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.77'.
	self
		assert: c encompassingRectangle left
		equals: -96.5
		description: 'testDrawLabel_amp:2.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.79'.
	self
		assert: c encompassingRectangle width
		equals: 93.0
		description: 'testDrawLabel_amp:2.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.81'.
	self
		assert: c encompassingRectangle right
		equals: -3.5
		description: 'testDrawLabel_amp:2.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawLabel_amp:2.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawLabel_amp:2.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: True
		description: 'testDrawLabel_amp:2.85'.
	self
		assert: c encompassingRectangle isWide
		equals: true
		description: 'testDrawLabel_amp:2.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 11.5
		description: 'testDrawLabel_amp:2.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawLabel_amp:2.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawLabel_amp:2.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawLabel_amp:2.91'.
	self
		assert: c encompassingRectangle height
		equals: 23.0
		description: 'testDrawLabel_amp:2.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:2.93'.
	self assert: c view equals: nil description: 'testDrawLabel_amp:2.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawLabel_amp:2.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawLabel_amp:2.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawLabel_amp:2.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawLabel_amp:2.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawLabel_amp:2.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawLabel_amp:2.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawLabel_amp:2.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawLabel_amp:2.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawLabel_amp:2.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawLabel_amp:2.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawLabel_amp:2.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawLabel_amp:2.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawLabel_amp:2.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawLabel_amp:2.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawLabel_amp:2.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawLabel_amp:2.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawLabel_amp:2.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawLabel_amp:2.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawLabel_amp:2.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawLabel_amp:2.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawLabel_amp:2.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawLabel_amp:2.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawLabel_amp:2.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:2.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:2.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawLabel_amp:2.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawLabel_amp:2.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawLabel_amp:2.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:2.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawLabel_amp:2.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawLabel_amp:2.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:2.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawLabel_amp:2.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawLabel_amp:2.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawLabel_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:2.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:2.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawLabel_amp:2.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawLabel_amp:2.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawLabel_amp:2.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:2.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawLabel_amp:2.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawLabel_amp:2.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawLabel_amp:2.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawLabel_amp:2.151'.
	self
		assert: tmp_Nwg9pUYr4J3 class
		equals: TSAthensMorph
		description: 'testDrawLabel_amp:2.1'.
	self
		assert: tmp_Nwg9pUYr4J3 isDrawing class
		equals: False
		description: 'testDrawLabel_amp:2.2'.
	self
		assert: tmp_Nwg9pUYr4J3 isDrawing
		equals: false
		description: 'testDrawLabel_amp:2.3'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLabel_amp:2.4'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLabel_amp:2.5'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLabel_amp:2.6'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.7'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:2.8'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:2.9'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas view
		equals: nil
		description: 'testDrawLabel_amp:2.10'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLabel_amp:2.11'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas isShape
		equals: false
		description: 'testDrawLabel_amp:2.12'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.13'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:2.14'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLabel_amp:2.15'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLabel_amp:2.16'.
	self
		assert: tmp_Nwg9pUYr4J3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLabel_amp:2.17'.
	self
		assert: tmp_Nwg9pUYr4J3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:2.18'.
	self
		assert: tmp_Nwg9pUYr4J3 renderer builder
		equals: nil
		description: 'testDrawLabel_amp:2.19'.
	self
		assert: tmp_Nwg9pUYr4J3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLabel_amp:2.20'.
	self
		assert: tmp_Nwg9pUYr4J3 surface status class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.21'.
	self
		assert: tmp_Nwg9pUYr4J3 surface status
		equals: 0
		description: 'testDrawLabel_amp:2.22'.
	self
		assert: tmp_Nwg9pUYr4J3 surface width class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.23'.
	self
		assert: tmp_Nwg9pUYr4J3 surface width
		equals: 50
		description: 'testDrawLabel_amp:2.24'.
	self
		assert: tmp_Nwg9pUYr4J3 surface height class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.25'.
	self
		assert: tmp_Nwg9pUYr4J3 surface height
		equals: 40
		description: 'testDrawLabel_amp:2.26'.
	self
		assert: tmp_Nwg9pUYr4J3 surface isSuccess class
		equals: True
		description: 'testDrawLabel_amp:2.27'.
	self
		assert: tmp_Nwg9pUYr4J3 surface isSuccess
		equals: true
		description: 'testDrawLabel_amp:2.28'.
	self
		assert: tmp_Nwg9pUYr4J3 surface stride class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.29'.
	self
		assert: tmp_Nwg9pUYr4J3 surface stride
		equals: 200
		description: 'testDrawLabel_amp:2.30'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas class
		equals: TSCanvas
		description: 'testDrawLabel_amp:2.31'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas showRectangles class
		equals: False
		description: 'testDrawLabel_amp:2.32'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas showRectangles
		equals: false
		description: 'testDrawLabel_amp:2.33'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.34'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:2.35'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:2.36'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas view
		equals: nil
		description: 'testDrawLabel_amp:2.37'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas isShape class
		equals: False
		description: 'testDrawLabel_amp:2.38'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas isShape
		equals: false
		description: 'testDrawLabel_amp:2.39'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:2.40'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:2.41'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas clearBackground class
		equals: True
		description: 'testDrawLabel_amp:2.42'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas clearBackground
		equals: true
		description: 'testDrawLabel_amp:2.43'.
	self
		assert: tmp_Nwg9pUYr4J3 wantsSteps class
		equals: False
		description: 'testDrawLabel_amp:2.44'.
	self
		assert: tmp_Nwg9pUYr4J3 wantsSteps
		equals: false
		description: 'testDrawLabel_amp:2.45'.
	self
		assert: tmp_Nwg9pUYr4J3 isDragging class
		equals: False
		description: 'testDrawLabel_amp:2.46'.
	self
		assert: tmp_Nwg9pUYr4J3 isDragging
		equals: false
		description: 'testDrawLabel_amp:2.47'.
	tmp_Nwg9pUYr4J3 drawOnMockCanvas.
	self
		assert: tmp_Nwg9pUYr4J3 class
		equals: TSAthensMorph
		description: 'testDrawLabel_amp:3.1'.
	self
		assert: tmp_Nwg9pUYr4J3 isDrawing class
		equals: False
		description: 'testDrawLabel_amp:3.2'.
	self
		assert: tmp_Nwg9pUYr4J3 isDrawing
		equals: false
		description: 'testDrawLabel_amp:3.3'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawLabel_amp:3.4'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawLabel_amp:3.5'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas showRectangles
		equals: false
		description: 'testDrawLabel_amp:3.6'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.7'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:3.8'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:3.9'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas view
		equals: nil
		description: 'testDrawLabel_amp:3.10'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas isShape class
		equals: False
		description: 'testDrawLabel_amp:3.11'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas isShape
		equals: false
		description: 'testDrawLabel_amp:3.12'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.13'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:3.14'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawLabel_amp:3.15'.
	self
		assert: tmp_Nwg9pUYr4J3 trachelCanvas clearBackground
		equals: true
		description: 'testDrawLabel_amp:3.16'.
	self
		assert: tmp_Nwg9pUYr4J3 renderer class
		equals: TSAthensRenderer
		description: 'testDrawLabel_amp:3.17'.
	self
		assert: tmp_Nwg9pUYr4J3 renderer builder class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:3.18'.
	self
		assert: tmp_Nwg9pUYr4J3 renderer builder
		equals: nil
		description: 'testDrawLabel_amp:3.19'.
	self
		assert: tmp_Nwg9pUYr4J3 surface class
		equals: AthensCairoSurface
		description: 'testDrawLabel_amp:3.20'.
	self
		assert: tmp_Nwg9pUYr4J3 surface status class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.21'.
	self
		assert: tmp_Nwg9pUYr4J3 surface status
		equals: 0
		description: 'testDrawLabel_amp:3.22'.
	self
		assert: tmp_Nwg9pUYr4J3 surface width class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.23'.
	self
		assert: tmp_Nwg9pUYr4J3 surface width
		equals: 50
		description: 'testDrawLabel_amp:3.24'.
	self
		assert: tmp_Nwg9pUYr4J3 surface height class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.25'.
	self
		assert: tmp_Nwg9pUYr4J3 surface height
		equals: 40
		description: 'testDrawLabel_amp:3.26'.
	self
		assert: tmp_Nwg9pUYr4J3 surface isSuccess class
		equals: True
		description: 'testDrawLabel_amp:3.27'.
	self
		assert: tmp_Nwg9pUYr4J3 surface isSuccess
		equals: true
		description: 'testDrawLabel_amp:3.28'.
	self
		assert: tmp_Nwg9pUYr4J3 surface stride class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.29'.
	self
		assert: tmp_Nwg9pUYr4J3 surface stride
		equals: 200
		description: 'testDrawLabel_amp:3.30'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas class
		equals: TSCanvas
		description: 'testDrawLabel_amp:3.31'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas showRectangles class
		equals: False
		description: 'testDrawLabel_amp:3.32'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas showRectangles
		equals: false
		description: 'testDrawLabel_amp:3.33'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.34'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawLabel_amp:3.35'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas view class
		equals: UndefinedObject
		description: 'testDrawLabel_amp:3.36'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas view
		equals: nil
		description: 'testDrawLabel_amp:3.37'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas isShape class
		equals: False
		description: 'testDrawLabel_amp:3.38'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas isShape
		equals: false
		description: 'testDrawLabel_amp:3.39'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawLabel_amp:3.40'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas numberOfShapes
		equals: 1
		description: 'testDrawLabel_amp:3.41'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas clearBackground class
		equals: True
		description: 'testDrawLabel_amp:3.42'.
	self
		assert: tmp_Nwg9pUYr4J3 canvas clearBackground
		equals: true
		description: 'testDrawLabel_amp:3.43'.
	self
		assert: tmp_Nwg9pUYr4J3 wantsSteps class
		equals: False
		description: 'testDrawLabel_amp:3.44'.
	self
		assert: tmp_Nwg9pUYr4J3 wantsSteps
		equals: false
		description: 'testDrawLabel_amp:3.45'.
	self
		assert: tmp_Nwg9pUYr4J3 isDragging class
		equals: False
		description: 'testDrawLabel_amp:3.46'.
	self
		assert: tmp_Nwg9pUYr4J3 isDragging
		equals: false
		description: 'testDrawLabel_amp:3.47'
]

{ #category : #'as yet unclassified' }
TSLabelTestAmpTest >> testUnderlineStruckout_amp [
	<madeBySmallAmp>
	| label |
	label := TSLabel new.
	self
		assert: label class
		equals: TSLabel
		description: 'testUnderlineStruckout_amp:1.1'.
	self
		assert: label text class
		equals: UndefinedObject
		description: 'testUnderlineStruckout_amp:1.2'.
	self
		assert: label text
		equals: nil
		description: 'testUnderlineStruckout_amp:1.3'.
	self
		assert: label descent class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.4'.
	self
		assert: label descent
		equals: 5
		description: 'testUnderlineStruckout_amp:1.5'.
	self
		assert: label textHeight class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.6'.
	self
		assert: label textHeight
		equals: 23
		description: 'testUnderlineStruckout_amp:1.7'.
	self
		assert: label font class
		equals: LogicalFont
		description: 'testUnderlineStruckout_amp:1.8'.
	self
		assert: label font isRegular class
		equals: False
		description: 'testUnderlineStruckout_amp:1.9'.
	self
		assert: label font isRegular
		equals: false
		description: 'testUnderlineStruckout_amp:1.10'.
	self
		assert: label font weightValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.11'.
	self
		assert: label font weightValue
		equals: 400
		description: 'testUnderlineStruckout_amp:1.12'.
	self
		assert: label font familyName class
		equals: ByteString
		description: 'testUnderlineStruckout_amp:1.13'.
	self
		assert: label font familyName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout_amp:1.14'.
	self
		assert: label font stretchValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.15'.
	self
		assert: label font stretchValue
		equals: 5
		description: 'testUnderlineStruckout_amp:1.16'.
	self
		assert: label font isBold class
		equals: False
		description: 'testUnderlineStruckout_amp:1.17'.
	self
		assert: label font isBold
		equals: false
		description: 'testUnderlineStruckout_amp:1.18'.
	self
		assert: label font isBoldOrBolder class
		equals: False
		description: 'testUnderlineStruckout_amp:1.19'.
	self
		assert: label font isBoldOrBolder
		equals: false
		description: 'testUnderlineStruckout_amp:1.20'.
	self
		assert: label font slantValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.21'.
	self
		assert: label font slantValue
		equals: 0
		description: 'testUnderlineStruckout_amp:1.22'.
	self
		assert: label font isItalicOrOblique class
		equals: False
		description: 'testUnderlineStruckout_amp:1.23'.
	self
		assert: label font isItalicOrOblique
		equals: false
		description: 'testUnderlineStruckout_amp:1.24'.
	self
		assert: label font isItalic class
		equals: False
		description: 'testUnderlineStruckout_amp:1.25'.
	self
		assert: label font isItalic
		equals: false
		description: 'testUnderlineStruckout_amp:1.26'.
	self
		assert: label font lineGrid class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.27'.
	self
		assert: label font lineGrid
		equals: 23
		description: 'testUnderlineStruckout_amp:1.28'.
	self
		assert: label font pointSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout_amp:1.29'.
	self
		assert: label font pointSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout_amp:1.30'.
	self
		assert: label font maxAscii class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.31'.
	self
		assert: label font maxAscii
		equals: 1152921504606846975
		description: 'testUnderlineStruckout_amp:1.32'.
	self
		assert: label font fallbackFamilyNames class
		equals: UndefinedObject
		description: 'testUnderlineStruckout_amp:1.33'.
	self
		assert: label font fallbackFamilyNames
		equals: nil
		description: 'testUnderlineStruckout_amp:1.34'.
	self
		assert: label textWidth class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.35'.
	self
		assert: label textWidth
		equals: 0
		description: 'testUnderlineStruckout_amp:1.36'.
	self
		assert: label isStruckOut class
		equals: False
		description: 'testUnderlineStruckout_amp:1.37'.
	self
		assert: label isStruckOut
		equals: false
		description: 'testUnderlineStruckout_amp:1.38'.
	self
		assert: label fontName class
		equals: ByteString
		description: 'testUnderlineStruckout_amp:1.39'.
	self
		assert: label fontName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout_amp:1.40'.
	self
		assert: label isBold class
		equals: False
		description: 'testUnderlineStruckout_amp:1.41'.
	self
		assert: label isBold
		equals: false
		description: 'testUnderlineStruckout_amp:1.42'.
	self
		assert: label isNormal class
		equals: True
		description: 'testUnderlineStruckout_amp:1.43'.
	self
		assert: label isNormal
		equals: true
		description: 'testUnderlineStruckout_amp:1.44'.
	self
		assert: label isItalic class
		equals: False
		description: 'testUnderlineStruckout_amp:1.45'.
	self
		assert: label isItalic
		equals: false
		description: 'testUnderlineStruckout_amp:1.46'.
	self
		assert: label fontSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout_amp:1.47'.
	self
		assert: label fontSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout_amp:1.48'.
	self
		assert: label emphasis class
		equals: TextEmphasis
		description: 'testUnderlineStruckout_amp:1.49'.
	self
		assert: label emphasis set class
		equals: False
		description: 'testUnderlineStruckout_amp:1.50'.
	self
		assert: label emphasis set
		equals: false
		description: 'testUnderlineStruckout_amp:1.51'.
	self
		assert: label emphasis emphasisCode class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.52'.
	self
		assert: label emphasis emphasisCode
		equals: 0
		description: 'testUnderlineStruckout_amp:1.53'.
	self
		assert: label emphasis value class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:1.54'.
	self
		assert: label emphasis value
		equals: 0
		description: 'testUnderlineStruckout_amp:1.55'.
	self
		assert: label emphasis dominatedByCmd0 class
		equals: True
		description: 'testUnderlineStruckout_amp:1.56'.
	self
		assert: label emphasis dominatedByCmd0
		equals: true
		description: 'testUnderlineStruckout_amp:1.57'.
	self
		assert: label isUnderlined class
		equals: False
		description: 'testUnderlineStruckout_amp:1.58'.
	self
		assert: label isUnderlined
		equals: false
		description: 'testUnderlineStruckout_amp:1.59'.
	label underline.
	self
		assert: label class
		equals: TSLabel
		description: 'testUnderlineStruckout_amp:2.1'.
	self
		assert: label text class
		equals: UndefinedObject
		description: 'testUnderlineStruckout_amp:2.2'.
	self
		assert: label text
		equals: nil
		description: 'testUnderlineStruckout_amp:2.3'.
	self
		assert: label descent class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.4'.
	self
		assert: label descent
		equals: 5
		description: 'testUnderlineStruckout_amp:2.5'.
	self
		assert: label textHeight class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.6'.
	self
		assert: label textHeight
		equals: 23
		description: 'testUnderlineStruckout_amp:2.7'.
	self
		assert: label font class
		equals: LogicalFont
		description: 'testUnderlineStruckout_amp:2.8'.
	self
		assert: label font isRegular class
		equals: False
		description: 'testUnderlineStruckout_amp:2.9'.
	self
		assert: label font isRegular
		equals: false
		description: 'testUnderlineStruckout_amp:2.10'.
	self
		assert: label font weightValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.11'.
	self
		assert: label font weightValue
		equals: 400
		description: 'testUnderlineStruckout_amp:2.12'.
	self
		assert: label font familyName class
		equals: ByteString
		description: 'testUnderlineStruckout_amp:2.13'.
	self
		assert: label font familyName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout_amp:2.14'.
	self
		assert: label font stretchValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.15'.
	self
		assert: label font stretchValue
		equals: 5
		description: 'testUnderlineStruckout_amp:2.16'.
	self
		assert: label font isBold class
		equals: False
		description: 'testUnderlineStruckout_amp:2.17'.
	self
		assert: label font isBold
		equals: false
		description: 'testUnderlineStruckout_amp:2.18'.
	self
		assert: label font isBoldOrBolder class
		equals: False
		description: 'testUnderlineStruckout_amp:2.19'.
	self
		assert: label font isBoldOrBolder
		equals: false
		description: 'testUnderlineStruckout_amp:2.20'.
	self
		assert: label font slantValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.21'.
	self
		assert: label font slantValue
		equals: 0
		description: 'testUnderlineStruckout_amp:2.22'.
	self
		assert: label font isItalicOrOblique class
		equals: False
		description: 'testUnderlineStruckout_amp:2.23'.
	self
		assert: label font isItalicOrOblique
		equals: false
		description: 'testUnderlineStruckout_amp:2.24'.
	self
		assert: label font isItalic class
		equals: False
		description: 'testUnderlineStruckout_amp:2.25'.
	self
		assert: label font isItalic
		equals: false
		description: 'testUnderlineStruckout_amp:2.26'.
	self
		assert: label font lineGrid class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.27'.
	self
		assert: label font lineGrid
		equals: 23
		description: 'testUnderlineStruckout_amp:2.28'.
	self
		assert: label font pointSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout_amp:2.29'.
	self
		assert: label font pointSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout_amp:2.30'.
	self
		assert: label font maxAscii class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.31'.
	self
		assert: label font maxAscii
		equals: 1152921504606846975
		description: 'testUnderlineStruckout_amp:2.32'.
	self
		assert: label font fallbackFamilyNames class
		equals: UndefinedObject
		description: 'testUnderlineStruckout_amp:2.33'.
	self
		assert: label font fallbackFamilyNames
		equals: nil
		description: 'testUnderlineStruckout_amp:2.34'.
	self
		assert: label textWidth class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.35'.
	self
		assert: label textWidth
		equals: 0
		description: 'testUnderlineStruckout_amp:2.36'.
	self
		assert: label isStruckOut class
		equals: False
		description: 'testUnderlineStruckout_amp:2.37'.
	self
		assert: label isStruckOut
		equals: false
		description: 'testUnderlineStruckout_amp:2.38'.
	self
		assert: label fontName class
		equals: ByteString
		description: 'testUnderlineStruckout_amp:2.39'.
	self
		assert: label fontName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout_amp:2.40'.
	self
		assert: label isBold class
		equals: False
		description: 'testUnderlineStruckout_amp:2.41'.
	self
		assert: label isBold
		equals: false
		description: 'testUnderlineStruckout_amp:2.42'.
	self
		assert: label isNormal class
		equals: False
		description: 'testUnderlineStruckout_amp:2.43'.
	self
		assert: label isNormal
		equals: false
		description: 'testUnderlineStruckout_amp:2.44'.
	self
		assert: label isItalic class
		equals: False
		description: 'testUnderlineStruckout_amp:2.45'.
	self
		assert: label isItalic
		equals: false
		description: 'testUnderlineStruckout_amp:2.46'.
	self
		assert: label fontSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout_amp:2.47'.
	self
		assert: label fontSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout_amp:2.48'.
	self
		assert: label emphasis class
		equals: TextEmphasis
		description: 'testUnderlineStruckout_amp:2.49'.
	self
		assert: label emphasis set class
		equals: True
		description: 'testUnderlineStruckout_amp:2.50'.
	self
		assert: label emphasis set
		equals: true
		description: 'testUnderlineStruckout_amp:2.51'.
	self
		assert: label emphasis emphasisCode class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.52'.
	self
		assert: label emphasis emphasisCode
		equals: 4
		description: 'testUnderlineStruckout_amp:2.53'.
	self
		assert: label emphasis value class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:2.54'.
	self
		assert: label emphasis value
		equals: 4
		description: 'testUnderlineStruckout_amp:2.55'.
	self
		assert: label emphasis dominatedByCmd0 class
		equals: True
		description: 'testUnderlineStruckout_amp:2.56'.
	self
		assert: label emphasis dominatedByCmd0
		equals: true
		description: 'testUnderlineStruckout_amp:2.57'.
	self
		assert: label isUnderlined class
		equals: True
		description: 'testUnderlineStruckout_amp:2.58'.
	self
		assert: label isUnderlined
		equals: true
		description: 'testUnderlineStruckout_amp:2.59'.
	label bold.
	self
		assert: label class
		equals: TSLabel
		description: 'testUnderlineStruckout_amp:3.1'.
	self
		assert: label text class
		equals: UndefinedObject
		description: 'testUnderlineStruckout_amp:3.2'.
	self
		assert: label text
		equals: nil
		description: 'testUnderlineStruckout_amp:3.3'.
	self
		assert: label descent class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.4'.
	self
		assert: label descent
		equals: 5
		description: 'testUnderlineStruckout_amp:3.5'.
	self
		assert: label textHeight class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.6'.
	self
		assert: label textHeight
		equals: 23
		description: 'testUnderlineStruckout_amp:3.7'.
	self
		assert: label font class
		equals: LogicalFont
		description: 'testUnderlineStruckout_amp:3.8'.
	self
		assert: label font isRegular class
		equals: False
		description: 'testUnderlineStruckout_amp:3.9'.
	self
		assert: label font isRegular
		equals: false
		description: 'testUnderlineStruckout_amp:3.10'.
	self
		assert: label font weightValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.11'.
	self
		assert: label font weightValue
		equals: 700
		description: 'testUnderlineStruckout_amp:3.12'.
	self
		assert: label font familyName class
		equals: ByteString
		description: 'testUnderlineStruckout_amp:3.13'.
	self
		assert: label font familyName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout_amp:3.14'.
	self
		assert: label font stretchValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.15'.
	self
		assert: label font stretchValue
		equals: 5
		description: 'testUnderlineStruckout_amp:3.16'.
	self
		assert: label font isBold class
		equals: True
		description: 'testUnderlineStruckout_amp:3.17'.
	self
		assert: label font isBold
		equals: true
		description: 'testUnderlineStruckout_amp:3.18'.
	self
		assert: label font isBoldOrBolder class
		equals: True
		description: 'testUnderlineStruckout_amp:3.19'.
	self
		assert: label font isBoldOrBolder
		equals: true
		description: 'testUnderlineStruckout_amp:3.20'.
	self
		assert: label font slantValue class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.21'.
	self
		assert: label font slantValue
		equals: 0
		description: 'testUnderlineStruckout_amp:3.22'.
	self
		assert: label font isItalicOrOblique class
		equals: False
		description: 'testUnderlineStruckout_amp:3.23'.
	self
		assert: label font isItalicOrOblique
		equals: false
		description: 'testUnderlineStruckout_amp:3.24'.
	self
		assert: label font isItalic class
		equals: False
		description: 'testUnderlineStruckout_amp:3.25'.
	self
		assert: label font isItalic
		equals: false
		description: 'testUnderlineStruckout_amp:3.26'.
	self
		assert: label font lineGrid class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.27'.
	self
		assert: label font lineGrid
		equals: 23
		description: 'testUnderlineStruckout_amp:3.28'.
	self
		assert: label font pointSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout_amp:3.29'.
	self
		assert: label font pointSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout_amp:3.30'.
	self
		assert: label font maxAscii class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.31'.
	self
		assert: label font maxAscii
		equals: 1152921504606846975
		description: 'testUnderlineStruckout_amp:3.32'.
	self
		assert: label font fallbackFamilyNames class
		equals: UndefinedObject
		description: 'testUnderlineStruckout_amp:3.33'.
	self
		assert: label font fallbackFamilyNames
		equals: nil
		description: 'testUnderlineStruckout_amp:3.34'.
	self
		assert: label textWidth class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.35'.
	self
		assert: label textWidth
		equals: 0
		description: 'testUnderlineStruckout_amp:3.36'.
	self
		assert: label isStruckOut class
		equals: False
		description: 'testUnderlineStruckout_amp:3.37'.
	self
		assert: label isStruckOut
		equals: false
		description: 'testUnderlineStruckout_amp:3.38'.
	self
		assert: label fontName class
		equals: ByteString
		description: 'testUnderlineStruckout_amp:3.39'.
	self
		assert: label fontName
		equals: 'Source Sans Pro'
		description: 'testUnderlineStruckout_amp:3.40'.
	self
		assert: label isBold class
		equals: True
		description: 'testUnderlineStruckout_amp:3.41'.
	self
		assert: label isBold
		equals: true
		description: 'testUnderlineStruckout_amp:3.42'.
	self
		assert: label isNormal class
		equals: False
		description: 'testUnderlineStruckout_amp:3.43'.
	self
		assert: label isNormal
		equals: false
		description: 'testUnderlineStruckout_amp:3.44'.
	self
		assert: label isItalic class
		equals: False
		description: 'testUnderlineStruckout_amp:3.45'.
	self
		assert: label isItalic
		equals: false
		description: 'testUnderlineStruckout_amp:3.46'.
	self
		assert: label fontSize class
		equals: SmallFloat64
		description: 'testUnderlineStruckout_amp:3.47'.
	self
		assert: label fontSize
		equals: 13.333333333333334
		description: 'testUnderlineStruckout_amp:3.48'.
	self
		assert: label emphasis class
		equals: TextEmphasis
		description: 'testUnderlineStruckout_amp:3.49'.
	self
		assert: label emphasis set class
		equals: True
		description: 'testUnderlineStruckout_amp:3.50'.
	self
		assert: label emphasis set
		equals: true
		description: 'testUnderlineStruckout_amp:3.51'.
	self
		assert: label emphasis emphasisCode class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.52'.
	self
		assert: label emphasis emphasisCode
		equals: 5
		description: 'testUnderlineStruckout_amp:3.53'.
	self
		assert: label emphasis value class
		equals: SmallInteger
		description: 'testUnderlineStruckout_amp:3.54'.
	self
		assert: label emphasis value
		equals: 5
		description: 'testUnderlineStruckout_amp:3.55'.
	self
		assert: label emphasis dominatedByCmd0 class
		equals: True
		description: 'testUnderlineStruckout_amp:3.56'.
	self
		assert: label emphasis dominatedByCmd0
		equals: true
		description: 'testUnderlineStruckout_amp:3.57'.
	self
		assert: label isUnderlined class
		equals: True
		description: 'testUnderlineStruckout_amp:3.58'.
	self
		assert: label isUnderlined
		equals: true
		description: 'testUnderlineStruckout_amp:3.59'
]
