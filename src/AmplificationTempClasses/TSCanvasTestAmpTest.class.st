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
TSCanvasTestAmpTest >> testAddOneShape_amp [
	<madeBySmallAmp>
	c addShape: TSBox new.
	self
		assert: c class
		equals: TSCanvas
		description: 'testAddOneShape_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testAddOneShape_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testAddOneShape_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testAddOneShape_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testAddOneShape_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testAddOneShape_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testAddOneShape_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testAddOneShape_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testAddOneShape_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testAddOneShape_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testAddOneShape_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testAddOneShape_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testAddOneShape_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testAddOneShape_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testAddOneShape_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testAddOneShape_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testAddOneShape_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testAddOneShape_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testAddOneShape_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testAddOneShape_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testAddOneShape_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testAddOneShape_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testAddOneShape_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testAddOneShape_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testAddOneShape_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testAddOneShape_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testAddOneShape_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testAddOneShape_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testAddOneShape_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testAddOneShape_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testAddOneShape_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testAddOneShape_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testAddOneShape_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testAddOneShape_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testAddOneShape_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testAddOneShape_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testAddOneShape_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testAddOneShape_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testAddOneShape_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testAddOneShape_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testAddOneShape_amp:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testAddOneShape_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testAddOneShape_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testAddOneShape_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testAddOneShape_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testAddOneShape_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testAddOneShape_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testAddOneShape_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testAddOneShape_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testAddOneShape_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testAddOneShape_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testAddOneShape_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testAddOneShape_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testAddOneShape_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testAddOneShape_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testAddOneShape_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testAddOneShape_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testAddOneShape_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testAddOneShape_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testAddOneShape_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testAddOneShape_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.90'.
	self
		assert: c view
		equals: nil
		description: 'testAddOneShape_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testAddOneShape_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testAddOneShape_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testAddOneShape_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testAddOneShape_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testAddOneShape_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testAddOneShape_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testAddOneShape_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testAddOneShape_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testAddOneShape_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testAddOneShape_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testAddOneShape_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testAddOneShape_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testAddOneShape_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testAddOneShape_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testAddOneShape_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testAddOneShape_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testAddOneShape_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testAddOneShape_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testAddOneShape_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testAddOneShape_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testAddOneShape_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testAddOneShape_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testAddOneShape_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testAddOneShape_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testAddOneShape_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testAddOneShape_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testAddOneShape_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testAddOneShape_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testAddOneShape_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testAddOneShape_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testAddOneShape_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testAddOneShape_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testAddOneShape_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testAddOneShape_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testAddOneShape_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testAddOneShape_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testAddOneShape_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testAddOneShape_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testAddOneShape_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testAddOneShape_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddOneShape_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testAddOneShape_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testAddOneShape_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testAddOneShape_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testAddOneShape_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testAddOneShape_amp:1.152'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testDrawCanvasWithGroup_amp [
	<madeBySmallAmp>
	| g tmp_RjMWFht2Ro5 |
	g := TSComposite new.
	self
		assert: g class
		equals: TSComposite
		description: 'testDrawCanvasWithGroup_amp:1.1'.
	self
		assert: g shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup_amp:1.2'.
	self
		assert: g shapes size
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:1.3'.
	g
		add:
			(TSBox new
				extent: 100 @ 100;
				yourself).
	self
		assert: g class
		equals: TSComposite
		description: 'testDrawCanvasWithGroup_amp:2.1'.
	self
		assert: g shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup_amp:2.2'.
	self
		assert: g shapes size
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:2.3'.
	g
		add:
			(TSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	self
		assert: g class
		equals: TSComposite
		description: 'testDrawCanvasWithGroup_amp:3.1'.
	self
		assert: g shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup_amp:3.2'.
	self
		assert: g shapes size
		equals: 2
		description: 'testDrawCanvasWithGroup_amp:3.3'.
	c addShape: g.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:4.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup_amp:4.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:4.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvasWithGroup_amp:4.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:4.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:4.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:4.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:4.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:4.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:4.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvasWithGroup_amp:4.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:4.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:4.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:4.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:4.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:4.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup_amp:4.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:4.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup_amp:4.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:4.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:4.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:4.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:4.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup_amp:4.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:4.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvasWithGroup_amp:4.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:4.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:4.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:4.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:4.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:4.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:4.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:4.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:4.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:4.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:4.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:4.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:4.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:4.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:4.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:4.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:4.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:4.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:4.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:4.152'.
	tmp_RjMWFht2Ro5 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:5.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup_amp:5.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvasWithGroup_amp:5.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:5.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:5.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:5.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:5.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:5.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawCanvasWithGroup_amp:5.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvasWithGroup_amp:5.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:5.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:5.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:5.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:5.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:5.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:5.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvasWithGroup_amp:5.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:5.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup_amp:5.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.69'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:5.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.73'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.77'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testDrawCanvasWithGroup_amp:5.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.79'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.81'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvasWithGroup_amp:5.91'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testDrawCanvasWithGroup_amp:5.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:5.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:5.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvasWithGroup_amp:5.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvasWithGroup_amp:5.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:5.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:5.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:5.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvasWithGroup_amp:5.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:5.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:5.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:5.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:5.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:5.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:5.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:5.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:5.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:5.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.151'.
	self
		assert: tmp_RjMWFht2Ro5 class
		equals: TSAthensMorph
		description: 'testDrawCanvasWithGroup_amp:5.1'.
	self
		assert: tmp_RjMWFht2Ro5 isDrawing class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.2'.
	self
		assert: tmp_RjMWFht2Ro5 isDrawing
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.3'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:5.4'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.5'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.6'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.7'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.8'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:5.9'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:5.10'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.11'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.12'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.13'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:5.14'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.15'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.16'.
	self
		assert: tmp_RjMWFht2Ro5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvasWithGroup_amp:5.17'.
	self
		assert: tmp_RjMWFht2Ro5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:5.18'.
	self
		assert: tmp_RjMWFht2Ro5 renderer builder
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:5.19'.
	self
		assert: tmp_RjMWFht2Ro5 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvasWithGroup_amp:5.20'.
	self
		assert: tmp_RjMWFht2Ro5 surface status class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.21'.
	self
		assert: tmp_RjMWFht2Ro5 surface status
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.22'.
	self
		assert: tmp_RjMWFht2Ro5 surface width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.23'.
	self
		assert: tmp_RjMWFht2Ro5 surface width
		equals: 50
		description: 'testDrawCanvasWithGroup_amp:5.24'.
	self
		assert: tmp_RjMWFht2Ro5 surface height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.25'.
	self
		assert: tmp_RjMWFht2Ro5 surface height
		equals: 40
		description: 'testDrawCanvasWithGroup_amp:5.26'.
	self
		assert: tmp_RjMWFht2Ro5 surface isSuccess class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.27'.
	self
		assert: tmp_RjMWFht2Ro5 surface isSuccess
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.28'.
	self
		assert: tmp_RjMWFht2Ro5 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.29'.
	self
		assert: tmp_RjMWFht2Ro5 surface stride
		equals: 200
		description: 'testDrawCanvasWithGroup_amp:5.30'.
	self
		assert: tmp_RjMWFht2Ro5 canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:5.31'.
	self
		assert: tmp_RjMWFht2Ro5 canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.32'.
	self
		assert: tmp_RjMWFht2Ro5 canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.33'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.34'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:5.35'.
	self
		assert: tmp_RjMWFht2Ro5 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:5.36'.
	self
		assert: tmp_RjMWFht2Ro5 canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:5.37'.
	self
		assert: tmp_RjMWFht2Ro5 canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.38'.
	self
		assert: tmp_RjMWFht2Ro5 canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.39'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:5.40'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:5.41'.
	self
		assert: tmp_RjMWFht2Ro5 canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:5.42'.
	self
		assert: tmp_RjMWFht2Ro5 canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:5.43'.
	self
		assert: tmp_RjMWFht2Ro5 wantsSteps class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.44'.
	self
		assert: tmp_RjMWFht2Ro5 wantsSteps
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.45'.
	self
		assert: tmp_RjMWFht2Ro5 isDragging class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:5.46'.
	self
		assert: tmp_RjMWFht2Ro5 isDragging
		equals: false
		description: 'testDrawCanvasWithGroup_amp:5.47'.
	tmp_RjMWFht2Ro5 drawOnMockCanvas.
	self
		assert: tmp_RjMWFht2Ro5 class
		equals: TSAthensMorph
		description: 'testDrawCanvasWithGroup_amp:6.1'.
	self
		assert: tmp_RjMWFht2Ro5 isDrawing class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:6.2'.
	self
		assert: tmp_RjMWFht2Ro5 isDrawing
		equals: false
		description: 'testDrawCanvasWithGroup_amp:6.3'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:6.4'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:6.5'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:6.6'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.7'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:6.8'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:6.9'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:6.10'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:6.11'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:6.12'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.13'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:6.14'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:6.15'.
	self
		assert: tmp_RjMWFht2Ro5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:6.16'.
	self
		assert: tmp_RjMWFht2Ro5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvasWithGroup_amp:6.17'.
	self
		assert: tmp_RjMWFht2Ro5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:6.18'.
	self
		assert: tmp_RjMWFht2Ro5 renderer builder
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:6.19'.
	self
		assert: tmp_RjMWFht2Ro5 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvasWithGroup_amp:6.20'.
	self
		assert: tmp_RjMWFht2Ro5 surface status class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.21'.
	self
		assert: tmp_RjMWFht2Ro5 surface status
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:6.22'.
	self
		assert: tmp_RjMWFht2Ro5 surface width class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.23'.
	self
		assert: tmp_RjMWFht2Ro5 surface width
		equals: 50
		description: 'testDrawCanvasWithGroup_amp:6.24'.
	self
		assert: tmp_RjMWFht2Ro5 surface height class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.25'.
	self
		assert: tmp_RjMWFht2Ro5 surface height
		equals: 40
		description: 'testDrawCanvasWithGroup_amp:6.26'.
	self
		assert: tmp_RjMWFht2Ro5 surface isSuccess class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:6.27'.
	self
		assert: tmp_RjMWFht2Ro5 surface isSuccess
		equals: true
		description: 'testDrawCanvasWithGroup_amp:6.28'.
	self
		assert: tmp_RjMWFht2Ro5 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.29'.
	self
		assert: tmp_RjMWFht2Ro5 surface stride
		equals: 200
		description: 'testDrawCanvasWithGroup_amp:6.30'.
	self
		assert: tmp_RjMWFht2Ro5 canvas class
		equals: TSCanvas
		description: 'testDrawCanvasWithGroup_amp:6.31'.
	self
		assert: tmp_RjMWFht2Ro5 canvas showRectangles class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:6.32'.
	self
		assert: tmp_RjMWFht2Ro5 canvas showRectangles
		equals: false
		description: 'testDrawCanvasWithGroup_amp:6.33'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.34'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvasWithGroup_amp:6.35'.
	self
		assert: tmp_RjMWFht2Ro5 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvasWithGroup_amp:6.36'.
	self
		assert: tmp_RjMWFht2Ro5 canvas view
		equals: nil
		description: 'testDrawCanvasWithGroup_amp:6.37'.
	self
		assert: tmp_RjMWFht2Ro5 canvas isShape class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:6.38'.
	self
		assert: tmp_RjMWFht2Ro5 canvas isShape
		equals: false
		description: 'testDrawCanvasWithGroup_amp:6.39'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvasWithGroup_amp:6.40'.
	self
		assert: tmp_RjMWFht2Ro5 canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvasWithGroup_amp:6.41'.
	self
		assert: tmp_RjMWFht2Ro5 canvas clearBackground class
		equals: True
		description: 'testDrawCanvasWithGroup_amp:6.42'.
	self
		assert: tmp_RjMWFht2Ro5 canvas clearBackground
		equals: true
		description: 'testDrawCanvasWithGroup_amp:6.43'.
	self
		assert: tmp_RjMWFht2Ro5 wantsSteps class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:6.44'.
	self
		assert: tmp_RjMWFht2Ro5 wantsSteps
		equals: false
		description: 'testDrawCanvasWithGroup_amp:6.45'.
	self
		assert: tmp_RjMWFht2Ro5 isDragging class
		equals: False
		description: 'testDrawCanvasWithGroup_amp:6.46'.
	self
		assert: tmp_RjMWFht2Ro5 isDragging
		equals: false
		description: 'testDrawCanvasWithGroup_amp:6.47'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testDrawCanvas_amp [
	<madeBySmallAmp>
	| tmp_N5qop3m2um4 |
	c
		addShape:
			(TSBox new
				extent: 100 @ 100;
				yourself).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvas_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvas_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvas_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvas_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvas_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvas_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvas_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvas_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvas_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvas_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvas_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvas_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvas_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvas_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvas_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvas_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawCanvas_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvas_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvas_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvas_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvas_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvas_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvas_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvas_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvas_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvas_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvas_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvas_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvas_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawCanvas_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvas_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvas_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvas_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawCanvas_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvas_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvas_amp:1.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawCanvas_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvas_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: -50.0
		description: 'testDrawCanvas_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 10000.0
		description: 'testDrawCanvas_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvas_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvas_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: -50.0
		description: 'testDrawCanvas_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 100.0
		description: 'testDrawCanvas_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 50.0
		description: 'testDrawCanvas_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvas_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvas_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvas_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvas_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 50.0
		description: 'testDrawCanvas_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvas_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 100.0
		description: 'testDrawCanvas_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawCanvas_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvas_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvas_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvas_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvas_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvas_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvas_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvas_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvas_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvas_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvas_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvas_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvas_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvas_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvas_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvas_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvas_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvas_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvas_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawCanvas_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvas_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvas_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvas_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawCanvas_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvas_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawCanvas_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvas_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawCanvas_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvas_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvas_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvas_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawCanvas_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvas_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvas_amp:1.152'.
	c
		addShape:
			(TSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvas_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvas_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvas_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvas_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvas_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvas_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvas_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvas_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvas_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvas_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvas_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvas_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvas_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvas_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvas_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvas_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawCanvas_amp:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvas_amp:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvas_amp:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvas_amp:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvas_amp:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvas_amp:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvas_amp:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvas_amp:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvas_amp:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvas_amp:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvas_amp:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvas_amp:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvas_amp:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawCanvas_amp:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvas_amp:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvas_amp:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvas_amp:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvas_amp:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvas_amp:2.63'.
	self
		assert: c shapes size
		equals: 2
		description: 'testDrawCanvas_amp:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvas_amp:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.66'.
	self
		assert: c encompassingRectangle top
		equals: -50.0
		description: 'testDrawCanvas_amp:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas_amp:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas_amp:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 40000.0
		description: 'testDrawCanvas_amp:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvas_amp:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvas_amp:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.74'.
	self
		assert: c encompassingRectangle left
		equals: -50.0
		description: 'testDrawCanvas_amp:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 200.0
		description: 'testDrawCanvas_amp:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 150.0
		description: 'testDrawCanvas_amp:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvas_amp:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvas_amp:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvas_amp:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvas_amp:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 150.0
		description: 'testDrawCanvas_amp:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas_amp:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvas_amp:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 200.0
		description: 'testDrawCanvas_amp:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.90'.
	self
		assert: c view
		equals: nil
		description: 'testDrawCanvas_amp:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvas_amp:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvas_amp:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvas_amp:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvas_amp:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas_amp:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas_amp:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvas_amp:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvas_amp:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvas_amp:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvas_amp:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvas_amp:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvas_amp:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvas_amp:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvas_amp:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvas_amp:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvas_amp:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvas_amp:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas_amp:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvas_amp:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvas_amp:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvas_amp:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawCanvas_amp:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvas_amp:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvas_amp:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvas_amp:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvas_amp:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.134'.
	self
		assert: c numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvas_amp:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawCanvas_amp:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvas_amp:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvas_amp:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvas_amp:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvas_amp:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvas_amp:2.152'.
	tmp_N5qop3m2um4 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawCanvas_amp:3.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawCanvas_amp:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawCanvas_amp:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawCanvas_amp:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawCanvas_amp:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawCanvas_amp:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawCanvas_amp:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawCanvas_amp:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawCanvas_amp:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawCanvas_amp:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawCanvas_amp:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawCanvas_amp:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawCanvas_amp:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawCanvas_amp:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawCanvas_amp:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawCanvas_amp:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:3.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawCanvas_amp:3.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawCanvas_amp:3.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawCanvas_amp:3.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawCanvas_amp:3.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawCanvas_amp:3.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawCanvas_amp:3.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawCanvas_amp:3.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawCanvas_amp:3.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawCanvas_amp:3.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawCanvas_amp:3.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawCanvas_amp:3.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawCanvas_amp:3.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawCanvas_amp:3.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawCanvas_amp:3.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawCanvas_amp:3.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawCanvas_amp:3.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawCanvas_amp:3.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawCanvas_amp:3.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:3.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:3.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawCanvas_amp:3.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:3.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:3.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawCanvas_amp:3.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawCanvas_amp:3.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawCanvas_amp:3.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.62'.
	self
		assert: c parent numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:3.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:3.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawCanvas_amp:3.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawCanvas_amp:3.66'.
	self
		assert: c shapes size
		equals: 2
		description: 'testDrawCanvas_amp:3.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawCanvas_amp:3.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.69'.
	self
		assert: c encompassingRectangle top
		equals: -50.0
		description: 'testDrawCanvas_amp:3.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas_amp:3.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas_amp:3.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.73'.
	self
		assert: c encompassingRectangle area
		equals: 40000.0
		description: 'testDrawCanvas_amp:3.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawCanvas_amp:3.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawCanvas_amp:3.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.77'.
	self
		assert: c encompassingRectangle left
		equals: -50.0
		description: 'testDrawCanvas_amp:3.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.79'.
	self
		assert: c encompassingRectangle width
		equals: 200.0
		description: 'testDrawCanvas_amp:3.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.81'.
	self
		assert: c encompassingRectangle right
		equals: 150.0
		description: 'testDrawCanvas_amp:3.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawCanvas_amp:3.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawCanvas_amp:3.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawCanvas_amp:3.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawCanvas_amp:3.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 150.0
		description: 'testDrawCanvas_amp:3.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas_amp:3.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawCanvas_amp:3.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawCanvas_amp:3.91'.
	self
		assert: c encompassingRectangle height
		equals: 200.0
		description: 'testDrawCanvas_amp:3.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:3.93'.
	self
		assert: c view
		equals: nil
		description: 'testDrawCanvas_amp:3.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawCanvas_amp:3.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawCanvas_amp:3.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawCanvas_amp:3.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawCanvas_amp:3.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawCanvas_amp:3.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawCanvas_amp:3.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawCanvas_amp:3.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawCanvas_amp:3.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawCanvas_amp:3.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawCanvas_amp:3.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawCanvas_amp:3.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawCanvas_amp:3.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawCanvas_amp:3.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawCanvas_amp:3.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawCanvas_amp:3.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawCanvas_amp:3.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawCanvas_amp:3.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawCanvas_amp:3.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawCanvas_amp:3.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawCanvas_amp:3.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:3.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:3.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawCanvas_amp:3.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:3.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:3.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawCanvas_amp:3.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawCanvas_amp:3.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawCanvas_amp:3.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.131'.
	self
		assert: c topParent numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:3.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:3.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawCanvas_amp:3.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.135'.
	self
		assert: c numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:3.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:3.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:3.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawCanvas_amp:3.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:3.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:3.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawCanvas_amp:3.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawCanvas_amp:3.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawCanvas_amp:3.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.146'.
	self
		assert: c canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:3.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:3.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawCanvas_amp:3.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:3.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawCanvas_amp:3.151'.
	self
		assert: tmp_N5qop3m2um4 class
		equals: TSAthensMorph
		description: 'testDrawCanvas_amp:3.1'.
	self
		assert: tmp_N5qop3m2um4 isDrawing class
		equals: False
		description: 'testDrawCanvas_amp:3.2'.
	self
		assert: tmp_N5qop3m2um4 isDrawing
		equals: false
		description: 'testDrawCanvas_amp:3.3'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:3.4'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:3.5'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvas_amp:3.6'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.7'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:3.8'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:3.9'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas view
		equals: nil
		description: 'testDrawCanvas_amp:3.10'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvas_amp:3.11'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvas_amp:3.12'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.13'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:3.14'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:3.15'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvas_amp:3.16'.
	self
		assert: tmp_N5qop3m2um4 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvas_amp:3.17'.
	self
		assert: tmp_N5qop3m2um4 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:3.18'.
	self
		assert: tmp_N5qop3m2um4 renderer builder
		equals: nil
		description: 'testDrawCanvas_amp:3.19'.
	self
		assert: tmp_N5qop3m2um4 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvas_amp:3.20'.
	self
		assert: tmp_N5qop3m2um4 surface status class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.21'.
	self
		assert: tmp_N5qop3m2um4 surface status
		equals: 0
		description: 'testDrawCanvas_amp:3.22'.
	self
		assert: tmp_N5qop3m2um4 surface width class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.23'.
	self
		assert: tmp_N5qop3m2um4 surface width
		equals: 50
		description: 'testDrawCanvas_amp:3.24'.
	self
		assert: tmp_N5qop3m2um4 surface height class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.25'.
	self
		assert: tmp_N5qop3m2um4 surface height
		equals: 40
		description: 'testDrawCanvas_amp:3.26'.
	self
		assert: tmp_N5qop3m2um4 surface isSuccess class
		equals: True
		description: 'testDrawCanvas_amp:3.27'.
	self
		assert: tmp_N5qop3m2um4 surface isSuccess
		equals: true
		description: 'testDrawCanvas_amp:3.28'.
	self
		assert: tmp_N5qop3m2um4 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.29'.
	self
		assert: tmp_N5qop3m2um4 surface stride
		equals: 200
		description: 'testDrawCanvas_amp:3.30'.
	self
		assert: tmp_N5qop3m2um4 canvas class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:3.31'.
	self
		assert: tmp_N5qop3m2um4 canvas showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:3.32'.
	self
		assert: tmp_N5qop3m2um4 canvas showRectangles
		equals: false
		description: 'testDrawCanvas_amp:3.33'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.34'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:3.35'.
	self
		assert: tmp_N5qop3m2um4 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:3.36'.
	self
		assert: tmp_N5qop3m2um4 canvas view
		equals: nil
		description: 'testDrawCanvas_amp:3.37'.
	self
		assert: tmp_N5qop3m2um4 canvas isShape class
		equals: False
		description: 'testDrawCanvas_amp:3.38'.
	self
		assert: tmp_N5qop3m2um4 canvas isShape
		equals: false
		description: 'testDrawCanvas_amp:3.39'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:3.40'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:3.41'.
	self
		assert: tmp_N5qop3m2um4 canvas clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:3.42'.
	self
		assert: tmp_N5qop3m2um4 canvas clearBackground
		equals: true
		description: 'testDrawCanvas_amp:3.43'.
	self
		assert: tmp_N5qop3m2um4 wantsSteps class
		equals: False
		description: 'testDrawCanvas_amp:3.44'.
	self
		assert: tmp_N5qop3m2um4 wantsSteps
		equals: false
		description: 'testDrawCanvas_amp:3.45'.
	self
		assert: tmp_N5qop3m2um4 isDragging class
		equals: False
		description: 'testDrawCanvas_amp:3.46'.
	self
		assert: tmp_N5qop3m2um4 isDragging
		equals: false
		description: 'testDrawCanvas_amp:3.47'.
	tmp_N5qop3m2um4 drawOnMockCanvas.
	self
		assert: tmp_N5qop3m2um4 class
		equals: TSAthensMorph
		description: 'testDrawCanvas_amp:4.1'.
	self
		assert: tmp_N5qop3m2um4 isDrawing class
		equals: False
		description: 'testDrawCanvas_amp:4.2'.
	self
		assert: tmp_N5qop3m2um4 isDrawing
		equals: false
		description: 'testDrawCanvas_amp:4.3'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:4.4'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:4.5'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas showRectangles
		equals: false
		description: 'testDrawCanvas_amp:4.6'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.7'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:4.8'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:4.9'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas view
		equals: nil
		description: 'testDrawCanvas_amp:4.10'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas isShape class
		equals: False
		description: 'testDrawCanvas_amp:4.11'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas isShape
		equals: false
		description: 'testDrawCanvas_amp:4.12'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.13'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:4.14'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:4.15'.
	self
		assert: tmp_N5qop3m2um4 trachelCanvas clearBackground
		equals: true
		description: 'testDrawCanvas_amp:4.16'.
	self
		assert: tmp_N5qop3m2um4 renderer class
		equals: TSAthensRenderer
		description: 'testDrawCanvas_amp:4.17'.
	self
		assert: tmp_N5qop3m2um4 renderer builder class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:4.18'.
	self
		assert: tmp_N5qop3m2um4 renderer builder
		equals: nil
		description: 'testDrawCanvas_amp:4.19'.
	self
		assert: tmp_N5qop3m2um4 surface class
		equals: AthensCairoSurface
		description: 'testDrawCanvas_amp:4.20'.
	self
		assert: tmp_N5qop3m2um4 surface status class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.21'.
	self
		assert: tmp_N5qop3m2um4 surface status
		equals: 0
		description: 'testDrawCanvas_amp:4.22'.
	self
		assert: tmp_N5qop3m2um4 surface width class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.23'.
	self
		assert: tmp_N5qop3m2um4 surface width
		equals: 50
		description: 'testDrawCanvas_amp:4.24'.
	self
		assert: tmp_N5qop3m2um4 surface height class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.25'.
	self
		assert: tmp_N5qop3m2um4 surface height
		equals: 40
		description: 'testDrawCanvas_amp:4.26'.
	self
		assert: tmp_N5qop3m2um4 surface isSuccess class
		equals: True
		description: 'testDrawCanvas_amp:4.27'.
	self
		assert: tmp_N5qop3m2um4 surface isSuccess
		equals: true
		description: 'testDrawCanvas_amp:4.28'.
	self
		assert: tmp_N5qop3m2um4 surface stride class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.29'.
	self
		assert: tmp_N5qop3m2um4 surface stride
		equals: 200
		description: 'testDrawCanvas_amp:4.30'.
	self
		assert: tmp_N5qop3m2um4 canvas class
		equals: TSCanvas
		description: 'testDrawCanvas_amp:4.31'.
	self
		assert: tmp_N5qop3m2um4 canvas showRectangles class
		equals: False
		description: 'testDrawCanvas_amp:4.32'.
	self
		assert: tmp_N5qop3m2um4 canvas showRectangles
		equals: false
		description: 'testDrawCanvas_amp:4.33'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.34'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawCanvas_amp:4.35'.
	self
		assert: tmp_N5qop3m2um4 canvas view class
		equals: UndefinedObject
		description: 'testDrawCanvas_amp:4.36'.
	self
		assert: tmp_N5qop3m2um4 canvas view
		equals: nil
		description: 'testDrawCanvas_amp:4.37'.
	self
		assert: tmp_N5qop3m2um4 canvas isShape class
		equals: False
		description: 'testDrawCanvas_amp:4.38'.
	self
		assert: tmp_N5qop3m2um4 canvas isShape
		equals: false
		description: 'testDrawCanvas_amp:4.39'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawCanvas_amp:4.40'.
	self
		assert: tmp_N5qop3m2um4 canvas numberOfShapes
		equals: 2
		description: 'testDrawCanvas_amp:4.41'.
	self
		assert: tmp_N5qop3m2um4 canvas clearBackground class
		equals: True
		description: 'testDrawCanvas_amp:4.42'.
	self
		assert: tmp_N5qop3m2um4 canvas clearBackground
		equals: true
		description: 'testDrawCanvas_amp:4.43'.
	self
		assert: tmp_N5qop3m2um4 wantsSteps class
		equals: False
		description: 'testDrawCanvas_amp:4.44'.
	self
		assert: tmp_N5qop3m2um4 wantsSteps
		equals: false
		description: 'testDrawCanvas_amp:4.45'.
	self
		assert: tmp_N5qop3m2um4 isDragging class
		equals: False
		description: 'testDrawCanvas_amp:4.46'.
	self
		assert: tmp_N5qop3m2um4 isDragging
		equals: false
		description: 'testDrawCanvas_amp:4.47'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testDrawFixed_amp [
	<madeBySmallAmp>
	| box tmp_hIIhNLqwP412 |
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	self
		assert: box class
		equals: TSBox
		description: 'testDrawFixed_amp:1.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:1.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed_amp:1.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed_amp:1.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed_amp:1.5'.
	box isFixed: true.
	self
		assert: box class
		equals: TSBox
		description: 'testDrawFixed_amp:2.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:2.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed_amp:2.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed_amp:2.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed_amp:2.5'.
	c addShape: box.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawFixed_amp:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawFixed_amp:3.2'.
	self
		assert: c fixedShapes size
		equals: 1
		description: 'testDrawFixed_amp:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawFixed_amp:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawFixed_amp:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawFixed_amp:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawFixed_amp:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawFixed_amp:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawFixed_amp:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawFixed_amp:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawFixed_amp:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawFixed_amp:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawFixed_amp:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawFixed_amp:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawFixed_amp:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawFixed_amp:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawFixed_amp:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawFixed_amp:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed_amp:3.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawFixed_amp:3.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawFixed_amp:3.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawFixed_amp:3.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawFixed_amp:3.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawFixed_amp:3.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawFixed_amp:3.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawFixed_amp:3.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawFixed_amp:3.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawFixed_amp:3.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawFixed_amp:3.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawFixed_amp:3.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawFixed_amp:3.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawFixed_amp:3.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawFixed_amp:3.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawFixed_amp:3.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed_amp:3.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawFixed_amp:3.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawFixed_amp:3.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawFixed_amp:3.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawFixed_amp:3.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.59'.
	self
		assert: c parent numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:3.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawFixed_amp:3.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawFixed_amp:3.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawFixed_amp:3.63'.
	self
		assert: c shapes size
		equals: 0
		description: 'testDrawFixed_amp:3.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawFixed_amp:3.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawFixed_amp:3.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed_amp:3.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed_amp:3.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.70'.
	self
		assert: c encompassingRectangle area
		equals: 1
		description: 'testDrawFixed_amp:3.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawFixed_amp:3.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawFixed_amp:3.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawFixed_amp:3.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.76'.
	self
		assert: c encompassingRectangle width
		equals: 1
		description: 'testDrawFixed_amp:3.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.78'.
	self
		assert: c encompassingRectangle right
		equals: 1
		description: 'testDrawFixed_amp:3.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawFixed_amp:3.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawFixed_amp:3.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawFixed_amp:3.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawFixed_amp:3.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1
		description: 'testDrawFixed_amp:3.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawFixed_amp:3.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawFixed_amp:3.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.88'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawFixed_amp:3.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.90'.
	self assert: c view equals: nil description: 'testDrawFixed_amp:3.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawFixed_amp:3.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawFixed_amp:3.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawFixed_amp:3.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawFixed_amp:3.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed_amp:3.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed_amp:3.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawFixed_amp:3.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawFixed_amp:3.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawFixed_amp:3.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawFixed_amp:3.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawFixed_amp:3.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawFixed_amp:3.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawFixed_amp:3.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawFixed_amp:3.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawFixed_amp:3.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawFixed_amp:3.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawFixed_amp:3.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawFixed_amp:3.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawFixed_amp:3.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawFixed_amp:3.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawFixed_amp:3.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawFixed_amp:3.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawFixed_amp:3.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed_amp:3.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawFixed_amp:3.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawFixed_amp:3.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawFixed_amp:3.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawFixed_amp:3.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.130'.
	self
		assert: c topParent numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:3.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawFixed_amp:3.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawFixed_amp:3.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.134'.
	self
		assert: c numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:3.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawFixed_amp:3.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawFixed_amp:3.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawFixed_amp:3.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 1
		description: 'testDrawFixed_amp:3.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawFixed_amp:3.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:3.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawFixed_amp:3.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawFixed_amp:3.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawFixed_amp:3.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:3.147'.
	self
		assert: c canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:3.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawFixed_amp:3.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawFixed_amp:3.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawFixed_amp:3.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawFixed_amp:3.152'.
	box := TSBox new
		extent: 100 @ 100;
		yourself.
	self
		assert: box class
		equals: TSBox
		description: 'testDrawFixed_amp:4.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:4.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed_amp:4.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed_amp:4.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed_amp:4.5'.
	c addShape: box.
	box setAsFixed.
	self
		assert: box class
		equals: TSBox
		description: 'testDrawFixed_amp:6.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:6.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testDrawFixed_amp:6.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testDrawFixed_amp:6.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testDrawFixed_amp:6.5'.
	tmp_hIIhNLqwP412 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawFixed_amp:7.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawFixed_amp:7.2'.
	self
		assert: c fixedShapes size
		equals: 2
		description: 'testDrawFixed_amp:7.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawFixed_amp:7.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawFixed_amp:7.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawFixed_amp:7.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawFixed_amp:7.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawFixed_amp:7.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawFixed_amp:7.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawFixed_amp:7.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawFixed_amp:7.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawFixed_amp:7.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawFixed_amp:7.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawFixed_amp:7.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawFixed_amp:7.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawFixed_amp:7.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawFixed_amp:7.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawFixed_amp:7.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawFixed_amp:7.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.31'.
	self
		assert: c numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:7.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawFixed_amp:7.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawFixed_amp:7.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawFixed_amp:7.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawFixed_amp:7.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawFixed_amp:7.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawFixed_amp:7.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawFixed_amp:7.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawFixed_amp:7.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawFixed_amp:7.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawFixed_amp:7.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawFixed_amp:7.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawFixed_amp:7.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawFixed_amp:7.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawFixed_amp:7.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawFixed_amp:7.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawFixed_amp:7.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawFixed_amp:7.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawFixed_amp:7.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawFixed_amp:7.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawFixed_amp:7.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawFixed_amp:7.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:7.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:7.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawFixed_amp:7.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawFixed_amp:7.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawFixed_amp:7.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.62'.
	self
		assert: c parent numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:7.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawFixed_amp:7.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawFixed_amp:7.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawFixed_amp:7.66'.
	self
		assert: c shapes size
		equals: 0
		description: 'testDrawFixed_amp:7.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawFixed_amp:7.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawFixed_amp:7.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed_amp:7.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed_amp:7.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.73'.
	self
		assert: c encompassingRectangle area
		equals: 1
		description: 'testDrawFixed_amp:7.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawFixed_amp:7.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawFixed_amp:7.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawFixed_amp:7.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.79'.
	self
		assert: c encompassingRectangle width
		equals: 1
		description: 'testDrawFixed_amp:7.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.81'.
	self
		assert: c encompassingRectangle right
		equals: 1
		description: 'testDrawFixed_amp:7.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawFixed_amp:7.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawFixed_amp:7.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawFixed_amp:7.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawFixed_amp:7.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 1
		description: 'testDrawFixed_amp:7.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawFixed_amp:7.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawFixed_amp:7.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.91'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawFixed_amp:7.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:7.93'.
	self assert: c view equals: nil description: 'testDrawFixed_amp:7.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawFixed_amp:7.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawFixed_amp:7.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawFixed_amp:7.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawFixed_amp:7.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawFixed_amp:7.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawFixed_amp:7.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawFixed_amp:7.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawFixed_amp:7.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawFixed_amp:7.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawFixed_amp:7.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawFixed_amp:7.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawFixed_amp:7.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawFixed_amp:7.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawFixed_amp:7.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawFixed_amp:7.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawFixed_amp:7.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawFixed_amp:7.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawFixed_amp:7.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawFixed_amp:7.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawFixed_amp:7.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawFixed_amp:7.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawFixed_amp:7.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawFixed_amp:7.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:7.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:7.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawFixed_amp:7.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawFixed_amp:7.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawFixed_amp:7.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.131'.
	self
		assert: c topParent numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:7.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawFixed_amp:7.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawFixed_amp:7.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.135'.
	self
		assert: c numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:7.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawFixed_amp:7.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawFixed_amp:7.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawFixed_amp:7.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:7.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:7.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawFixed_amp:7.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawFixed_amp:7.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawFixed_amp:7.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.146'.
	self
		assert: c canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:7.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawFixed_amp:7.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawFixed_amp:7.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawFixed_amp:7.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawFixed_amp:7.151'.
	self
		assert: tmp_hIIhNLqwP412 class
		equals: TSAthensMorph
		description: 'testDrawFixed_amp:7.1'.
	self
		assert: tmp_hIIhNLqwP412 isDrawing class
		equals: False
		description: 'testDrawFixed_amp:7.2'.
	self
		assert: tmp_hIIhNLqwP412 isDrawing
		equals: false
		description: 'testDrawFixed_amp:7.3'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawFixed_amp:7.4'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawFixed_amp:7.5'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas showRectangles
		equals: false
		description: 'testDrawFixed_amp:7.6'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.7'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:7.8'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:7.9'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas view
		equals: nil
		description: 'testDrawFixed_amp:7.10'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas isShape class
		equals: False
		description: 'testDrawFixed_amp:7.11'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas isShape
		equals: false
		description: 'testDrawFixed_amp:7.12'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.13'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:7.14'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawFixed_amp:7.15'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas clearBackground
		equals: true
		description: 'testDrawFixed_amp:7.16'.
	self
		assert: tmp_hIIhNLqwP412 renderer class
		equals: TSAthensRenderer
		description: 'testDrawFixed_amp:7.17'.
	self
		assert: tmp_hIIhNLqwP412 renderer builder class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:7.18'.
	self
		assert: tmp_hIIhNLqwP412 renderer builder
		equals: nil
		description: 'testDrawFixed_amp:7.19'.
	self
		assert: tmp_hIIhNLqwP412 surface class
		equals: AthensCairoSurface
		description: 'testDrawFixed_amp:7.20'.
	self
		assert: tmp_hIIhNLqwP412 surface status class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.21'.
	self
		assert: tmp_hIIhNLqwP412 surface status
		equals: 0
		description: 'testDrawFixed_amp:7.22'.
	self
		assert: tmp_hIIhNLqwP412 surface width class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.23'.
	self
		assert: tmp_hIIhNLqwP412 surface width
		equals: 50
		description: 'testDrawFixed_amp:7.24'.
	self
		assert: tmp_hIIhNLqwP412 surface height class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.25'.
	self
		assert: tmp_hIIhNLqwP412 surface height
		equals: 40
		description: 'testDrawFixed_amp:7.26'.
	self
		assert: tmp_hIIhNLqwP412 surface isSuccess class
		equals: True
		description: 'testDrawFixed_amp:7.27'.
	self
		assert: tmp_hIIhNLqwP412 surface isSuccess
		equals: true
		description: 'testDrawFixed_amp:7.28'.
	self
		assert: tmp_hIIhNLqwP412 surface stride class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.29'.
	self
		assert: tmp_hIIhNLqwP412 surface stride
		equals: 200
		description: 'testDrawFixed_amp:7.30'.
	self
		assert: tmp_hIIhNLqwP412 canvas class
		equals: TSCanvas
		description: 'testDrawFixed_amp:7.31'.
	self
		assert: tmp_hIIhNLqwP412 canvas showRectangles class
		equals: False
		description: 'testDrawFixed_amp:7.32'.
	self
		assert: tmp_hIIhNLqwP412 canvas showRectangles
		equals: false
		description: 'testDrawFixed_amp:7.33'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.34'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:7.35'.
	self
		assert: tmp_hIIhNLqwP412 canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:7.36'.
	self
		assert: tmp_hIIhNLqwP412 canvas view
		equals: nil
		description: 'testDrawFixed_amp:7.37'.
	self
		assert: tmp_hIIhNLqwP412 canvas isShape class
		equals: False
		description: 'testDrawFixed_amp:7.38'.
	self
		assert: tmp_hIIhNLqwP412 canvas isShape
		equals: false
		description: 'testDrawFixed_amp:7.39'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:7.40'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:7.41'.
	self
		assert: tmp_hIIhNLqwP412 canvas clearBackground class
		equals: True
		description: 'testDrawFixed_amp:7.42'.
	self
		assert: tmp_hIIhNLqwP412 canvas clearBackground
		equals: true
		description: 'testDrawFixed_amp:7.43'.
	self
		assert: tmp_hIIhNLqwP412 wantsSteps class
		equals: False
		description: 'testDrawFixed_amp:7.44'.
	self
		assert: tmp_hIIhNLqwP412 wantsSteps
		equals: false
		description: 'testDrawFixed_amp:7.45'.
	self
		assert: tmp_hIIhNLqwP412 isDragging class
		equals: False
		description: 'testDrawFixed_amp:7.46'.
	self
		assert: tmp_hIIhNLqwP412 isDragging
		equals: false
		description: 'testDrawFixed_amp:7.47'.
	tmp_hIIhNLqwP412 drawOnMockCanvas.
	self
		assert: tmp_hIIhNLqwP412 class
		equals: TSAthensMorph
		description: 'testDrawFixed_amp:8.1'.
	self
		assert: tmp_hIIhNLqwP412 isDrawing class
		equals: False
		description: 'testDrawFixed_amp:8.2'.
	self
		assert: tmp_hIIhNLqwP412 isDrawing
		equals: false
		description: 'testDrawFixed_amp:8.3'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawFixed_amp:8.4'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawFixed_amp:8.5'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas showRectangles
		equals: false
		description: 'testDrawFixed_amp:8.6'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.7'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:8.8'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:8.9'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas view
		equals: nil
		description: 'testDrawFixed_amp:8.10'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas isShape class
		equals: False
		description: 'testDrawFixed_amp:8.11'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas isShape
		equals: false
		description: 'testDrawFixed_amp:8.12'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.13'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:8.14'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawFixed_amp:8.15'.
	self
		assert: tmp_hIIhNLqwP412 trachelCanvas clearBackground
		equals: true
		description: 'testDrawFixed_amp:8.16'.
	self
		assert: tmp_hIIhNLqwP412 renderer class
		equals: TSAthensRenderer
		description: 'testDrawFixed_amp:8.17'.
	self
		assert: tmp_hIIhNLqwP412 renderer builder class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:8.18'.
	self
		assert: tmp_hIIhNLqwP412 renderer builder
		equals: nil
		description: 'testDrawFixed_amp:8.19'.
	self
		assert: tmp_hIIhNLqwP412 surface class
		equals: AthensCairoSurface
		description: 'testDrawFixed_amp:8.20'.
	self
		assert: tmp_hIIhNLqwP412 surface status class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.21'.
	self
		assert: tmp_hIIhNLqwP412 surface status
		equals: 0
		description: 'testDrawFixed_amp:8.22'.
	self
		assert: tmp_hIIhNLqwP412 surface width class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.23'.
	self
		assert: tmp_hIIhNLqwP412 surface width
		equals: 50
		description: 'testDrawFixed_amp:8.24'.
	self
		assert: tmp_hIIhNLqwP412 surface height class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.25'.
	self
		assert: tmp_hIIhNLqwP412 surface height
		equals: 40
		description: 'testDrawFixed_amp:8.26'.
	self
		assert: tmp_hIIhNLqwP412 surface isSuccess class
		equals: True
		description: 'testDrawFixed_amp:8.27'.
	self
		assert: tmp_hIIhNLqwP412 surface isSuccess
		equals: true
		description: 'testDrawFixed_amp:8.28'.
	self
		assert: tmp_hIIhNLqwP412 surface stride class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.29'.
	self
		assert: tmp_hIIhNLqwP412 surface stride
		equals: 200
		description: 'testDrawFixed_amp:8.30'.
	self
		assert: tmp_hIIhNLqwP412 canvas class
		equals: TSCanvas
		description: 'testDrawFixed_amp:8.31'.
	self
		assert: tmp_hIIhNLqwP412 canvas showRectangles class
		equals: False
		description: 'testDrawFixed_amp:8.32'.
	self
		assert: tmp_hIIhNLqwP412 canvas showRectangles
		equals: false
		description: 'testDrawFixed_amp:8.33'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.34'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfFixedShapes
		equals: 2
		description: 'testDrawFixed_amp:8.35'.
	self
		assert: tmp_hIIhNLqwP412 canvas view class
		equals: UndefinedObject
		description: 'testDrawFixed_amp:8.36'.
	self
		assert: tmp_hIIhNLqwP412 canvas view
		equals: nil
		description: 'testDrawFixed_amp:8.37'.
	self
		assert: tmp_hIIhNLqwP412 canvas isShape class
		equals: False
		description: 'testDrawFixed_amp:8.38'.
	self
		assert: tmp_hIIhNLqwP412 canvas isShape
		equals: false
		description: 'testDrawFixed_amp:8.39'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawFixed_amp:8.40'.
	self
		assert: tmp_hIIhNLqwP412 canvas numberOfShapes
		equals: 0
		description: 'testDrawFixed_amp:8.41'.
	self
		assert: tmp_hIIhNLqwP412 canvas clearBackground class
		equals: True
		description: 'testDrawFixed_amp:8.42'.
	self
		assert: tmp_hIIhNLqwP412 canvas clearBackground
		equals: true
		description: 'testDrawFixed_amp:8.43'.
	self
		assert: tmp_hIIhNLqwP412 wantsSteps class
		equals: False
		description: 'testDrawFixed_amp:8.44'.
	self
		assert: tmp_hIIhNLqwP412 wantsSteps
		equals: false
		description: 'testDrawFixed_amp:8.45'.
	self
		assert: tmp_hIIhNLqwP412 isDragging class
		equals: False
		description: 'testDrawFixed_amp:8.46'.
	self
		assert: tmp_hIIhNLqwP412 isDragging
		equals: false
		description: 'testDrawFixed_amp:8.47'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testEmpty_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testEvent_amp [
	<madeBySmallAmp>
	| box |
	box := TSBox new.
	self assert: box class equals: TSBox description: 'testEvent_amp:1.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testEvent_amp:1.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testEvent_amp:1.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testEvent_amp:1.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testEvent_amp:1.5'.
	box when: TSMouseClick do: [ :evt |  ].
	self assert: box class equals: TSBox description: 'testEvent_amp:2.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testEvent_amp:2.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testEvent_amp:2.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testEvent_amp:2.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testEvent_amp:2.5'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testLowLevelEvent_amp [
	<madeBySmallAmp>
	| box |
	box := TSBox new size: 30.
	self
		assert: box class
		equals: TSBox
		description: 'testLowLevelEvent_amp:1.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:1.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testLowLevelEvent_amp:1.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testLowLevelEvent_amp:1.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testLowLevelEvent_amp:1.5'.
	box when: TSMouseDragging do: [ :evt | box ].
	self
		assert: box class
		equals: TSBox
		description: 'testLowLevelEvent_amp:2.1'.
	self
		assert: box cornerRadius class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:2.2'.
	self
		assert: box cornerRadius
		equals: nil
		description: 'testLowLevelEvent_amp:2.3'.
	self
		assert: box hasCornerRadius class
		equals: False
		description: 'testLowLevelEvent_amp:2.4'.
	self
		assert: box hasCornerRadius
		equals: false
		description: 'testLowLevelEvent_amp:2.5'.
	c addShape: box.
	self
		assert: c class
		equals: TSCanvas
		description: 'testLowLevelEvent_amp:3.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testLowLevelEvent_amp:3.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testLowLevelEvent_amp:3.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testLowLevelEvent_amp:3.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testLowLevelEvent_amp:3.5'.
	self
		assert: c color class
		equals: Color
		description: 'testLowLevelEvent_amp:3.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testLowLevelEvent_amp:3.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testLowLevelEvent_amp:3.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testLowLevelEvent_amp:3.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testLowLevelEvent_amp:3.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testLowLevelEvent_amp:3.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testLowLevelEvent_amp:3.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testLowLevelEvent_amp:3.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testLowLevelEvent_amp:3.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testLowLevelEvent_amp:3.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testLowLevelEvent_amp:3.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testLowLevelEvent_amp:3.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testLowLevelEvent_amp:3.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent_amp:3.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.33'.
	self
		assert: c morph
		equals: nil
		description: 'testLowLevelEvent_amp:3.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testLowLevelEvent_amp:3.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testLowLevelEvent_amp:3.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testLowLevelEvent_amp:3.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testLowLevelEvent_amp:3.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testLowLevelEvent_amp:3.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testLowLevelEvent_amp:3.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testLowLevelEvent_amp:3.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testLowLevelEvent_amp:3.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testLowLevelEvent_amp:3.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testLowLevelEvent_amp:3.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testLowLevelEvent_amp:3.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testLowLevelEvent_amp:3.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testLowLevelEvent_amp:3.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testLowLevelEvent_amp:3.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent_amp:3.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testLowLevelEvent_amp:3.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testLowLevelEvent_amp:3.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testLowLevelEvent_amp:3.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testLowLevelEvent_amp:3.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testLowLevelEvent_amp:3.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testLowLevelEvent_amp:3.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testLowLevelEvent_amp:3.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testLowLevelEvent_amp:3.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testLowLevelEvent_amp:3.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testLowLevelEvent_amp:3.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.66'.
	self
		assert: c encompassingRectangle top
		equals: -15.0
		description: 'testLowLevelEvent_amp:3.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testLowLevelEvent_amp:3.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testLowLevelEvent_amp:3.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.70'.
	self
		assert: c encompassingRectangle area
		equals: 900.0
		description: 'testLowLevelEvent_amp:3.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testLowLevelEvent_amp:3.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testLowLevelEvent_amp:3.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.74'.
	self
		assert: c encompassingRectangle left
		equals: -15.0
		description: 'testLowLevelEvent_amp:3.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.76'.
	self
		assert: c encompassingRectangle width
		equals: 30.0
		description: 'testLowLevelEvent_amp:3.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.78'.
	self
		assert: c encompassingRectangle right
		equals: 15.0
		description: 'testLowLevelEvent_amp:3.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testLowLevelEvent_amp:3.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testLowLevelEvent_amp:3.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testLowLevelEvent_amp:3.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testLowLevelEvent_amp:3.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 15.0
		description: 'testLowLevelEvent_amp:3.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testLowLevelEvent_amp:3.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testLowLevelEvent_amp:3.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testLowLevelEvent_amp:3.88'.
	self
		assert: c encompassingRectangle height
		equals: 30.0
		description: 'testLowLevelEvent_amp:3.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.90'.
	self
		assert: c view
		equals: nil
		description: 'testLowLevelEvent_amp:3.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testLowLevelEvent_amp:3.92'.
	self
		assert: c isShape
		equals: false
		description: 'testLowLevelEvent_amp:3.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testLowLevelEvent_amp:3.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testLowLevelEvent_amp:3.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testLowLevelEvent_amp:3.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testLowLevelEvent_amp:3.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testLowLevelEvent_amp:3.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testLowLevelEvent_amp:3.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testLowLevelEvent_amp:3.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testLowLevelEvent_amp:3.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testLowLevelEvent_amp:3.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testLowLevelEvent_amp:3.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testLowLevelEvent_amp:3.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testLowLevelEvent_amp:3.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testLowLevelEvent_amp:3.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testLowLevelEvent_amp:3.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testLowLevelEvent_amp:3.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testLowLevelEvent_amp:3.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testLowLevelEvent_amp:3.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testLowLevelEvent_amp:3.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testLowLevelEvent_amp:3.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testLowLevelEvent_amp:3.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testLowLevelEvent_amp:3.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent_amp:3.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testLowLevelEvent_amp:3.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testLowLevelEvent_amp:3.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testLowLevelEvent_amp:3.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testLowLevelEvent_amp:3.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testLowLevelEvent_amp:3.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testLowLevelEvent_amp:3.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testLowLevelEvent_amp:3.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testLowLevelEvent_amp:3.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testLowLevelEvent_amp:3.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testLowLevelEvent_amp:3.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testLowLevelEvent_amp:3.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testLowLevelEvent_amp:3.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testLowLevelEvent_amp:3.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testLowLevelEvent_amp:3.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testLowLevelEvent_amp:3.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testLowLevelEvent_amp:3.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testLowLevelEvent_amp:3.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testLowLevelEvent_amp:3.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testLowLevelEvent_amp:3.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testLowLevelEvent_amp:3.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testLowLevelEvent_amp:3.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testLowLevelEvent_amp:3.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testLowLevelEvent_amp:3.152'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testNestedShapeNotAddedToACanvas_amp [
	<madeBySmallAmp>
	| shape innerShape |
	shape := TSComposite new.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShapeNotAddedToACanvas_amp:1.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShapeNotAddedToACanvas_amp:1.2'.
	self
		assert: shape shapes size
		equals: 0
		description: 'testNestedShapeNotAddedToACanvas_amp:1.3'.
	innerShape := TSBox new.
	self
		assert: innerShape class
		equals: TSBox
		description: 'testNestedShapeNotAddedToACanvas_amp:2.1'.
	self
		assert: innerShape cornerRadius class
		equals: UndefinedObject
		description: 'testNestedShapeNotAddedToACanvas_amp:2.2'.
	self
		assert: innerShape cornerRadius
		equals: nil
		description: 'testNestedShapeNotAddedToACanvas_amp:2.3'.
	self
		assert: innerShape hasCornerRadius class
		equals: False
		description: 'testNestedShapeNotAddedToACanvas_amp:2.4'.
	self
		assert: innerShape hasCornerRadius
		equals: false
		description: 'testNestedShapeNotAddedToACanvas_amp:2.5'.
	shape add: innerShape.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShapeNotAddedToACanvas_amp:3.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShapeNotAddedToACanvas_amp:3.2'.
	self
		assert: shape shapes size
		equals: 1
		description: 'testNestedShapeNotAddedToACanvas_amp:3.3'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testNestedShape_amp [
	<madeBySmallAmp>
	| shape innerShape |
	shape := TSComposite new.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShape_amp:1.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShape_amp:1.2'.
	self
		assert: shape shapes size
		equals: 0
		description: 'testNestedShape_amp:1.3'.
	c addShape: shape.
	self
		assert: c class
		equals: TSCanvas
		description: 'testNestedShape_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testNestedShape_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testNestedShape_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testNestedShape_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testNestedShape_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testNestedShape_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testNestedShape_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testNestedShape_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testNestedShape_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testNestedShape_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testNestedShape_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testNestedShape_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testNestedShape_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testNestedShape_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testNestedShape_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testNestedShape_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testNestedShape_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testNestedShape_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testNestedShape_amp:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.33'.
	self
		assert: c morph
		equals: nil
		description: 'testNestedShape_amp:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testNestedShape_amp:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testNestedShape_amp:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testNestedShape_amp:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testNestedShape_amp:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testNestedShape_amp:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testNestedShape_amp:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testNestedShape_amp:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testNestedShape_amp:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testNestedShape_amp:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testNestedShape_amp:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testNestedShape_amp:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testNestedShape_amp:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testNestedShape_amp:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testNestedShape_amp:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testNestedShape_amp:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testNestedShape_amp:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testNestedShape_amp:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testNestedShape_amp:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testNestedShape_amp:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testNestedShape_amp:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testNestedShape_amp:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testNestedShape_amp:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testNestedShape_amp:2.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testNestedShape_amp:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testNestedShape_amp:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testNestedShape_amp:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testNestedShape_amp:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testNestedShape_amp:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testNestedShape_amp:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testNestedShape_amp:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testNestedShape_amp:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testNestedShape_amp:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testNestedShape_amp:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testNestedShape_amp:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testNestedShape_amp:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testNestedShape_amp:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testNestedShape_amp:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testNestedShape_amp:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testNestedShape_amp:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testNestedShape_amp:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testNestedShape_amp:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testNestedShape_amp:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testNestedShape_amp:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.90'.
	self
		assert: c view
		equals: nil
		description: 'testNestedShape_amp:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testNestedShape_amp:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testNestedShape_amp:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testNestedShape_amp:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testNestedShape_amp:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testNestedShape_amp:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testNestedShape_amp:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testNestedShape_amp:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testNestedShape_amp:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testNestedShape_amp:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testNestedShape_amp:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testNestedShape_amp:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testNestedShape_amp:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testNestedShape_amp:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testNestedShape_amp:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testNestedShape_amp:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testNestedShape_amp:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testNestedShape_amp:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testNestedShape_amp:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testNestedShape_amp:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testNestedShape_amp:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testNestedShape_amp:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testNestedShape_amp:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testNestedShape_amp:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testNestedShape_amp:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testNestedShape_amp:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testNestedShape_amp:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testNestedShape_amp:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testNestedShape_amp:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testNestedShape_amp:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testNestedShape_amp:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testNestedShape_amp:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testNestedShape_amp:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testNestedShape_amp:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testNestedShape_amp:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testNestedShape_amp:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testNestedShape_amp:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testNestedShape_amp:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testNestedShape_amp:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testNestedShape_amp:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testNestedShape_amp:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testNestedShape_amp:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testNestedShape_amp:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testNestedShape_amp:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testNestedShape_amp:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testNestedShape_amp:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testNestedShape_amp:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testNestedShape_amp:2.152'.
	innerShape := TSBox new.
	self
		assert: innerShape class
		equals: TSBox
		description: 'testNestedShape_amp:3.1'.
	self
		assert: innerShape cornerRadius class
		equals: UndefinedObject
		description: 'testNestedShape_amp:3.2'.
	self
		assert: innerShape cornerRadius
		equals: nil
		description: 'testNestedShape_amp:3.3'.
	self
		assert: innerShape hasCornerRadius class
		equals: False
		description: 'testNestedShape_amp:3.4'.
	self
		assert: innerShape hasCornerRadius
		equals: false
		description: 'testNestedShape_amp:3.5'.
	shape add: innerShape.
	self
		assert: shape class
		equals: TSComposite
		description: 'testNestedShape_amp:4.1'.
	self
		assert: shape shapes class
		equals: TSGroup
		description: 'testNestedShape_amp:4.2'.
	self
		assert: shape shapes size
		equals: 1
		description: 'testNestedShape_amp:4.3'.
	self
		assert: shape camera class
		equals: TSCamera
		description: 'testNestedShape_amp:4.4'.
	self
		assert: shape camera scale class
		equals: SmallFloat64
		description: 'testNestedShape_amp:4.5'.
	self
		assert: shape camera scale
		equals: 1.0000001
		description: 'testNestedShape_amp:4.6'.
	self
		assert: shape view class
		equals: UndefinedObject
		description: 'testNestedShape_amp:4.7'.
	self
		assert: shape view
		equals: nil
		description: 'testNestedShape_amp:4.8'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testOpening_amp [
	<madeBySmallAmp>
	| tmp_KCrj86y5Cz2 |
	tmp_KCrj86y5Cz2 := c open.
	self
		assert: c class
		equals: TSCanvas
		description: 'testOpening_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testOpening_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testOpening_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testOpening_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testOpening_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testOpening_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testOpening_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testOpening_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testOpening_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testOpening_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testOpening_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testOpening_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testOpening_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testOpening_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testOpening_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testOpening_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testOpening_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testOpening_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testOpening_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testOpening_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testOpening_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testOpening_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testOpening_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testOpening_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testOpening_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testOpening_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testOpening_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testOpening_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testOpening_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testOpening_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testOpening_amp:1.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testOpening_amp:1.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testOpening_amp:1.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testOpening_amp:1.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testOpening_amp:1.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testOpening_amp:1.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testOpening_amp:1.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testOpening_amp:1.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testOpening_amp:1.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testOpening_amp:1.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testOpening_amp:1.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testOpening_amp:1.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testOpening_amp:1.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testOpening_amp:1.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testOpening_amp:1.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testOpening_amp:1.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testOpening_amp:1.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testOpening_amp:1.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testOpening_amp:1.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testOpening_amp:1.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testOpening_amp:1.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testOpening_amp:1.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testOpening_amp:1.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testOpening_amp:1.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testOpening_amp:1.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testOpening_amp:1.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testOpening_amp:1.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testOpening_amp:1.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testOpening_amp:1.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.62'.
	self
		assert: c parent numberOfShapes
		equals: 0
		description: 'testOpening_amp:1.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testOpening_amp:1.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testOpening_amp:1.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testOpening_amp:1.66'.
	self
		assert: c shapes size
		equals: 0
		description: 'testOpening_amp:1.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testOpening_amp:1.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testOpening_amp:1.69'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testOpening_amp:1.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testOpening_amp:1.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testOpening_amp:1.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testOpening_amp:1.73'.
	self
		assert: c encompassingRectangle area
		equals: 1
		description: 'testOpening_amp:1.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testOpening_amp:1.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testOpening_amp:1.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testOpening_amp:1.77'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testOpening_amp:1.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testOpening_amp:1.79'.
	self
		assert: c encompassingRectangle width
		equals: 1
		description: 'testOpening_amp:1.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testOpening_amp:1.81'.
	self
		assert: c encompassingRectangle right
		equals: 1
		description: 'testOpening_amp:1.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testOpening_amp:1.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testOpening_amp:1.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testOpening_amp:1.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testOpening_amp:1.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testOpening_amp:1.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 1
		description: 'testOpening_amp:1.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testOpening_amp:1.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testOpening_amp:1.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testOpening_amp:1.91'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testOpening_amp:1.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testOpening_amp:1.93'.
	self assert: c view equals: nil description: 'testOpening_amp:1.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testOpening_amp:1.95'.
	self
		assert: c isShape
		equals: false
		description: 'testOpening_amp:1.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testOpening_amp:1.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testOpening_amp:1.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testOpening_amp:1.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testOpening_amp:1.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testOpening_amp:1.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testOpening_amp:1.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testOpening_amp:1.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testOpening_amp:1.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testOpening_amp:1.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testOpening_amp:1.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testOpening_amp:1.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testOpening_amp:1.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testOpening_amp:1.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testOpening_amp:1.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testOpening_amp:1.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testOpening_amp:1.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testOpening_amp:1.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testOpening_amp:1.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testOpening_amp:1.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testOpening_amp:1.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testOpening_amp:1.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testOpening_amp:1.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testOpening_amp:1.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testOpening_amp:1.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testOpening_amp:1.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testOpening_amp:1.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testOpening_amp:1.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testOpening_amp:1.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testOpening_amp:1.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testOpening_amp:1.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testOpening_amp:1.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testOpening_amp:1.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testOpening_amp:1.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.131'.
	self
		assert: c topParent numberOfShapes
		equals: 0
		description: 'testOpening_amp:1.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testOpening_amp:1.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testOpening_amp:1.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.135'.
	self
		assert: c numberOfShapes
		equals: 0
		description: 'testOpening_amp:1.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testOpening_amp:1.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testOpening_amp:1.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testOpening_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testOpening_amp:1.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testOpening_amp:1.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testOpening_amp:1.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testOpening_amp:1.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testOpening_amp:1.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testOpening_amp:1.146'.
	self
		assert: c canvas numberOfShapes
		equals: 0
		description: 'testOpening_amp:1.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testOpening_amp:1.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testOpening_amp:1.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testOpening_amp:1.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testOpening_amp:1.151'.
	self
		assert: tmp_KCrj86y5Cz2 class
		equals: SystemWindow
		description: 'testOpening_amp:1.1'.
	self
		assert: tmp_KCrj86y5Cz2 isSystemWindow class
		equals: True
		description: 'testOpening_amp:1.2'.
	self
		assert: tmp_KCrj86y5Cz2 isSystemWindow
		equals: true
		description: 'testOpening_amp:1.3'.
	self
		assert: tmp_KCrj86y5Cz2 embeddable class
		equals: False
		description: 'testOpening_amp:1.4'.
	self
		assert: tmp_KCrj86y5Cz2 embeddable
		equals: false
		description: 'testOpening_amp:1.5'.
	self
		assert: tmp_KCrj86y5Cz2 isDisplayed class
		equals: True
		description: 'testOpening_amp:1.6'.
	self
		assert: tmp_KCrj86y5Cz2 isDisplayed
		equals: true
		description: 'testOpening_amp:1.7'.
	self
		assert: tmp_KCrj86y5Cz2 isCloseable class
		equals: True
		description: 'testOpening_amp:1.8'.
	self
		assert: tmp_KCrj86y5Cz2 isCloseable
		equals: true
		description: 'testOpening_amp:1.9'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil class
		equals: SystemWindow
		description: 'testOpening_amp:1.10'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isSystemWindow class
		equals: True
		description: 'testOpening_amp:1.11'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isSystemWindow
		equals: true
		description: 'testOpening_amp:1.12'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil embeddable class
		equals: False
		description: 'testOpening_amp:1.13'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil embeddable
		equals: false
		description: 'testOpening_amp:1.14'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isDisplayed class
		equals: True
		description: 'testOpening_amp:1.15'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isDisplayed
		equals: true
		description: 'testOpening_amp:1.16'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isCloseable class
		equals: True
		description: 'testOpening_amp:1.17'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isCloseable
		equals: true
		description: 'testOpening_amp:1.18'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil shouldDropOnMouseUp class
		equals: True
		description: 'testOpening_amp:1.19'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil shouldDropOnMouseUp
		equals: true
		description: 'testOpening_amp:1.20'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil wantsToBeCachedByHand class
		equals: True
		description: 'testOpening_amp:1.21'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil wantsToBeCachedByHand
		equals: true
		description: 'testOpening_amp:1.22'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil canBeMaximized class
		equals: True
		description: 'testOpening_amp:1.23'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil canBeMaximized
		equals: true
		description: 'testOpening_amp:1.24'.
	self
		assert: tmp_KCrj86y5Cz2 shouldDropOnMouseUp class
		equals: True
		description: 'testOpening_amp:1.25'.
	self
		assert: tmp_KCrj86y5Cz2 shouldDropOnMouseUp
		equals: true
		description: 'testOpening_amp:1.26'.
	self
		assert: tmp_KCrj86y5Cz2 wantsToBeCachedByHand class
		equals: True
		description: 'testOpening_amp:1.27'.
	self
		assert: tmp_KCrj86y5Cz2 wantsToBeCachedByHand
		equals: true
		description: 'testOpening_amp:1.28'.
	self
		assert: tmp_KCrj86y5Cz2 canBeMaximized class
		equals: True
		description: 'testOpening_amp:1.29'.
	self
		assert: tmp_KCrj86y5Cz2 canBeMaximized
		equals: true
		description: 'testOpening_amp:1.30'.
	tmp_KCrj86y5Cz2 delete.
	self
		assert: tmp_KCrj86y5Cz2 class
		equals: SystemWindow
		description: 'testOpening_amp:2.1'.
	self
		assert: tmp_KCrj86y5Cz2 isSystemWindow class
		equals: True
		description: 'testOpening_amp:2.2'.
	self
		assert: tmp_KCrj86y5Cz2 isSystemWindow
		equals: true
		description: 'testOpening_amp:2.3'.
	self
		assert: tmp_KCrj86y5Cz2 embeddable class
		equals: False
		description: 'testOpening_amp:2.4'.
	self
		assert: tmp_KCrj86y5Cz2 embeddable
		equals: false
		description: 'testOpening_amp:2.5'.
	self
		assert: tmp_KCrj86y5Cz2 isDisplayed class
		equals: False
		description: 'testOpening_amp:2.6'.
	self
		assert: tmp_KCrj86y5Cz2 isDisplayed
		equals: false
		description: 'testOpening_amp:2.7'.
	self
		assert: tmp_KCrj86y5Cz2 isCloseable class
		equals: True
		description: 'testOpening_amp:2.8'.
	self
		assert: tmp_KCrj86y5Cz2 isCloseable
		equals: true
		description: 'testOpening_amp:2.9'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil class
		equals: SystemWindow
		description: 'testOpening_amp:2.10'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isSystemWindow class
		equals: True
		description: 'testOpening_amp:2.11'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isSystemWindow
		equals: true
		description: 'testOpening_amp:2.12'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil embeddable class
		equals: False
		description: 'testOpening_amp:2.13'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil embeddable
		equals: false
		description: 'testOpening_amp:2.14'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isDisplayed class
		equals: False
		description: 'testOpening_amp:2.15'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isDisplayed
		equals: false
		description: 'testOpening_amp:2.16'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isCloseable class
		equals: True
		description: 'testOpening_amp:2.17'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil isCloseable
		equals: true
		description: 'testOpening_amp:2.18'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil shouldDropOnMouseUp class
		equals: True
		description: 'testOpening_amp:2.19'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil shouldDropOnMouseUp
		equals: true
		description: 'testOpening_amp:2.20'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil wantsToBeCachedByHand class
		equals: True
		description: 'testOpening_amp:2.21'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil wantsToBeCachedByHand
		equals: true
		description: 'testOpening_amp:2.22'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil canBeMaximized class
		equals: True
		description: 'testOpening_amp:2.23'.
	self
		assert: tmp_KCrj86y5Cz2 embeddedWindowOrNil canBeMaximized
		equals: true
		description: 'testOpening_amp:2.24'.
	self
		assert: tmp_KCrj86y5Cz2 shouldDropOnMouseUp class
		equals: True
		description: 'testOpening_amp:2.25'.
	self
		assert: tmp_KCrj86y5Cz2 shouldDropOnMouseUp
		equals: true
		description: 'testOpening_amp:2.26'.
	self
		assert: tmp_KCrj86y5Cz2 wantsToBeCachedByHand class
		equals: True
		description: 'testOpening_amp:2.27'.
	self
		assert: tmp_KCrj86y5Cz2 wantsToBeCachedByHand
		equals: true
		description: 'testOpening_amp:2.28'.
	self
		assert: tmp_KCrj86y5Cz2 canBeMaximized class
		equals: True
		description: 'testOpening_amp:2.29'.
	self
		assert: tmp_KCrj86y5Cz2 canBeMaximized
		equals: true
		description: 'testOpening_amp:2.30'
]

{ #category : #'as yet unclassified' }
TSCanvasTestAmpTest >> testRemovingShapes_amp [
	<madeBySmallAmp>
	| e |
	e := TSEllipse new.
	self
		assert: e class
		equals: TSEllipse
		description: 'testRemovingShapes_amp:1.1'.
	self
		assert: e radius class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:1.2'.
	self
		assert: e radius
		equals: 0.0
		description: 'testRemovingShapes_amp:1.3'.
	c addShape: e.
	self
		assert: c class
		equals: TSCanvas
		description: 'testRemovingShapes_amp:2.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testRemovingShapes_amp:2.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testRemovingShapes_amp:2.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testRemovingShapes_amp:2.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testRemovingShapes_amp:2.5'.
	self
		assert: c color class
		equals: Color
		description: 'testRemovingShapes_amp:2.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testRemovingShapes_amp:2.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testRemovingShapes_amp:2.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testRemovingShapes_amp:2.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testRemovingShapes_amp:2.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testRemovingShapes_amp:2.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testRemovingShapes_amp:2.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testRemovingShapes_amp:2.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testRemovingShapes_amp:2.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testRemovingShapes_amp:2.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testRemovingShapes_amp:2.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testRemovingShapes_amp:2.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testRemovingShapes_amp:2.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes_amp:2.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.33'.
	self
		assert: c morph
		equals: nil
		description: 'testRemovingShapes_amp:2.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testRemovingShapes_amp:2.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testRemovingShapes_amp:2.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testRemovingShapes_amp:2.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testRemovingShapes_amp:2.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testRemovingShapes_amp:2.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testRemovingShapes_amp:2.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testRemovingShapes_amp:2.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testRemovingShapes_amp:2.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testRemovingShapes_amp:2.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testRemovingShapes_amp:2.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testRemovingShapes_amp:2.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testRemovingShapes_amp:2.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testRemovingShapes_amp:2.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testRemovingShapes_amp:2.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes_amp:2.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testRemovingShapes_amp:2.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testRemovingShapes_amp:2.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testRemovingShapes_amp:2.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testRemovingShapes_amp:2.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testRemovingShapes_amp:2.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testRemovingShapes_amp:2.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testRemovingShapes_amp:2.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testRemovingShapes_amp:2.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testRemovingShapes_amp:2.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testRemovingShapes_amp:2.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testRemovingShapes_amp:2.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testRemovingShapes_amp:2.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testRemovingShapes_amp:2.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testRemovingShapes_amp:2.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testRemovingShapes_amp:2.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testRemovingShapes_amp:2.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testRemovingShapes_amp:2.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testRemovingShapes_amp:2.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testRemovingShapes_amp:2.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testRemovingShapes_amp:2.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testRemovingShapes_amp:2.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testRemovingShapes_amp:2.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testRemovingShapes_amp:2.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testRemovingShapes_amp:2.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testRemovingShapes_amp:2.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testRemovingShapes_amp:2.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:2.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testRemovingShapes_amp:2.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.90'.
	self
		assert: c view
		equals: nil
		description: 'testRemovingShapes_amp:2.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testRemovingShapes_amp:2.92'.
	self
		assert: c isShape
		equals: false
		description: 'testRemovingShapes_amp:2.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testRemovingShapes_amp:2.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testRemovingShapes_amp:2.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testRemovingShapes_amp:2.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testRemovingShapes_amp:2.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testRemovingShapes_amp:2.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testRemovingShapes_amp:2.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testRemovingShapes_amp:2.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testRemovingShapes_amp:2.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testRemovingShapes_amp:2.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testRemovingShapes_amp:2.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testRemovingShapes_amp:2.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testRemovingShapes_amp:2.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testRemovingShapes_amp:2.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testRemovingShapes_amp:2.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testRemovingShapes_amp:2.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testRemovingShapes_amp:2.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testRemovingShapes_amp:2.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testRemovingShapes_amp:2.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testRemovingShapes_amp:2.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testRemovingShapes_amp:2.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testRemovingShapes_amp:2.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes_amp:2.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testRemovingShapes_amp:2.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testRemovingShapes_amp:2.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testRemovingShapes_amp:2.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testRemovingShapes_amp:2.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testRemovingShapes_amp:2.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testRemovingShapes_amp:2.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testRemovingShapes_amp:2.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testRemovingShapes_amp:2.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testRemovingShapes_amp:2.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testRemovingShapes_amp:2.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testRemovingShapes_amp:2.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testRemovingShapes_amp:2.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testRemovingShapes_amp:2.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testRemovingShapes_amp:2.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testRemovingShapes_amp:2.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testRemovingShapes_amp:2.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testRemovingShapes_amp:2.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testRemovingShapes_amp:2.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testRemovingShapes_amp:2.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testRemovingShapes_amp:2.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testRemovingShapes_amp:2.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testRemovingShapes_amp:2.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testRemovingShapes_amp:2.152'.
	e remove.
	self
		assert: e class
		equals: TSEllipse
		description: 'testRemovingShapes_amp:3.1'.
	self
		assert: e radius class
		equals: SmallFloat64
		description: 'testRemovingShapes_amp:3.2'.
	self
		assert: e radius
		equals: 0.0
		description: 'testRemovingShapes_amp:3.3'
]
