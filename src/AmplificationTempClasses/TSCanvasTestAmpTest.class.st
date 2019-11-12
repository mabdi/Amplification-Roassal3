Class {
	#name : #TSCanvasTestAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'c'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> setUp [
	super setUp.
	c := TSCanvas new
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testAddOneShape [
	<madeBySmallAmp>
	c addShape: TSBox new.
	self
		assert: c class
		equals: TSCanvas
		description: 'testAddOneShape:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testAddOneShape:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testAddOneShape:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testAddOneShape:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testAddOneShape:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testAddOneShape:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testAddOneShape:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testAddOneShape:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testAddOneShape:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testAddOneShape:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testAddOneShape:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testAddOneShape:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testAddOneShape:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testAddOneShape:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testAddOneShape:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testAddOneShape:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testAddOneShape:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testAddOneShape:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testAddOneShape:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testAddOneShape:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testAddOneShape:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testAddOneShape:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testAddOneShape:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testAddOneShape:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testAddOneShape:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testAddOneShape:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testAddOneShape:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testAddOneShape:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testAddOneShape:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testAddOneShape:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testAddOneShape:1.33'.
	self assert: c morph equals: nil description: 'testAddOneShape:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testAddOneShape:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testAddOneShape:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testAddOneShape:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testAddOneShape:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testAddOneShape:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testAddOneShape:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testAddOneShape:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testAddOneShape:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testAddOneShape:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testAddOneShape:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testAddOneShape:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testAddOneShape:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testAddOneShape:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testAddOneShape:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testAddOneShape:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testAddOneShape:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testAddOneShape:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testAddOneShape:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testAddOneShape:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testAddOneShape:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testAddOneShape:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testAddOneShape:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testAddOneShape:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testAddOneShape:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testAddOneShape:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testAddOneShape:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testAddOneShape:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testAddOneShape:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testAddOneShape:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testAddOneShape:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testAddOneShape:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testAddOneShape:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testAddOneShape:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testAddOneShape:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testAddOneShape:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testAddOneShape:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testAddOneShape:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testAddOneShape:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testAddOneShape:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testAddOneShape:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testAddOneShape:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testAddOneShape:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testAddOneShape:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testAddOneShape:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testAddOneShape:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testAddOneShape:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testAddOneShape:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testAddOneShape:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testAddOneShape:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testAddOneShape:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testAddOneShape:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testAddOneShape:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testAddOneShape:1.90'.
	self assert: c view equals: nil description: 'testAddOneShape:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testAddOneShape:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testAddOneShape:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testAddOneShape:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testAddOneShape:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testAddOneShape:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testAddOneShape:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testAddOneShape:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testAddOneShape:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testAddOneShape:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testAddOneShape:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testAddOneShape:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testAddOneShape:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testAddOneShape:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testAddOneShape:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testAddOneShape:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testAddOneShape:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testAddOneShape:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testAddOneShape:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testAddOneShape:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testAddOneShape:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testAddOneShape:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testAddOneShape:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testAddOneShape:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testAddOneShape:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testAddOneShape:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testAddOneShape:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testAddOneShape:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testAddOneShape:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testAddOneShape:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testAddOneShape:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testAddOneShape:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testAddOneShape:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testAddOneShape:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testAddOneShape:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testAddOneShape:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testAddOneShape:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testAddOneShape:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testAddOneShape:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testAddOneShape:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testAddOneShape:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testAddOneShape:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testAddOneShape:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testAddOneShape:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testAddOneShape:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testAddOneShape:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testAddOneShape:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testAddOneShape:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testAddOneShape:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testAddOneShape:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testAddOneShape:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testAddOneShape:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testAddOneShape:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testAddOneShape:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testAddOneShape:1.152'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testDrawCanvas [
	<madeBySmallAmp>
	| tmp_M03YXq7Hba4 |
	c
		addShape:
			(TSBox new
				extent: 100 @ 100;
				yourself).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvas:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvas:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvas:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvas:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvas:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvas:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvas:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvas:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvas:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvas:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvas:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvas:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvas:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvas:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvas:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvas:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvas:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvas:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.33'.
	self assert: c morph equals: nil description: 'testDrawCanvas:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvas:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvas:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvas:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvas:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvas:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvas:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvas:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvas:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvas:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvas:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvas:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvas:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvas:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvas:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvas:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvas:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawCanvas:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvas:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvas:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvas:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawCanvas:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvas:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvas:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvas:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawCanvas:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvas:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.66'.
	self
		assert: c encompassingRectangle top
		equals: -50.0
		description: 'testDrawCanvas:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000.0
		description: 'testDrawCanvas:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvas:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvas:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.74'.
	self
		assert: c encompassingRectangle left
		equals: -50.0
		description: 'testDrawCanvas:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100.0
		description: 'testDrawCanvas:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 50.0
		description: 'testDrawCanvas:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvas:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvas:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvas:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvas:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 50.0
		description: 'testDrawCanvas:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvas:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvas:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100.0
		description: 'testDrawCanvas:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.90'.
	self assert: c view equals: nil description: 'testDrawCanvas:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvas:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvas:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvas:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvas:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvas:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvas:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvas:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvas:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvas:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvas:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvas:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvas:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvas:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvas:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvas:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvas:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvas:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvas:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvas:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvas:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvas:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvas:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvas:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvas:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvas:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvas:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvas:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawCanvas:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvas:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvas:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvas:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawCanvas:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvas:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvas:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawCanvas:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvas:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvas:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvas:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawCanvas:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvas:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvas:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvas:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvas:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvas:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvas:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvas:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvas:1.152'.
	c
		addShape:
			(TSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvas:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvas:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvas:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvas:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvas:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvas:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvas:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvas:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvas:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvas:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvas:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvas:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvas:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvas:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvas:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvas:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvas:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvas:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.33'.
	self assert: c morph equals: nil description: 'testDrawCanvas:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvas:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvas:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvas:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvas:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvas:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvas:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvas:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvas:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvas:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvas:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvas:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvas:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvas:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvas:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvas:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvas:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawCanvas:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvas:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvas:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvas:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 2
		description: 'testDrawCanvas:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvas:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvas:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvas:2.63'.
	self
		assert: c shapes size
		equals: 2
		description: 'testDrawCanvas:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvas:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.66'.
	self
		assert: c encompassingRectangle top
		equals: -50.0
		description: 'testDrawCanvas:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 40000.0
		description: 'testDrawCanvas:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvas:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvas:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.74'.
	self
		assert: c encompassingRectangle left
		equals: -50.0
		description: 'testDrawCanvas:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 200.0
		description: 'testDrawCanvas:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 150.0
		description: 'testDrawCanvas:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvas:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvas:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvas:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvas:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 150.0
		description: 'testDrawCanvas:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvas:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvas:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 200.0
		description: 'testDrawCanvas:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.90'.
	self assert: c view equals: nil description: 'testDrawCanvas:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvas:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvas:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvas:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvas:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvas:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvas:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvas:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvas:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvas:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvas:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvas:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvas:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvas:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvas:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvas:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvas:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvas:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvas:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvas:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvas:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvas:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvas:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvas:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvas:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvas:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvas:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvas:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawCanvas:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvas:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvas:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvas:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 2
		description: 'testDrawCanvas:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvas:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvas:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.134'.
	self
		assert: c numberOfShapes
		equals: 2
		description: 'testDrawCanvas:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvas:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvas:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvas:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawCanvas:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvas:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvas:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvas:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvas:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvas:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvas:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvas:2.152'.
	tmp_M03YXq7Hba4 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvas:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvas:3.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvas:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvas:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvas:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvas:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvas:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvas:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvas:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvas:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvas:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvas:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvas:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvas:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvas:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvas:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvas:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvas:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:3.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawCanvas:3.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawCanvas:3.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawCanvas:3.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawCanvas:3.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawCanvas:3.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawCanvas:3.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawCanvas:3.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvas:3.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvas:3.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvas:3.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvas:3.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvas:3.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvas:3.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvas:3.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvas:3.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvas:3.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvas:3.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvas:3.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvas:3.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvas:3.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvas:3.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvas:3.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvas:3.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:3.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvas:3.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvas:3.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvas:3.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvas:3.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.62'.
	self
		assert: c parent numberOfShapes
		equals: 2
		description: 'testDrawCanvas:3.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvas:3.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvas:3.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvas:3.66'.
	self
		assert: c shapes size
		equals: 2
		description: 'testDrawCanvas:3.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvas:3.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.69'.
	self
		assert: c encompassingRectangle top
		equals: -50.0
		description: 'testDrawCanvas:3.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas:3.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas:3.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.73'.
	self
		assert: c encompassingRectangle area
		equals: 40000.0
		description: 'testDrawCanvas:3.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvas:3.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvas:3.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.77'.
	self
		assert: c encompassingRectangle left
		equals: -50.0
		description: 'testDrawCanvas:3.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.79'.
	self
		assert: c encompassingRectangle width
		equals: 200.0
		description: 'testDrawCanvas:3.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.81'.
	self
		assert: c encompassingRectangle right
		equals: 150.0
		description: 'testDrawCanvas:3.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvas:3.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvas:3.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvas:3.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvas:3.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 150.0
		description: 'testDrawCanvas:3.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas:3.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvas:3.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvas:3.91'.
	self
		assert: c encompassingRectangle height
		equals: 200.0
		description: 'testDrawCanvas:3.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvas:3.93'.
	self assert: c view equals: nil description: 'testDrawCanvas:3.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvas:3.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvas:3.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvas:3.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvas:3.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvas:3.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas:3.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas:3.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvas:3.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvas:3.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvas:3.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvas:3.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvas:3.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvas:3.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvas:3.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvas:3.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvas:3.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvas:3.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvas:3.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvas:3.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvas:3.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvas:3.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvas:3.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvas:3.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas:3.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvas:3.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvas:3.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvas:3.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvas:3.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvas:3.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvas:3.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:3.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvas:3.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvas:3.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvas:3.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvas:3.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.131'.
	self
		assert: c topParent numberOfShapes
		equals: 2
		description: 'testDrawCanvas:3.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvas:3.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvas:3.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.135'.
	self
		assert: c numberOfShapes
		equals: 2
		description: 'testDrawCanvas:3.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvas:3.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvas:3.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvas:3.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:3.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas:3.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvas:3.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvas:3.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvas:3.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.146'.
	self
		assert: c canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas:3.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvas:3.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvas:3.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvas:3.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvas:3.151'.
	self
		assert: tmp_M03YXq7Hba4 class
		equals: TSAthensMorph
		description: 'testDrawCanvas:3.1'.
	self
		assert: tmp_M03YXq7Hba4 isDrawing class
		equals: False
		description: 'testDrawCanvas:3.2'.
	self
		assert: tmp_M03YXq7Hba4 isDrawing
		equals: false
		description: 'testDrawCanvas:3.3'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvas:3.4'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvas:3.5'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvas:3.6'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.7'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:3.8'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas:3.9'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas view
		equals: nil
		description: 'testDrawCanvas:3.10'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvas:3.11'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvas:3.12'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.13'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas:3.14'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvas:3.15'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvas:3.16'.
	self
		assert: tmp_M03YXq7Hba4 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvas:3.17'.
	self
		assert: tmp_M03YXq7Hba4 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvas:3.18'.
	self
		assert: tmp_M03YXq7Hba4 renderer builder
		equals: nil
		description: 'testDrawCanvas:3.19'.
	self
		assert: tmp_M03YXq7Hba4 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvas:3.20'.
	self
		assert: tmp_M03YXq7Hba4 surface status class
		equals: SmallInteger
		description: 'testDrawCanvas:3.21'.
	self
		assert: tmp_M03YXq7Hba4 surface status
		equals: 0
		description: 'testDrawCanvas:3.22'.
	self
		assert: tmp_M03YXq7Hba4 surface width class
		equals: SmallInteger
		description: 'testDrawCanvas:3.23'.
	self
		assert: tmp_M03YXq7Hba4 surface width
		equals: 50
		description: 'testDrawCanvas:3.24'.
	self
		assert: tmp_M03YXq7Hba4 surface height class
		equals: SmallInteger
		description: 'testDrawCanvas:3.25'.
	self
		assert: tmp_M03YXq7Hba4 surface height
		equals: 40
		description: 'testDrawCanvas:3.26'.
	self
		assert: tmp_M03YXq7Hba4 surface isSuccess class
		equals: True
		description: 'testDrawCanvas:3.27'.
	self
		assert: tmp_M03YXq7Hba4 surface isSuccess
		equals: true
		description: 'testDrawCanvas:3.28'.
	self
		assert: tmp_M03YXq7Hba4 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvas:3.29'.
	self
		assert: tmp_M03YXq7Hba4 surface stride
		equals: 200
		description: 'testDrawCanvas:3.30'.
	self
		assert: tmp_M03YXq7Hba4 canvas class
		equals: TSCanvas
		description: 'testDrawCanvas:3.31'.
	self
		assert: tmp_M03YXq7Hba4 canvas showRectangles class
		equals: False
		description: 'testDrawCanvas:3.32'.
	self
		assert: tmp_M03YXq7Hba4 canvas showRectangles
		equals: false
		description: 'testDrawCanvas:3.33'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.34'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:3.35'.
	self
		assert: tmp_M03YXq7Hba4 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas:3.36'.
	self
		assert: tmp_M03YXq7Hba4 canvas view
		equals: nil
		description: 'testDrawCanvas:3.37'.
	self
		assert: tmp_M03YXq7Hba4 canvas isShape class
		equals: False
		description: 'testDrawCanvas:3.38'.
	self
		assert: tmp_M03YXq7Hba4 canvas isShape
		equals: false
		description: 'testDrawCanvas:3.39'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:3.40'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas:3.41'.
	self
		assert: tmp_M03YXq7Hba4 canvas clearBackground class
		equals: True
		description: 'testDrawCanvas:3.42'.
	self
		assert: tmp_M03YXq7Hba4 canvas clearBackground
		equals: true
		description: 'testDrawCanvas:3.43'.
	self
		assert: tmp_M03YXq7Hba4 wantsSteps class
		equals: False
		description: 'testDrawCanvas:3.44'.
	self
		assert: tmp_M03YXq7Hba4 wantsSteps
		equals: false
		description: 'testDrawCanvas:3.45'.
	self
		assert: tmp_M03YXq7Hba4 isDragging class
		equals: False
		description: 'testDrawCanvas:3.46'.
	self
		assert: tmp_M03YXq7Hba4 isDragging
		equals: false
		description: 'testDrawCanvas:3.47'.
	tmp_M03YXq7Hba4 drawOnMockCanvas.
	self
		assert: tmp_M03YXq7Hba4 class
		equals: TSAthensMorph
		description: 'testDrawCanvas:4.1'.
	self
		assert: tmp_M03YXq7Hba4 isDrawing class
		equals: False
		description: 'testDrawCanvas:4.2'.
	self
		assert: tmp_M03YXq7Hba4 isDrawing
		equals: false
		description: 'testDrawCanvas:4.3'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvas:4.4'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvas:4.5'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvas:4.6'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:4.7'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:4.8'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas:4.9'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas view
		equals: nil
		description: 'testDrawCanvas:4.10'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvas:4.11'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvas:4.12'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:4.13'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas:4.14'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvas:4.15'.
	self
		assert: tmp_M03YXq7Hba4 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvas:4.16'.
	self
		assert: tmp_M03YXq7Hba4 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvas:4.17'.
	self
		assert: tmp_M03YXq7Hba4 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvas:4.18'.
	self
		assert: tmp_M03YXq7Hba4 renderer builder
		equals: nil
		description: 'testDrawCanvas:4.19'.
	self
		assert: tmp_M03YXq7Hba4 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvas:4.20'.
	self
		assert: tmp_M03YXq7Hba4 surface status class
		equals: SmallInteger
		description: 'testDrawCanvas:4.21'.
	self
		assert: tmp_M03YXq7Hba4 surface status
		equals: 0
		description: 'testDrawCanvas:4.22'.
	self
		assert: tmp_M03YXq7Hba4 surface width class
		equals: SmallInteger
		description: 'testDrawCanvas:4.23'.
	self
		assert: tmp_M03YXq7Hba4 surface width
		equals: 50
		description: 'testDrawCanvas:4.24'.
	self
		assert: tmp_M03YXq7Hba4 surface height class
		equals: SmallInteger
		description: 'testDrawCanvas:4.25'.
	self
		assert: tmp_M03YXq7Hba4 surface height
		equals: 40
		description: 'testDrawCanvas:4.26'.
	self
		assert: tmp_M03YXq7Hba4 surface isSuccess class
		equals: True
		description: 'testDrawCanvas:4.27'.
	self
		assert: tmp_M03YXq7Hba4 surface isSuccess
		equals: true
		description: 'testDrawCanvas:4.28'.
	self
		assert: tmp_M03YXq7Hba4 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvas:4.29'.
	self
		assert: tmp_M03YXq7Hba4 surface stride
		equals: 200
		description: 'testDrawCanvas:4.30'.
	self
		assert: tmp_M03YXq7Hba4 canvas class
		equals: TSCanvas
		description: 'testDrawCanvas:4.31'.
	self
		assert: tmp_M03YXq7Hba4 canvas showRectangles class
		equals: False
		description: 'testDrawCanvas:4.32'.
	self
		assert: tmp_M03YXq7Hba4 canvas showRectangles
		equals: false
		description: 'testDrawCanvas:4.33'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:4.34'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas:4.35'.
	self
		assert: tmp_M03YXq7Hba4 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas:4.36'.
	self
		assert: tmp_M03YXq7Hba4 canvas view
		equals: nil
		description: 'testDrawCanvas:4.37'.
	self
		assert: tmp_M03YXq7Hba4 canvas isShape class
		equals: False
		description: 'testDrawCanvas:4.38'.
	self
		assert: tmp_M03YXq7Hba4 canvas isShape
		equals: false
		description: 'testDrawCanvas:4.39'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas:4.40'.
	self
		assert: tmp_M03YXq7Hba4 canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas:4.41'.
	self
		assert: tmp_M03YXq7Hba4 canvas clearBackground class
		equals: True
		description: 'testDrawCanvas:4.42'.
	self
		assert: tmp_M03YXq7Hba4 canvas clearBackground
		equals: true
		description: 'testDrawCanvas:4.43'.
	self
		assert: tmp_M03YXq7Hba4 wantsSteps class
		equals: False
		description: 'testDrawCanvas:4.44'.
	self
		assert: tmp_M03YXq7Hba4 wantsSteps
		equals: false
		description: 'testDrawCanvas:4.45'.
	self
		assert: tmp_M03YXq7Hba4 isDragging class
		equals: False
		description: 'testDrawCanvas:4.46'.
	self
		assert: tmp_M03YXq7Hba4 isDragging
		equals: false
		description: 'testDrawCanvas:4.47'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testDrawCanvasWithGroup [
	<madeBySmallAmp>
	| g tmp_LIMz3CzakV5 |
	g := TSComposite new.
	self
		assert: g class
		equals: TSComposite
		description: 'testDrawCanvasWithGroup:1.1'.
	self
		assert: g shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup:1.2'.
	self
		assert: g shapes size
		equals: 0
		description: 'testDrawCanvasWithGroup:1.3'.
	g
		add:
			(TSBox new
				extent: 100 @ 100;
				yourself).
	self
		assert: g class
		equals: TSComposite
		description: 'testDrawCanvasWithGroup:2.1'.
	self
		assert: g shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup:2.2'.
	self
		assert: g shapes size
		equals: 1
		description: 'testDrawCanvasWithGroup:2.3'.
	g
		add:
			(TSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	self
		assert: g class
		equals: TSComposite
		description: 'testDrawCanvasWithGroup:3.1'.
	self
		assert: g shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup:3.2'.
	self
		assert: g shapes size
		equals: 2
		description: 'testDrawCanvasWithGroup:3.3'.
	c addShape: g.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:4.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup:4.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvasWithGroup:4.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:4.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:4.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvasWithGroup:4.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup:4.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvasWithGroup:4.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvasWithGroup:4.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup:4.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup:4.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:4.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawCanvasWithGroup:4.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvasWithGroup:4.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvasWithGroup:4.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvasWithGroup:4.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvasWithGroup:4.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvasWithGroup:4.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvasWithGroup:4.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvasWithGroup:4.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvasWithGroup:4.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvasWithGroup:4.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvasWithGroup:4.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvasWithGroup:4.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:4.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:4.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:4.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:4.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawCanvasWithGroup:4.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvasWithGroup:4.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:4.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvasWithGroup:4.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:4.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:4.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:4.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup:4.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawCanvasWithGroup:4.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup:4.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testDrawCanvasWithGroup:4.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup:4.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup:4.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup:4.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup:4.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testDrawCanvasWithGroup:4.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup:4.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup:4.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup:4.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup:4.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup:4.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup:4.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:4.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testDrawCanvasWithGroup:4.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawCanvasWithGroup:4.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:4.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvasWithGroup:4.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup:4.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvasWithGroup:4.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup:4.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup:4.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvasWithGroup:4.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup:4.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup:4.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvasWithGroup:4.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvasWithGroup:4.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvasWithGroup:4.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup:4.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup:4.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup:4.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup:4.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvasWithGroup:4.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup:4.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup:4.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvasWithGroup:4.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:4.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:4.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:4.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:4.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawCanvasWithGroup:4.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvasWithGroup:4.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:4.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvasWithGroup:4.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:4.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:4.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:4.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:4.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:4.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:4.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:4.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:4.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawCanvasWithGroup:4.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:4.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup:4.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:4.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup:4.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:4.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:4.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:4.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:4.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:4.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:4.152'.
	tmp_LIMz3CzakV5 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:5.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup:5.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvasWithGroup:5.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:5.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:5.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvasWithGroup:5.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup:5.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvasWithGroup:5.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvasWithGroup:5.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup:5.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup:5.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:5.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawCanvasWithGroup:5.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawCanvasWithGroup:5.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawCanvasWithGroup:5.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawCanvasWithGroup:5.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawCanvasWithGroup:5.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawCanvasWithGroup:5.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawCanvasWithGroup:5.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvasWithGroup:5.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvasWithGroup:5.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvasWithGroup:5.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvasWithGroup:5.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvasWithGroup:5.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvasWithGroup:5.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvasWithGroup:5.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvasWithGroup:5.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvasWithGroup:5.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvasWithGroup:5.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvasWithGroup:5.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:5.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:5.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:5.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:5.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:5.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvasWithGroup:5.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:5.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvasWithGroup:5.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:5.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:5.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:5.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup:5.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawCanvasWithGroup:5.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup:5.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.69'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testDrawCanvasWithGroup:5.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup:5.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup:5.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.73'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup:5.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup:5.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.77'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testDrawCanvasWithGroup:5.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.79'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.81'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup:5.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup:5.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup:5.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup:5.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup:5.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup:5.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup:5.91'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testDrawCanvasWithGroup:5.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:5.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawCanvasWithGroup:5.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:5.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvasWithGroup:5.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup:5.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvasWithGroup:5.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup:5.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup:5.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvasWithGroup:5.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup:5.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup:5.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvasWithGroup:5.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvasWithGroup:5.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvasWithGroup:5.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup:5.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup:5.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup:5.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup:5.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvasWithGroup:5.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup:5.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup:5.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvasWithGroup:5.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:5.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:5.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:5.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:5.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:5.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvasWithGroup:5.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:5.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvasWithGroup:5.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:5.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:5.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:5.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:5.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:5.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:5.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:5.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:5.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:5.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup:5.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:5.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup:5.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:5.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:5.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:5.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:5.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:5.151'.
	self
		assert: tmp_LIMz3CzakV5 class
		equals: TSAthensMorph
		description: 'testDrawCanvasWithGroup:5.1'.
	self
		assert: tmp_LIMz3CzakV5 isDrawing class
		equals: False
		description: 'testDrawCanvasWithGroup:5.2'.
	self
		assert: tmp_LIMz3CzakV5 isDrawing
		equals: false
		description: 'testDrawCanvasWithGroup:5.3'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:5.4'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:5.5'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:5.6'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.7'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:5.8'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:5.9'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas view
		equals: nil
		description: 'testDrawCanvasWithGroup:5.10'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:5.11'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup:5.12'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.13'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:5.14'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:5.15'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:5.16'.
	self
		assert: tmp_LIMz3CzakV5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvasWithGroup:5.17'.
	self
		assert: tmp_LIMz3CzakV5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:5.18'.
	self
		assert: tmp_LIMz3CzakV5 renderer builder
		equals: nil
		description: 'testDrawCanvasWithGroup:5.19'.
	self
		assert: tmp_LIMz3CzakV5 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvasWithGroup:5.20'.
	self
		assert: tmp_LIMz3CzakV5 surface status class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.21'.
	self
		assert: tmp_LIMz3CzakV5 surface status
		equals: 0
		description: 'testDrawCanvasWithGroup:5.22'.
	self
		assert: tmp_LIMz3CzakV5 surface width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.23'.
	self
		assert: tmp_LIMz3CzakV5 surface width
		equals: 50
		description: 'testDrawCanvasWithGroup:5.24'.
	self
		assert: tmp_LIMz3CzakV5 surface height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.25'.
	self
		assert: tmp_LIMz3CzakV5 surface height
		equals: 40
		description: 'testDrawCanvasWithGroup:5.26'.
	self
		assert: tmp_LIMz3CzakV5 surface isSuccess class
		equals: True
		description: 'testDrawCanvasWithGroup:5.27'.
	self
		assert: tmp_LIMz3CzakV5 surface isSuccess
		equals: true
		description: 'testDrawCanvasWithGroup:5.28'.
	self
		assert: tmp_LIMz3CzakV5 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.29'.
	self
		assert: tmp_LIMz3CzakV5 surface stride
		equals: 200
		description: 'testDrawCanvasWithGroup:5.30'.
	self
		assert: tmp_LIMz3CzakV5 canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:5.31'.
	self
		assert: tmp_LIMz3CzakV5 canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:5.32'.
	self
		assert: tmp_LIMz3CzakV5 canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:5.33'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.34'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:5.35'.
	self
		assert: tmp_LIMz3CzakV5 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:5.36'.
	self
		assert: tmp_LIMz3CzakV5 canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup:5.37'.
	self
		assert: tmp_LIMz3CzakV5 canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:5.38'.
	self
		assert: tmp_LIMz3CzakV5 canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup:5.39'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:5.40'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:5.41'.
	self
		assert: tmp_LIMz3CzakV5 canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:5.42'.
	self
		assert: tmp_LIMz3CzakV5 canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:5.43'.
	self
		assert: tmp_LIMz3CzakV5 wantsSteps class
		equals: False
		description: 'testDrawCanvasWithGroup:5.44'.
	self
		assert: tmp_LIMz3CzakV5 wantsSteps
		equals: false
		description: 'testDrawCanvasWithGroup:5.45'.
	self
		assert: tmp_LIMz3CzakV5 isDragging class
		equals: False
		description: 'testDrawCanvasWithGroup:5.46'.
	self
		assert: tmp_LIMz3CzakV5 isDragging
		equals: false
		description: 'testDrawCanvasWithGroup:5.47'.
	tmp_LIMz3CzakV5 drawOnMockCanvas.
	self
		assert: tmp_LIMz3CzakV5 class
		equals: TSAthensMorph
		description: 'testDrawCanvasWithGroup:6.1'.
	self
		assert: tmp_LIMz3CzakV5 isDrawing class
		equals: False
		description: 'testDrawCanvasWithGroup:6.2'.
	self
		assert: tmp_LIMz3CzakV5 isDrawing
		equals: false
		description: 'testDrawCanvasWithGroup:6.3'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:6.4'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:6.5'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:6.6'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.7'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:6.8'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:6.9'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas view
		equals: nil
		description: 'testDrawCanvasWithGroup:6.10'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:6.11'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup:6.12'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.13'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:6.14'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:6.15'.
	self
		assert: tmp_LIMz3CzakV5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:6.16'.
	self
		assert: tmp_LIMz3CzakV5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvasWithGroup:6.17'.
	self
		assert: tmp_LIMz3CzakV5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:6.18'.
	self
		assert: tmp_LIMz3CzakV5 renderer builder
		equals: nil
		description: 'testDrawCanvasWithGroup:6.19'.
	self
		assert: tmp_LIMz3CzakV5 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvasWithGroup:6.20'.
	self
		assert: tmp_LIMz3CzakV5 surface status class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.21'.
	self
		assert: tmp_LIMz3CzakV5 surface status
		equals: 0
		description: 'testDrawCanvasWithGroup:6.22'.
	self
		assert: tmp_LIMz3CzakV5 surface width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.23'.
	self
		assert: tmp_LIMz3CzakV5 surface width
		equals: 50
		description: 'testDrawCanvasWithGroup:6.24'.
	self
		assert: tmp_LIMz3CzakV5 surface height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.25'.
	self
		assert: tmp_LIMz3CzakV5 surface height
		equals: 40
		description: 'testDrawCanvasWithGroup:6.26'.
	self
		assert: tmp_LIMz3CzakV5 surface isSuccess class
		equals: True
		description: 'testDrawCanvasWithGroup:6.27'.
	self
		assert: tmp_LIMz3CzakV5 surface isSuccess
		equals: true
		description: 'testDrawCanvasWithGroup:6.28'.
	self
		assert: tmp_LIMz3CzakV5 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.29'.
	self
		assert: tmp_LIMz3CzakV5 surface stride
		equals: 200
		description: 'testDrawCanvasWithGroup:6.30'.
	self
		assert: tmp_LIMz3CzakV5 canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup:6.31'.
	self
		assert: tmp_LIMz3CzakV5 canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup:6.32'.
	self
		assert: tmp_LIMz3CzakV5 canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup:6.33'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.34'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup:6.35'.
	self
		assert: tmp_LIMz3CzakV5 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup:6.36'.
	self
		assert: tmp_LIMz3CzakV5 canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup:6.37'.
	self
		assert: tmp_LIMz3CzakV5 canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup:6.38'.
	self
		assert: tmp_LIMz3CzakV5 canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup:6.39'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup:6.40'.
	self
		assert: tmp_LIMz3CzakV5 canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup:6.41'.
	self
		assert: tmp_LIMz3CzakV5 canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup:6.42'.
	self
		assert: tmp_LIMz3CzakV5 canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup:6.43'.
	self
		assert: tmp_LIMz3CzakV5 wantsSteps class
		equals: False
		description: 'testDrawCanvasWithGroup:6.44'.
	self
		assert: tmp_LIMz3CzakV5 wantsSteps
		equals: false
		description: 'testDrawCanvasWithGroup:6.45'.
	self
		assert: tmp_LIMz3CzakV5 isDragging class
		equals: False
		description: 'testDrawCanvasWithGroup:6.46'.
	self
		assert: tmp_LIMz3CzakV5 isDragging
		equals: false
		description: 'testDrawCanvasWithGroup:6.47'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testDrawFixed [
	<madeBySmallAmp>
	| box tmp_f1lbs83IzF12 |
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	self assert: box class equals: TSBox description: 'testDrawFixed:1.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed:1.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed:1.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed:1.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed:1.5'.
	box isFixed: true.
	self assert: box class equals: TSBox description: 'testDrawFixed:2.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed:2.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed:2.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed:2.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed:2.5'.
	c addShape: box.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawFixed:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawFixed:3.2'.
	self
		assert: c fixedShapes size
		equals: 1
		description: 'testDrawFixed:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawFixed:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawFixed:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawFixed:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawFixed:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawFixed:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawFixed:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawFixed:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawFixed:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawFixed:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawFixed:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawFixed:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawFixed:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawFixed:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawFixed:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawFixed:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawFixed:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawFixed:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawFixed:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawFixed:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawFixed:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawFixed:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawFixed:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawFixed:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawFixed:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawFixed:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed:3.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawFixed:3.33'.
	self assert: c morph equals: nil description: 'testDrawFixed:3.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawFixed:3.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawFixed:3.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawFixed:3.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawFixed:3.38'.
	self assert: c extent y equals: 500 description: 'testDrawFixed:3.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawFixed:3.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawFixed:3.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawFixed:3.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawFixed:3.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawFixed:3.44'.
	self assert: c extent x equals: 500 description: 'testDrawFixed:3.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawFixed:3.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawFixed:3.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawFixed:3.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawFixed:3.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawFixed:3.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed:3.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawFixed:3.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawFixed:3.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawFixed:3.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawFixed:3.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawFixed:3.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawFixed:3.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.59'.
	self
		assert: c parent numberOfShapes
		equals: 0
		description: 'testDrawFixed:3.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawFixed:3.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawFixed:3.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawFixed:3.63'.
	self
		assert: c shapes size
		equals: 0
		description: 'testDrawFixed:3.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawFixed:3.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed:3.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawFixed:3.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed:3.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed:3.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed:3.70'.
	self
		assert: c encompassingRectangle area
		equals: 1
		description: 'testDrawFixed:3.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawFixed:3.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawFixed:3.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed:3.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawFixed:3.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed:3.76'.
	self
		assert: c encompassingRectangle width
		equals: 1
		description: 'testDrawFixed:3.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed:3.78'.
	self
		assert: c encompassingRectangle right
		equals: 1
		description: 'testDrawFixed:3.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawFixed:3.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawFixed:3.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawFixed:3.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawFixed:3.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed:3.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1
		description: 'testDrawFixed:3.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawFixed:3.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawFixed:3.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed:3.88'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawFixed:3.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawFixed:3.90'.
	self assert: c view equals: nil description: 'testDrawFixed:3.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawFixed:3.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawFixed:3.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawFixed:3.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed:3.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawFixed:3.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed:3.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed:3.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed:3.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawFixed:3.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawFixed:3.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawFixed:3.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed:3.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawFixed:3.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed:3.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawFixed:3.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed:3.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawFixed:3.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawFixed:3.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawFixed:3.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawFixed:3.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawFixed:3.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed:3.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawFixed:3.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawFixed:3.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawFixed:3.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed:3.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawFixed:3.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawFixed:3.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawFixed:3.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawFixed:3.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed:3.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawFixed:3.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawFixed:3.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawFixed:3.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawFixed:3.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawFixed:3.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawFixed:3.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.130'.
	self
		assert: c topParent numberOfShapes
		equals: 0
		description: 'testDrawFixed:3.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawFixed:3.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawFixed:3.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.134'.
	self
		assert: c numberOfShapes
		equals: 0
		description: 'testDrawFixed:3.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawFixed:3.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawFixed:3.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawFixed:3.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed:3.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawFixed:3.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawFixed:3.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed:3.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawFixed:3.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawFixed:3.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawFixed:3.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:3.147'.
	self
		assert: c canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed:3.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawFixed:3.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawFixed:3.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawFixed:3.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawFixed:3.152'.
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	self assert: box class equals: TSBox description: 'testDrawFixed:4.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed:4.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed:4.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed:4.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed:4.5'.
	c addShape: box.
	box setAsFixed.
	self assert: box class equals: TSBox description: 'testDrawFixed:6.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed:6.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed:6.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed:6.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed:6.5'.
	tmp_f1lbs83IzF12 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawFixed:7.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawFixed:7.2'.
	self
		assert: c fixedShapes size
		equals: 2
		description: 'testDrawFixed:7.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawFixed:7.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawFixed:7.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawFixed:7.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawFixed:7.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawFixed:7.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawFixed:7.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawFixed:7.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed:7.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawFixed:7.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawFixed:7.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawFixed:7.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawFixed:7.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawFixed:7.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawFixed:7.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawFixed:7.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawFixed:7.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawFixed:7.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawFixed:7.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawFixed:7.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed:7.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawFixed:7.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawFixed:7.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawFixed:7.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawFixed:7.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawFixed:7.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawFixed:7.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawFixed:7.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.31'.
	self
		assert: c numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:7.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawFixed:7.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawFixed:7.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawFixed:7.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawFixed:7.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawFixed:7.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawFixed:7.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawFixed:7.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawFixed:7.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawFixed:7.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawFixed:7.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawFixed:7.43'.
	self assert: c extent y equals: 500 description: 'testDrawFixed:7.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawFixed:7.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawFixed:7.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawFixed:7.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawFixed:7.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawFixed:7.49'.
	self assert: c extent x equals: 500 description: 'testDrawFixed:7.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawFixed:7.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawFixed:7.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawFixed:7.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawFixed:7.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawFixed:7.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:7.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawFixed:7.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawFixed:7.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawFixed:7.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawFixed:7.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.62'.
	self
		assert: c parent numberOfShapes
		equals: 0
		description: 'testDrawFixed:7.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawFixed:7.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawFixed:7.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawFixed:7.66'.
	self
		assert: c shapes size
		equals: 0
		description: 'testDrawFixed:7.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawFixed:7.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed:7.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawFixed:7.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed:7.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed:7.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed:7.73'.
	self
		assert: c encompassingRectangle area
		equals: 1
		description: 'testDrawFixed:7.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawFixed:7.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawFixed:7.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed:7.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawFixed:7.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed:7.79'.
	self
		assert: c encompassingRectangle width
		equals: 1
		description: 'testDrawFixed:7.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed:7.81'.
	self
		assert: c encompassingRectangle right
		equals: 1
		description: 'testDrawFixed:7.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawFixed:7.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawFixed:7.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawFixed:7.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawFixed:7.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed:7.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 1
		description: 'testDrawFixed:7.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawFixed:7.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawFixed:7.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed:7.91'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawFixed:7.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawFixed:7.93'.
	self assert: c view equals: nil description: 'testDrawFixed:7.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawFixed:7.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawFixed:7.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawFixed:7.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed:7.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawFixed:7.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed:7.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed:7.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed:7.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawFixed:7.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawFixed:7.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawFixed:7.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed:7.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawFixed:7.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed:7.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawFixed:7.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed:7.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawFixed:7.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawFixed:7.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawFixed:7.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawFixed:7.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawFixed:7.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed:7.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawFixed:7.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawFixed:7.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawFixed:7.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed:7.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawFixed:7.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawFixed:7.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawFixed:7.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawFixed:7.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:7.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawFixed:7.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawFixed:7.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawFixed:7.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawFixed:7.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.131'.
	self
		assert: c topParent numberOfShapes
		equals: 0
		description: 'testDrawFixed:7.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawFixed:7.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawFixed:7.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.135'.
	self
		assert: c numberOfShapes
		equals: 0
		description: 'testDrawFixed:7.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawFixed:7.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawFixed:7.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawFixed:7.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:7.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed:7.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawFixed:7.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawFixed:7.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawFixed:7.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.146'.
	self
		assert: c canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed:7.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawFixed:7.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawFixed:7.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawFixed:7.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawFixed:7.151'.
	self
		assert: tmp_f1lbs83IzF12 class
		equals: TSAthensMorph
		description: 'testDrawFixed:7.1'.
	self
		assert: tmp_f1lbs83IzF12 isDrawing class
		equals: False
		description: 'testDrawFixed:7.2'.
	self
		assert: tmp_f1lbs83IzF12 isDrawing
		equals: false
		description: 'testDrawFixed:7.3'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawFixed:7.4'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawFixed:7.5'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas showRectangles
		equals: false
		description: 'testDrawFixed:7.6'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.7'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:7.8'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawFixed:7.9'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas view
		equals: nil
		description: 'testDrawFixed:7.10'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas isShape class
		equals: False
		description: 'testDrawFixed:7.11'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas isShape
		equals: false
		description: 'testDrawFixed:7.12'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.13'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfShapes
		equals: 0
		description: 'testDrawFixed:7.14'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawFixed:7.15'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas clearBackground
		equals: true
		description: 'testDrawFixed:7.16'.
	self
		assert: tmp_f1lbs83IzF12 renderer class
		equals: TSAthensRenderer
		description: 'testDrawFixed:7.17'.
	self
		assert: tmp_f1lbs83IzF12 renderer builder class
		equals: UndefinedObject
		description: 'testDrawFixed:7.18'.
	self
		assert: tmp_f1lbs83IzF12 renderer builder
		equals: nil
		description: 'testDrawFixed:7.19'.
	self
		assert: tmp_f1lbs83IzF12 surface class
		equals: AthensCairoSurface
		description: 'testDrawFixed:7.20'.
	self
		assert: tmp_f1lbs83IzF12 surface status class
		equals: SmallInteger
		description: 'testDrawFixed:7.21'.
	self
		assert: tmp_f1lbs83IzF12 surface status
		equals: 0
		description: 'testDrawFixed:7.22'.
	self
		assert: tmp_f1lbs83IzF12 surface width class
		equals: SmallInteger
		description: 'testDrawFixed:7.23'.
	self
		assert: tmp_f1lbs83IzF12 surface width
		equals: 50
		description: 'testDrawFixed:7.24'.
	self
		assert: tmp_f1lbs83IzF12 surface height class
		equals: SmallInteger
		description: 'testDrawFixed:7.25'.
	self
		assert: tmp_f1lbs83IzF12 surface height
		equals: 40
		description: 'testDrawFixed:7.26'.
	self
		assert: tmp_f1lbs83IzF12 surface isSuccess class
		equals: True
		description: 'testDrawFixed:7.27'.
	self
		assert: tmp_f1lbs83IzF12 surface isSuccess
		equals: true
		description: 'testDrawFixed:7.28'.
	self
		assert: tmp_f1lbs83IzF12 surface stride class
		equals: SmallInteger
		description: 'testDrawFixed:7.29'.
	self
		assert: tmp_f1lbs83IzF12 surface stride
		equals: 200
		description: 'testDrawFixed:7.30'.
	self
		assert: tmp_f1lbs83IzF12 canvas class
		equals: TSCanvas
		description: 'testDrawFixed:7.31'.
	self
		assert: tmp_f1lbs83IzF12 canvas showRectangles class
		equals: False
		description: 'testDrawFixed:7.32'.
	self
		assert: tmp_f1lbs83IzF12 canvas showRectangles
		equals: false
		description: 'testDrawFixed:7.33'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.34'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:7.35'.
	self
		assert: tmp_f1lbs83IzF12 canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed:7.36'.
	self
		assert: tmp_f1lbs83IzF12 canvas view
		equals: nil
		description: 'testDrawFixed:7.37'.
	self
		assert: tmp_f1lbs83IzF12 canvas isShape class
		equals: False
		description: 'testDrawFixed:7.38'.
	self
		assert: tmp_f1lbs83IzF12 canvas isShape
		equals: false
		description: 'testDrawFixed:7.39'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:7.40'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed:7.41'.
	self
		assert: tmp_f1lbs83IzF12 canvas clearBackground class
		equals: True
		description: 'testDrawFixed:7.42'.
	self
		assert: tmp_f1lbs83IzF12 canvas clearBackground
		equals: true
		description: 'testDrawFixed:7.43'.
	self
		assert: tmp_f1lbs83IzF12 wantsSteps class
		equals: False
		description: 'testDrawFixed:7.44'.
	self
		assert: tmp_f1lbs83IzF12 wantsSteps
		equals: false
		description: 'testDrawFixed:7.45'.
	self
		assert: tmp_f1lbs83IzF12 isDragging class
		equals: False
		description: 'testDrawFixed:7.46'.
	self
		assert: tmp_f1lbs83IzF12 isDragging
		equals: false
		description: 'testDrawFixed:7.47'.
	tmp_f1lbs83IzF12 drawOnMockCanvas.
	self
		assert: tmp_f1lbs83IzF12 class
		equals: TSAthensMorph
		description: 'testDrawFixed:8.1'.
	self
		assert: tmp_f1lbs83IzF12 isDrawing class
		equals: False
		description: 'testDrawFixed:8.2'.
	self
		assert: tmp_f1lbs83IzF12 isDrawing
		equals: false
		description: 'testDrawFixed:8.3'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawFixed:8.4'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawFixed:8.5'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas showRectangles
		equals: false
		description: 'testDrawFixed:8.6'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:8.7'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:8.8'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawFixed:8.9'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas view
		equals: nil
		description: 'testDrawFixed:8.10'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas isShape class
		equals: False
		description: 'testDrawFixed:8.11'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas isShape
		equals: false
		description: 'testDrawFixed:8.12'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:8.13'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas numberOfShapes
		equals: 0
		description: 'testDrawFixed:8.14'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawFixed:8.15'.
	self
		assert: tmp_f1lbs83IzF12 trachelCanvas clearBackground
		equals: true
		description: 'testDrawFixed:8.16'.
	self
		assert: tmp_f1lbs83IzF12 renderer class
		equals: TSAthensRenderer
		description: 'testDrawFixed:8.17'.
	self
		assert: tmp_f1lbs83IzF12 renderer builder class
		equals: UndefinedObject
		description: 'testDrawFixed:8.18'.
	self
		assert: tmp_f1lbs83IzF12 renderer builder
		equals: nil
		description: 'testDrawFixed:8.19'.
	self
		assert: tmp_f1lbs83IzF12 surface class
		equals: AthensCairoSurface
		description: 'testDrawFixed:8.20'.
	self
		assert: tmp_f1lbs83IzF12 surface status class
		equals: SmallInteger
		description: 'testDrawFixed:8.21'.
	self
		assert: tmp_f1lbs83IzF12 surface status
		equals: 0
		description: 'testDrawFixed:8.22'.
	self
		assert: tmp_f1lbs83IzF12 surface width class
		equals: SmallInteger
		description: 'testDrawFixed:8.23'.
	self
		assert: tmp_f1lbs83IzF12 surface width
		equals: 50
		description: 'testDrawFixed:8.24'.
	self
		assert: tmp_f1lbs83IzF12 surface height class
		equals: SmallInteger
		description: 'testDrawFixed:8.25'.
	self
		assert: tmp_f1lbs83IzF12 surface height
		equals: 40
		description: 'testDrawFixed:8.26'.
	self
		assert: tmp_f1lbs83IzF12 surface isSuccess class
		equals: True
		description: 'testDrawFixed:8.27'.
	self
		assert: tmp_f1lbs83IzF12 surface isSuccess
		equals: true
		description: 'testDrawFixed:8.28'.
	self
		assert: tmp_f1lbs83IzF12 surface stride class
		equals: SmallInteger
		description: 'testDrawFixed:8.29'.
	self
		assert: tmp_f1lbs83IzF12 surface stride
		equals: 200
		description: 'testDrawFixed:8.30'.
	self
		assert: tmp_f1lbs83IzF12 canvas class
		equals: TSCanvas
		description: 'testDrawFixed:8.31'.
	self
		assert: tmp_f1lbs83IzF12 canvas showRectangles class
		equals: False
		description: 'testDrawFixed:8.32'.
	self
		assert: tmp_f1lbs83IzF12 canvas showRectangles
		equals: false
		description: 'testDrawFixed:8.33'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed:8.34'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed:8.35'.
	self
		assert: tmp_f1lbs83IzF12 canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed:8.36'.
	self
		assert: tmp_f1lbs83IzF12 canvas view
		equals: nil
		description: 'testDrawFixed:8.37'.
	self
		assert: tmp_f1lbs83IzF12 canvas isShape class
		equals: False
		description: 'testDrawFixed:8.38'.
	self
		assert: tmp_f1lbs83IzF12 canvas isShape
		equals: false
		description: 'testDrawFixed:8.39'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed:8.40'.
	self
		assert: tmp_f1lbs83IzF12 canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed:8.41'.
	self
		assert: tmp_f1lbs83IzF12 canvas clearBackground class
		equals: True
		description: 'testDrawFixed:8.42'.
	self
		assert: tmp_f1lbs83IzF12 canvas clearBackground
		equals: true
		description: 'testDrawFixed:8.43'.
	self
		assert: tmp_f1lbs83IzF12 wantsSteps class
		equals: False
		description: 'testDrawFixed:8.44'.
	self
		assert: tmp_f1lbs83IzF12 wantsSteps
		equals: false
		description: 'testDrawFixed:8.45'.
	self
		assert: tmp_f1lbs83IzF12 isDragging class
		equals: False
		description: 'testDrawFixed:8.46'.
	self
		assert: tmp_f1lbs83IzF12 isDragging
		equals: false
		description: 'testDrawFixed:8.47'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testEmpty [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testEvent [
	<madeBySmallAmp>
	| box |
	box := TSBox new.
	self assert: box class equals: TSBox description: 'testEvent:1.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testEvent:1.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testEvent:1.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testEvent:1.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testEvent:1.5'.
	box when: TSMouseClick do: [ :evt |  ].
	self assert: box class equals: TSBox description: 'testEvent:2.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testEvent:2.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testEvent:2.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testEvent:2.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testEvent:2.5'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testLowLevelEvent [
	<madeBySmallAmp>
	| box |
	box := TSBox new size: 30.
	self
		assert: box class
		equals: TSBox
		description: 'testLowLevelEvent:1.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testLowLevelEvent:1.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testLowLevelEvent:1.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testLowLevelEvent:1.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testLowLevelEvent:1.5'.
	box when: TSMouseDragging do: [ :evt | box ].
	self
		assert: box class
		equals: TSBox
		description: 'testLowLevelEvent:2.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testLowLevelEvent:2.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testLowLevelEvent:2.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testLowLevelEvent:2.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testLowLevelEvent:2.5'.
	c addShape: box.
	self
		assert: c class
		equals: TSCanvas
		description: 'testLowLevelEvent:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testLowLevelEvent:3.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testLowLevelEvent:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testLowLevelEvent:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testLowLevelEvent:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testLowLevelEvent:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testLowLevelEvent:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testLowLevelEvent:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testLowLevelEvent:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testLowLevelEvent:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testLowLevelEvent:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testLowLevelEvent:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testLowLevelEvent:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testLowLevelEvent:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testLowLevelEvent:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testLowLevelEvent:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testLowLevelEvent:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testLowLevelEvent:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent:3.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.33'.
	self
		assert: c morph
		equals: nil
		description: 'testLowLevelEvent:3.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testLowLevelEvent:3.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testLowLevelEvent:3.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testLowLevelEvent:3.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testLowLevelEvent:3.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testLowLevelEvent:3.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testLowLevelEvent:3.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testLowLevelEvent:3.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testLowLevelEvent:3.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testLowLevelEvent:3.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testLowLevelEvent:3.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testLowLevelEvent:3.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testLowLevelEvent:3.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testLowLevelEvent:3.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testLowLevelEvent:3.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent:3.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testLowLevelEvent:3.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testLowLevelEvent:3.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testLowLevelEvent:3.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testLowLevelEvent:3.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testLowLevelEvent:3.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testLowLevelEvent:3.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testLowLevelEvent:3.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testLowLevelEvent:3.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testLowLevelEvent:3.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testLowLevelEvent:3.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.66'.
	self
		assert: c encompassingRectangle top
		equals: -15.0
		description: 'testLowLevelEvent:3.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testLowLevelEvent:3.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testLowLevelEvent:3.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.70'.
	self
		assert: c encompassingRectangle area
		equals: 900.0
		description: 'testLowLevelEvent:3.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testLowLevelEvent:3.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testLowLevelEvent:3.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.74'.
	self
		assert: c encompassingRectangle left
		equals: -15.0
		description: 'testLowLevelEvent:3.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.76'.
	self
		assert: c encompassingRectangle width
		equals: 30.0
		description: 'testLowLevelEvent:3.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.78'.
	self
		assert: c encompassingRectangle right
		equals: 15.0
		description: 'testLowLevelEvent:3.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testLowLevelEvent:3.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testLowLevelEvent:3.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testLowLevelEvent:3.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testLowLevelEvent:3.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 15.0
		description: 'testLowLevelEvent:3.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testLowLevelEvent:3.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testLowLevelEvent:3.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testLowLevelEvent:3.88'.
	self
		assert: c encompassingRectangle height
		equals: 30.0
		description: 'testLowLevelEvent:3.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.90'.
	self assert: c view equals: nil description: 'testLowLevelEvent:3.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testLowLevelEvent:3.92'.
	self
		assert: c isShape
		equals: false
		description: 'testLowLevelEvent:3.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testLowLevelEvent:3.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testLowLevelEvent:3.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testLowLevelEvent:3.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testLowLevelEvent:3.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testLowLevelEvent:3.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testLowLevelEvent:3.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testLowLevelEvent:3.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testLowLevelEvent:3.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testLowLevelEvent:3.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testLowLevelEvent:3.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testLowLevelEvent:3.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testLowLevelEvent:3.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testLowLevelEvent:3.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testLowLevelEvent:3.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testLowLevelEvent:3.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testLowLevelEvent:3.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testLowLevelEvent:3.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testLowLevelEvent:3.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testLowLevelEvent:3.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testLowLevelEvent:3.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testLowLevelEvent:3.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent:3.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testLowLevelEvent:3.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testLowLevelEvent:3.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testLowLevelEvent:3.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testLowLevelEvent:3.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testLowLevelEvent:3.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testLowLevelEvent:3.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testLowLevelEvent:3.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testLowLevelEvent:3.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testLowLevelEvent:3.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testLowLevelEvent:3.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testLowLevelEvent:3.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent:3.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testLowLevelEvent:3.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testLowLevelEvent:3.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testLowLevelEvent:3.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testLowLevelEvent:3.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testLowLevelEvent:3.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent:3.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testLowLevelEvent:3.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testLowLevelEvent:3.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testLowLevelEvent:3.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testLowLevelEvent:3.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testLowLevelEvent:3.152'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testNestedShape [
	<madeBySmallAmp>
	| shape innerShape |
	shape := TSComposite new.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShape:1.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShape:1.2'.
	self
		assert: shape shapes size
		equals: 0
		description: 'testNestedShape:1.3'.
	c addShape: shape.
	self
		assert: c class
		equals: TSCanvas
		description: 'testNestedShape:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testNestedShape:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testNestedShape:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testNestedShape:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testNestedShape:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testNestedShape:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testNestedShape:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testNestedShape:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testNestedShape:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testNestedShape:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testNestedShape:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testNestedShape:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testNestedShape:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testNestedShape:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testNestedShape:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testNestedShape:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testNestedShape:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testNestedShape:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testNestedShape:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testNestedShape:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testNestedShape:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testNestedShape:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testNestedShape:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testNestedShape:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testNestedShape:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testNestedShape:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testNestedShape:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testNestedShape:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testNestedShape:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testNestedShape:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testNestedShape:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testNestedShape:2.33'.
	self assert: c morph equals: nil description: 'testNestedShape:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testNestedShape:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testNestedShape:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testNestedShape:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testNestedShape:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testNestedShape:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testNestedShape:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testNestedShape:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testNestedShape:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testNestedShape:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testNestedShape:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testNestedShape:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testNestedShape:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testNestedShape:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testNestedShape:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testNestedShape:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testNestedShape:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testNestedShape:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testNestedShape:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testNestedShape:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testNestedShape:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testNestedShape:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testNestedShape:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testNestedShape:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testNestedShape:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testNestedShape:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testNestedShape:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testNestedShape:2.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testNestedShape:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testNestedShape:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testNestedShape:2.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testNestedShape:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testNestedShape:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testNestedShape:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testNestedShape:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testNestedShape:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testNestedShape:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testNestedShape:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testNestedShape:2.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testNestedShape:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testNestedShape:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testNestedShape:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testNestedShape:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testNestedShape:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testNestedShape:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testNestedShape:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testNestedShape:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testNestedShape:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testNestedShape:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testNestedShape:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testNestedShape:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testNestedShape:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testNestedShape:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testNestedShape:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testNestedShape:2.90'.
	self assert: c view equals: nil description: 'testNestedShape:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testNestedShape:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testNestedShape:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testNestedShape:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testNestedShape:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testNestedShape:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testNestedShape:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testNestedShape:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testNestedShape:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testNestedShape:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testNestedShape:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testNestedShape:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testNestedShape:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testNestedShape:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testNestedShape:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testNestedShape:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testNestedShape:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testNestedShape:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testNestedShape:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testNestedShape:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testNestedShape:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testNestedShape:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testNestedShape:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testNestedShape:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testNestedShape:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testNestedShape:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testNestedShape:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testNestedShape:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testNestedShape:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testNestedShape:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testNestedShape:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testNestedShape:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testNestedShape:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testNestedShape:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testNestedShape:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testNestedShape:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testNestedShape:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testNestedShape:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testNestedShape:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testNestedShape:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testNestedShape:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testNestedShape:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testNestedShape:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testNestedShape:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testNestedShape:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testNestedShape:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testNestedShape:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testNestedShape:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testNestedShape:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testNestedShape:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testNestedShape:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testNestedShape:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testNestedShape:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testNestedShape:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testNestedShape:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testNestedShape:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testNestedShape:2.152'.
	innerShape := TSBox new.
	self
		assert: innerShape class
		equals: TSBox
		description: 'testNestedShape:3.1'.
	self
		assert: innerShape cornerRadius class
		equals: UndefinedObject
		description: 'testNestedShape:3.2'.
	self
		assert: innerShape cornerRadius
		equals: nil
		description: 'testNestedShape:3.3'.
	self
		assert: innerShape hasCornerRadius class
		equals: False
		description: 'testNestedShape:3.4'.
	self
		assert: innerShape hasCornerRadius
		equals: false
		description: 'testNestedShape:3.5'.
	shape add: innerShape.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShape:4.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShape:4.2'.
	self
		assert: shape shapes size
		equals: 1
		description: 'testNestedShape:4.3'.
	self
		assert: shape camera class
		equals: TSCamera
		description: 'testNestedShape:4.4'.
	self
		assert: shape camera scale class
		equals: SmallFloat64
		description: 'testNestedShape:4.5'.
	self
		assert: shape camera scale
		equals: 1.0000001
		description: 'testNestedShape:4.6'.
	self
		assert: shape view class
		equals: UndefinedObject
		description: 'testNestedShape:4.7'.
	self
		assert: shape view
		equals: nil
		description: 'testNestedShape:4.8'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testNestedShapeNotAddedToACanvas [
	<madeBySmallAmp>
	| shape innerShape |
	shape := TSComposite new.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShapeNotAddedToACanvas:1.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShapeNotAddedToACanvas:1.2'.
	self
		assert: shape shapes size
		equals: 0
		description: 'testNestedShapeNotAddedToACanvas:1.3'.
	innerShape := TSBox new.
	self
		assert: innerShape class
		equals: TSBox
		description: 'testNestedShapeNotAddedToACanvas:2.1'.
	self
		assert: innerShape cornerRadius class
		equals: UndefinedObject
		description: 'testNestedShapeNotAddedToACanvas:2.2'.
	self
		assert: innerShape cornerRadius
		equals: nil
		description: 'testNestedShapeNotAddedToACanvas:2.3'.
	self
		assert: innerShape hasCornerRadius class
		equals: False
		description: 'testNestedShapeNotAddedToACanvas:2.4'.
	self
		assert: innerShape hasCornerRadius
		equals: false
		description: 'testNestedShapeNotAddedToACanvas:2.5'.
	shape add: innerShape.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShapeNotAddedToACanvas:3.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShapeNotAddedToACanvas:3.2'.
	self
		assert: shape shapes size
		equals: 1
		description: 'testNestedShapeNotAddedToACanvas:3.3'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testOpening [
	<madeBySmallAmp>
	| tmp_GDMzqKewMV2 |
	tmp_GDMzqKewMV2 := c open.
	self assert: c class equals: TSCanvas description: 'testOpening:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testOpening:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testOpening:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testOpening:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testOpening:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testOpening:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testOpening:1.7'.
	self assert: c color alpha equals: 1.0 description: 'testOpening:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testOpening:1.9'.
	self assert: c color red equals: 1.0 description: 'testOpening:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testOpening:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testOpening:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testOpening:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testOpening:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testOpening:1.15'.
	self assert: c color hue equals: 0.0 description: 'testOpening:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testOpening:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testOpening:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testOpening:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testOpening:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testOpening:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testOpening:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testOpening:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testOpening:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testOpening:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testOpening:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testOpening:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testOpening:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testOpening:1.29'.
	self assert: c color blue equals: 1.0 description: 'testOpening:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testOpening:1.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testOpening:1.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testOpening:1.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testOpening:1.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testOpening:1.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testOpening:1.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testOpening:1.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testOpening:1.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testOpening:1.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testOpening:1.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testOpening:1.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testOpening:1.43'.
	self assert: c extent y equals: 500 description: 'testOpening:1.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testOpening:1.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testOpening:1.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testOpening:1.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testOpening:1.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testOpening:1.49'.
	self assert: c extent x equals: 500 description: 'testOpening:1.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testOpening:1.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testOpening:1.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testOpening:1.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testOpening:1.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testOpening:1.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening:1.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testOpening:1.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testOpening:1.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testOpening:1.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testOpening:1.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testOpening:1.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testOpening:1.62'.
	self
		assert: c parent numberOfShapes
		equals: 0
		description: 'testOpening:1.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testOpening:1.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testOpening:1.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testOpening:1.66'.
	self assert: c shapes size equals: 0 description: 'testOpening:1.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testOpening:1.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testOpening:1.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testOpening:1.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testOpening:1.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testOpening:1.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testOpening:1.73'.
	self
		assert: c encompassingRectangle area
		equals: 1
		description: 'testOpening:1.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testOpening:1.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testOpening:1.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testOpening:1.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testOpening:1.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testOpening:1.79'.
	self
		assert: c encompassingRectangle width
		equals: 1
		description: 'testOpening:1.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testOpening:1.81'.
	self
		assert: c encompassingRectangle right
		equals: 1
		description: 'testOpening:1.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testOpening:1.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testOpening:1.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testOpening:1.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testOpening:1.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testOpening:1.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 1
		description: 'testOpening:1.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testOpening:1.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testOpening:1.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testOpening:1.91'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testOpening:1.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testOpening:1.93'.
	self assert: c view equals: nil description: 'testOpening:1.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testOpening:1.95'.
	self assert: c isShape equals: false description: 'testOpening:1.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testOpening:1.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testOpening:1.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testOpening:1.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testOpening:1.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testOpening:1.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testOpening:1.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testOpening:1.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testOpening:1.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testOpening:1.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testOpening:1.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testOpening:1.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testOpening:1.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testOpening:1.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testOpening:1.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testOpening:1.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testOpening:1.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testOpening:1.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testOpening:1.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testOpening:1.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testOpening:1.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testOpening:1.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testOpening:1.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testOpening:1.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testOpening:1.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testOpening:1.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testOpening:1.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testOpening:1.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testOpening:1.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening:1.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testOpening:1.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testOpening:1.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testOpening:1.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testOpening:1.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testOpening:1.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testOpening:1.131'.
	self
		assert: c topParent numberOfShapes
		equals: 0
		description: 'testOpening:1.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testOpening:1.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testOpening:1.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testOpening:1.135'.
	self
		assert: c numberOfShapes
		equals: 0
		description: 'testOpening:1.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testOpening:1.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testOpening:1.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testOpening:1.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening:1.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testOpening:1.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testOpening:1.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testOpening:1.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testOpening:1.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testOpening:1.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testOpening:1.146'.
	self
		assert: c canvas numberOfShapes
		equals: 0
		description: 'testOpening:1.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testOpening:1.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testOpening:1.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testOpening:1.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testOpening:1.151'.
	self
		assert: tmp_GDMzqKewMV2 class
		equals: SystemWindow
		description: 'testOpening:1.1'.
	self
		assert: tmp_GDMzqKewMV2 isSystemWindow class
		equals: True
		description: 'testOpening:1.2'.
	self
		assert: tmp_GDMzqKewMV2 isSystemWindow
		equals: true
		description: 'testOpening:1.3'.
	self
		assert: tmp_GDMzqKewMV2 embeddable class
		equals: False
		description: 'testOpening:1.4'.
	self
		assert: tmp_GDMzqKewMV2 embeddable
		equals: false
		description: 'testOpening:1.5'.
	self
		assert: tmp_GDMzqKewMV2 isDisplayed class
		equals: True
		description: 'testOpening:1.6'.
	self
		assert: tmp_GDMzqKewMV2 isDisplayed
		equals: true
		description: 'testOpening:1.7'.
	self
		assert: tmp_GDMzqKewMV2 isCloseable class
		equals: True
		description: 'testOpening:1.8'.
	self
		assert: tmp_GDMzqKewMV2 isCloseable
		equals: true
		description: 'testOpening:1.9'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil class
		equals: SystemWindow
		description: 'testOpening:1.10'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isSystemWindow class
		equals: True
		description: 'testOpening:1.11'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isSystemWindow
		equals: true
		description: 'testOpening:1.12'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil embeddable class
		equals: False
		description: 'testOpening:1.13'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil embeddable
		equals: false
		description: 'testOpening:1.14'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isDisplayed class
		equals: True
		description: 'testOpening:1.15'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isDisplayed
		equals: true
		description: 'testOpening:1.16'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isCloseable class
		equals: True
		description: 'testOpening:1.17'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isCloseable
		equals: true
		description: 'testOpening:1.18'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil shouldDropOnMouseUp class
		equals: True
		description: 'testOpening:1.19'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil shouldDropOnMouseUp
		equals: true
		description: 'testOpening:1.20'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil wantsToBeCachedByHand class
		equals: True
		description: 'testOpening:1.21'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil wantsToBeCachedByHand
		equals: true
		description: 'testOpening:1.22'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil canBeMaximized class
		equals: True
		description: 'testOpening:1.23'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil canBeMaximized
		equals: true
		description: 'testOpening:1.24'.
	self
		assert: tmp_GDMzqKewMV2 shouldDropOnMouseUp class
		equals: True
		description: 'testOpening:1.25'.
	self
		assert: tmp_GDMzqKewMV2 shouldDropOnMouseUp
		equals: true
		description: 'testOpening:1.26'.
	self
		assert: tmp_GDMzqKewMV2 wantsToBeCachedByHand class
		equals: True
		description: 'testOpening:1.27'.
	self
		assert: tmp_GDMzqKewMV2 wantsToBeCachedByHand
		equals: true
		description: 'testOpening:1.28'.
	self
		assert: tmp_GDMzqKewMV2 canBeMaximized class
		equals: True
		description: 'testOpening:1.29'.
	self
		assert: tmp_GDMzqKewMV2 canBeMaximized
		equals: true
		description: 'testOpening:1.30'.
	tmp_GDMzqKewMV2 delete.
	self
		assert: tmp_GDMzqKewMV2 class
		equals: SystemWindow
		description: 'testOpening:2.1'.
	self
		assert: tmp_GDMzqKewMV2 isSystemWindow class
		equals: True
		description: 'testOpening:2.2'.
	self
		assert: tmp_GDMzqKewMV2 isSystemWindow
		equals: true
		description: 'testOpening:2.3'.
	self
		assert: tmp_GDMzqKewMV2 embeddable class
		equals: False
		description: 'testOpening:2.4'.
	self
		assert: tmp_GDMzqKewMV2 embeddable
		equals: false
		description: 'testOpening:2.5'.
	self
		assert: tmp_GDMzqKewMV2 isDisplayed class
		equals: False
		description: 'testOpening:2.6'.
	self
		assert: tmp_GDMzqKewMV2 isDisplayed
		equals: false
		description: 'testOpening:2.7'.
	self
		assert: tmp_GDMzqKewMV2 isCloseable class
		equals: True
		description: 'testOpening:2.8'.
	self
		assert: tmp_GDMzqKewMV2 isCloseable
		equals: true
		description: 'testOpening:2.9'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil class
		equals: SystemWindow
		description: 'testOpening:2.10'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isSystemWindow class
		equals: True
		description: 'testOpening:2.11'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isSystemWindow
		equals: true
		description: 'testOpening:2.12'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil embeddable class
		equals: False
		description: 'testOpening:2.13'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil embeddable
		equals: false
		description: 'testOpening:2.14'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isDisplayed class
		equals: False
		description: 'testOpening:2.15'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isDisplayed
		equals: false
		description: 'testOpening:2.16'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isCloseable class
		equals: True
		description: 'testOpening:2.17'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil isCloseable
		equals: true
		description: 'testOpening:2.18'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil shouldDropOnMouseUp class
		equals: True
		description: 'testOpening:2.19'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil shouldDropOnMouseUp
		equals: true
		description: 'testOpening:2.20'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil wantsToBeCachedByHand class
		equals: True
		description: 'testOpening:2.21'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil wantsToBeCachedByHand
		equals: true
		description: 'testOpening:2.22'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil canBeMaximized class
		equals: True
		description: 'testOpening:2.23'.
	self
		assert: tmp_GDMzqKewMV2 embeddedWindowOrNil canBeMaximized
		equals: true
		description: 'testOpening:2.24'.
	self
		assert: tmp_GDMzqKewMV2 shouldDropOnMouseUp class
		equals: True
		description: 'testOpening:2.25'.
	self
		assert: tmp_GDMzqKewMV2 shouldDropOnMouseUp
		equals: true
		description: 'testOpening:2.26'.
	self
		assert: tmp_GDMzqKewMV2 wantsToBeCachedByHand class
		equals: True
		description: 'testOpening:2.27'.
	self
		assert: tmp_GDMzqKewMV2 wantsToBeCachedByHand
		equals: true
		description: 'testOpening:2.28'.
	self
		assert: tmp_GDMzqKewMV2 canBeMaximized class
		equals: True
		description: 'testOpening:2.29'.
	self
		assert: tmp_GDMzqKewMV2 canBeMaximized
		equals: true
		description: 'testOpening:2.30'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testRemovingShapes [
	<madeBySmallAmp>
	| e |
	e := TSEllipse new.
	self
		assert: e class
		equals: TSEllipse
		description: 'testRemovingShapes:1.1'.
	self
		assert: e radius class
		equals: SmallFloat64
		description: 'testRemovingShapes:1.2'.
	self
		assert: e radius
		equals: 0.0
		description: 'testRemovingShapes:1.3'.
	c addShape: e.
	self
		assert: c class
		equals: TSCanvas
		description: 'testRemovingShapes:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testRemovingShapes:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testRemovingShapes:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testRemovingShapes:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testRemovingShapes:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testRemovingShapes:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testRemovingShapes:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testRemovingShapes:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testRemovingShapes:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testRemovingShapes:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testRemovingShapes:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testRemovingShapes:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testRemovingShapes:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testRemovingShapes:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testRemovingShapes:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testRemovingShapes:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testRemovingShapes:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testRemovingShapes:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.33'.
	self
		assert: c morph
		equals: nil
		description: 'testRemovingShapes:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testRemovingShapes:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testRemovingShapes:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testRemovingShapes:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testRemovingShapes:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testRemovingShapes:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testRemovingShapes:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testRemovingShapes:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testRemovingShapes:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testRemovingShapes:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testRemovingShapes:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testRemovingShapes:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testRemovingShapes:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testRemovingShapes:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testRemovingShapes:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testRemovingShapes:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testRemovingShapes:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testRemovingShapes:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testRemovingShapes:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testRemovingShapes:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testRemovingShapes:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testRemovingShapes:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testRemovingShapes:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testRemovingShapes:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testRemovingShapes:2.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testRemovingShapes:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testRemovingShapes:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testRemovingShapes:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testRemovingShapes:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testRemovingShapes:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testRemovingShapes:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testRemovingShapes:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testRemovingShapes:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testRemovingShapes:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testRemovingShapes:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testRemovingShapes:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testRemovingShapes:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testRemovingShapes:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testRemovingShapes:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testRemovingShapes:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testRemovingShapes:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testRemovingShapes:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testRemovingShapes:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testRemovingShapes:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testRemovingShapes:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.90'.
	self
		assert: c view
		equals: nil
		description: 'testRemovingShapes:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testRemovingShapes:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testRemovingShapes:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testRemovingShapes:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testRemovingShapes:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testRemovingShapes:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testRemovingShapes:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testRemovingShapes:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testRemovingShapes:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testRemovingShapes:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testRemovingShapes:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testRemovingShapes:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testRemovingShapes:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testRemovingShapes:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testRemovingShapes:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testRemovingShapes:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testRemovingShapes:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testRemovingShapes:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testRemovingShapes:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testRemovingShapes:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testRemovingShapes:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testRemovingShapes:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testRemovingShapes:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testRemovingShapes:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testRemovingShapes:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testRemovingShapes:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testRemovingShapes:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testRemovingShapes:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testRemovingShapes:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testRemovingShapes:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testRemovingShapes:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testRemovingShapes:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testRemovingShapes:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testRemovingShapes:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testRemovingShapes:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testRemovingShapes:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testRemovingShapes:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testRemovingShapes:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testRemovingShapes:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testRemovingShapes:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testRemovingShapes:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testRemovingShapes:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testRemovingShapes:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testRemovingShapes:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testRemovingShapes:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testRemovingShapes:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testRemovingShapes:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testRemovingShapes:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testRemovingShapes:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testRemovingShapes:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testRemovingShapes:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testRemovingShapes:2.152'.
	e remove.
	self
		assert: e class
		equals: TSEllipse
		description: 'testRemovingShapes:3.1'.
	self
		assert: e radius class
		equals: SmallFloat64
		description: 'testRemovingShapes:3.2'.
	self
		assert: e radius
		equals: 0.0
		description: 'testRemovingShapes:3.3'
]
