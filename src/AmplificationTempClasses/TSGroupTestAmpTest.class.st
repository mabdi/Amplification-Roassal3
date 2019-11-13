Class {
	#name : #TSGroupTestAmpTest,
	#superclass : #TSTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> testAddShape_amp [
	<madeBySmallAmp>
	| g tmp_WZZlnWM6Gi1 |
	g := TSGroup new.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddShape_amp:1.1'.
	self assert: g size equals: 0 description: 'testAddShape_amp:1.2'.
	tmp_WZZlnWM6Gi1 := g add: TSBox new.
	self
		assert: g class
		equals: TSGroup
		description: 'testAddShape_amp:2.1'.
	self assert: g size equals: 1 description: 'testAddShape_amp:2.2'.
	self
		assert: tmp_WZZlnWM6Gi1 class
		equals: TSBox
		description: 'testAddShape_amp:2.1'.
	self
		assert: tmp_WZZlnWM6Gi1 cornerRadius class
		equals: UndefinedObject
		description: 'testAddShape_amp:2.2'.
	self
		assert: tmp_WZZlnWM6Gi1 cornerRadius
		equals: nil
		description: 'testAddShape_amp:2.3'.
	self
		assert: tmp_WZZlnWM6Gi1 hasCornerRadius class
		equals: False
		description: 'testAddShape_amp:2.4'.
	self
		assert: tmp_WZZlnWM6Gi1 hasCornerRadius
		equals: false
		description: 'testAddShape_amp:2.5'
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> testAsGroup_amp [
	<madeBySmallAmp>
	| t |
	t := #(1 2 3) asGroup.
	self
		assert: #(1 2 3) class
		equals: Array
		description: 'testAsGroup_amp:1.1'.
	self
		assert: #(1 2 3) size
		equals: 3
		description: 'testAsGroup_amp:1.2'.
	self
		assert: t class
		equals: TSGroup
		description: 'testAsGroup_amp:1.1'.
	self assert: t size equals: 3 description: 'testAsGroup_amp:1.2'
]

{ #category : #'as yet unclassified' }
TSGroupTestAmpTest >> testDrawGroup_amp [
	<madeBySmallAmp>
	| g c com tmp_RC8UcyLJns1 tmp_N3NTkWtZkn5 |
	c := TSCanvas new.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawGroup_amp:1.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawGroup_amp:1.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawGroup_amp:1.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawGroup_amp:1.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawGroup_amp:1.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawGroup_amp:1.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawGroup_amp:1.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawGroup_amp:1.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawGroup_amp:1.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawGroup_amp:1.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawGroup_amp:1.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawGroup_amp:1.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawGroup_amp:1.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawGroup_amp:1.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawGroup_amp:1.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawGroup_amp:1.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawGroup_amp:1.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:1.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawGroup_amp:1.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:1.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawGroup_amp:1.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawGroup_amp:1.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawGroup_amp:1.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawGroup_amp:1.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawGroup_amp:1.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawGroup_amp:1.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawGroup_amp:1.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawGroup_amp:1.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawGroup_amp:1.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawGroup_amp:1.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawGroup_amp:1.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawGroup_amp:1.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawGroup_amp:1.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawGroup_amp:1.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawGroup_amp:1.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:1.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawGroup_amp:1.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawGroup_amp:1.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawGroup_amp:1.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawGroup_amp:1.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.59'.
	self
		assert: c parent numberOfShapes
		equals: 0
		description: 'testDrawGroup_amp:1.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawGroup_amp:1.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawGroup_amp:1.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawGroup_amp:1.63'.
	self
		assert: c shapes size
		equals: 0
		description: 'testDrawGroup_amp:1.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawGroup_amp:1.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.66'.
	self
		assert: c encompassingRectangle top
		equals: 0
		description: 'testDrawGroup_amp:1.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawGroup_amp:1.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawGroup_amp:1.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.70'.
	self
		assert: c encompassingRectangle area
		equals: 1
		description: 'testDrawGroup_amp:1.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawGroup_amp:1.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawGroup_amp:1.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.74'.
	self
		assert: c encompassingRectangle left
		equals: 0
		description: 'testDrawGroup_amp:1.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.76'.
	self
		assert: c encompassingRectangle width
		equals: 1
		description: 'testDrawGroup_amp:1.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.78'.
	self
		assert: c encompassingRectangle right
		equals: 1
		description: 'testDrawGroup_amp:1.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawGroup_amp:1.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawGroup_amp:1.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawGroup_amp:1.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawGroup_amp:1.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1
		description: 'testDrawGroup_amp:1.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawGroup_amp:1.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawGroup_amp:1.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.88'.
	self
		assert: c encompassingRectangle height
		equals: 1
		description: 'testDrawGroup_amp:1.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.90'.
	self assert: c view equals: nil description: 'testDrawGroup_amp:1.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawGroup_amp:1.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawGroup_amp:1.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawGroup_amp:1.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawGroup_amp:1.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawGroup_amp:1.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawGroup_amp:1.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawGroup_amp:1.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawGroup_amp:1.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawGroup_amp:1.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawGroup_amp:1.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawGroup_amp:1.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawGroup_amp:1.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawGroup_amp:1.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawGroup_amp:1.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawGroup_amp:1.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawGroup_amp:1.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawGroup_amp:1.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawGroup_amp:1.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawGroup_amp:1.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawGroup_amp:1.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawGroup_amp:1.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawGroup_amp:1.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawGroup_amp:1.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:1.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawGroup_amp:1.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawGroup_amp:1.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawGroup_amp:1.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawGroup_amp:1.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.130'.
	self
		assert: c topParent numberOfShapes
		equals: 0
		description: 'testDrawGroup_amp:1.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawGroup_amp:1.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawGroup_amp:1.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.134'.
	self
		assert: c numberOfShapes
		equals: 0
		description: 'testDrawGroup_amp:1.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawGroup_amp:1.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawGroup_amp:1.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawGroup_amp:1.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:1.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawGroup_amp:1.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:1.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawGroup_amp:1.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawGroup_amp:1.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawGroup_amp:1.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:1.147'.
	self
		assert: c canvas numberOfShapes
		equals: 0
		description: 'testDrawGroup_amp:1.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawGroup_amp:1.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawGroup_amp:1.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawGroup_amp:1.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawGroup_amp:1.152'.
	g := TSGroup new.
	self
		assert: g class
		equals: TSGroup
		description: 'testDrawGroup_amp:2.1'.
	self assert: g size equals: 0 description: 'testDrawGroup_amp:2.2'.
	tmp_RC8UcyLJns1 := g add: TSBox new.
	self
		assert: g class
		equals: TSGroup
		description: 'testDrawGroup_amp:3.1'.
	self assert: g size equals: 1 description: 'testDrawGroup_amp:3.2'.
	self
		assert: tmp_RC8UcyLJns1 class
		equals: TSBox
		description: 'testDrawGroup_amp:3.1'.
	self
		assert: tmp_RC8UcyLJns1 cornerRadius class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:3.2'.
	self
		assert: tmp_RC8UcyLJns1 cornerRadius
		equals: nil
		description: 'testDrawGroup_amp:3.3'.
	self
		assert: tmp_RC8UcyLJns1 hasCornerRadius class
		equals: False
		description: 'testDrawGroup_amp:3.4'.
	self
		assert: tmp_RC8UcyLJns1 hasCornerRadius
		equals: false
		description: 'testDrawGroup_amp:3.5'.
	com := TSComposite new shapes: g.
	self
		assert: com class
		equals: TSComposite
		description: 'testDrawGroup_amp:4.1'.
	self
		assert: com shapes class
		equals: TSGroup
		description: 'testDrawGroup_amp:4.2'.
	self
		assert: com shapes size
		equals: 1
		description: 'testDrawGroup_amp:4.3'.
	c addShape: com.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawGroup_amp:5.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawGroup_amp:5.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawGroup_amp:5.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawGroup_amp:5.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawGroup_amp:5.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawGroup_amp:5.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawGroup_amp:5.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawGroup_amp:5.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawGroup_amp:5.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawGroup_amp:5.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawGroup_amp:5.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawGroup_amp:5.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawGroup_amp:5.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawGroup_amp:5.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawGroup_amp:5.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawGroup_amp:5.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawGroup_amp:5.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawGroup_amp:5.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:5.32'.
	self
		assert: c morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.33'.
	self
		assert: c morph
		equals: nil
		description: 'testDrawGroup_amp:5.34'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawGroup_amp:5.35'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawGroup_amp:5.36'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawGroup_amp:5.37'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.38'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawGroup_amp:5.39'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawGroup_amp:5.40'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawGroup_amp:5.41'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawGroup_amp:5.42'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawGroup_amp:5.43'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.44'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawGroup_amp:5.45'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawGroup_amp:5.46'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawGroup_amp:5.47'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawGroup_amp:5.48'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawGroup_amp:5.49'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawGroup_amp:5.50'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.51'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:5.52'.
	self
		assert: c parent morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.53'.
	self
		assert: c parent morph
		equals: nil
		description: 'testDrawGroup_amp:5.54'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.55'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawGroup_amp:5.56'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawGroup_amp:5.57'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawGroup_amp:5.58'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.59'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:5.60'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawGroup_amp:5.61'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawGroup_amp:5.62'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawGroup_amp:5.63'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawGroup_amp:5.64'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawGroup_amp:5.65'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.66'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testDrawGroup_amp:5.67'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawGroup_amp:5.68'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawGroup_amp:5.69'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.70'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testDrawGroup_amp:5.71'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawGroup_amp:5.72'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawGroup_amp:5.73'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.74'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testDrawGroup_amp:5.75'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.76'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testDrawGroup_amp:5.77'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.78'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testDrawGroup_amp:5.79'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawGroup_amp:5.80'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawGroup_amp:5.81'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawGroup_amp:5.82'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawGroup_amp:5.83'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.84'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testDrawGroup_amp:5.85'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawGroup_amp:5.86'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawGroup_amp:5.87'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:5.88'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testDrawGroup_amp:5.89'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.90'.
	self assert: c view equals: nil description: 'testDrawGroup_amp:5.91'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawGroup_amp:5.92'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawGroup_amp:5.93'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawGroup_amp:5.94'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.95'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawGroup_amp:5.96'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawGroup_amp:5.97'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawGroup_amp:5.98'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.99'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawGroup_amp:5.100'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawGroup_amp:5.101'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawGroup_amp:5.102'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.103'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawGroup_amp:5.104'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.105'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawGroup_amp:5.106'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.107'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawGroup_amp:5.108'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawGroup_amp:5.109'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawGroup_amp:5.110'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawGroup_amp:5.111'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawGroup_amp:5.112'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.113'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawGroup_amp:5.114'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawGroup_amp:5.115'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawGroup_amp:5.116'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.117'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawGroup_amp:5.118'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawGroup_amp:5.119'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawGroup_amp:5.120'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawGroup_amp:5.121'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.122'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:5.123'.
	self
		assert: c topParent morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.124'.
	self
		assert: c topParent morph
		equals: nil
		description: 'testDrawGroup_amp:5.125'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.126'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawGroup_amp:5.127'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawGroup_amp:5.128'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawGroup_amp:5.129'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.130'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:5.131'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawGroup_amp:5.132'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawGroup_amp:5.133'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.134'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:5.135'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawGroup_amp:5.136'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawGroup_amp:5.137'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawGroup_amp:5.138'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.139'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:5.140'.
	self
		assert: c canvas morph class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.141'.
	self
		assert: c canvas morph
		equals: nil
		description: 'testDrawGroup_amp:5.142'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:5.143'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawGroup_amp:5.144'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawGroup_amp:5.145'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawGroup_amp:5.146'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:5.147'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:5.148'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawGroup_amp:5.149'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawGroup_amp:5.150'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawGroup_amp:5.151'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawGroup_amp:5.152'.
	tmp_N3NTkWtZkn5 := c createMorph.
	self
		assert: c class
		equals: TSCanvas
		description: 'testDrawGroup_amp:6.1'.
	self
		assert: c fixedShapes class
		equals: TSGroup
		description: 'testDrawGroup_amp:6.2'.
	self
		assert: c fixedShapes size
		equals: 0
		description: 'testDrawGroup_amp:6.3'.
	self
		assert: c showRectangles class
		equals: False
		description: 'testDrawGroup_amp:6.4'.
	self
		assert: c showRectangles
		equals: false
		description: 'testDrawGroup_amp:6.5'.
	self
		assert: c color class
		equals: Color
		description: 'testDrawGroup_amp:6.6'.
	self
		assert: c color alpha class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.7'.
	self
		assert: c color alpha
		equals: 1.0
		description: 'testDrawGroup_amp:6.8'.
	self
		assert: c color red class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.9'.
	self
		assert: c color red
		equals: 1.0
		description: 'testDrawGroup_amp:6.10'.
	self
		assert: c color hsvSaturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.11'.
	self
		assert: c color hsvSaturation
		equals: 0.0
		description: 'testDrawGroup_amp:6.12'.
	self
		assert: c color brightness class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.13'.
	self
		assert: c color brightness
		equals: 1.0
		description: 'testDrawGroup_amp:6.14'.
	self
		assert: c color hue class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.15'.
	self
		assert: c color hue
		equals: 0.0
		description: 'testDrawGroup_amp:6.16'.
	self
		assert: c color green class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.17'.
	self
		assert: c color green
		equals: 1.0
		description: 'testDrawGroup_amp:6.18'.
	self
		assert: c color chroma class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.19'.
	self
		assert: c color chroma
		equals: 0.0
		description: 'testDrawGroup_amp:6.20'.
	self
		assert: c color lightness class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.21'.
	self
		assert: c color lightness
		equals: 1.0
		description: 'testDrawGroup_amp:6.22'.
	self
		assert: c color hslSaturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.23'.
	self
		assert: c color hslSaturation
		equals: 0.0
		description: 'testDrawGroup_amp:6.24'.
	self
		assert: c color saturation class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.25'.
	self
		assert: c color saturation
		equals: 0.0
		description: 'testDrawGroup_amp:6.26'.
	self
		assert: c color luminance class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.27'.
	self
		assert: c color luminance
		equals: 1.0
		description: 'testDrawGroup_amp:6.28'.
	self
		assert: c color blue class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.29'.
	self
		assert: c color blue
		equals: 1.0
		description: 'testDrawGroup_amp:6.30'.
	self
		assert: c numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.31'.
	self
		assert: c numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:6.32'.
	self
		assert: c morph class
		equals: TSAthensMorph
		description: 'testDrawGroup_amp:6.33'.
	self
		assert: c morph isDrawing class
		equals: False
		description: 'testDrawGroup_amp:6.34'.
	self
		assert: c morph isDrawing
		equals: false
		description: 'testDrawGroup_amp:6.35'.
	self
		assert: c morph wantsSteps class
		equals: False
		description: 'testDrawGroup_amp:6.36'.
	self
		assert: c morph wantsSteps
		equals: false
		description: 'testDrawGroup_amp:6.37'.
	self
		assert: c morph isDragging class
		equals: False
		description: 'testDrawGroup_amp:6.38'.
	self
		assert: c morph isDragging
		equals: false
		description: 'testDrawGroup_amp:6.39'.
	self
		assert: c extent class
		equals: Point
		description: 'testDrawGroup_amp:6.40'.
	self
		assert: c extent isZero class
		equals: False
		description: 'testDrawGroup_amp:6.41'.
	self
		assert: c extent isZero
		equals: false
		description: 'testDrawGroup_amp:6.42'.
	self
		assert: c extent y class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.43'.
	self
		assert: c extent y
		equals: 500
		description: 'testDrawGroup_amp:6.44'.
	self
		assert: c extent isFloatPoint class
		equals: False
		description: 'testDrawGroup_amp:6.45'.
	self
		assert: c extent isFloatPoint
		equals: false
		description: 'testDrawGroup_amp:6.46'.
	self
		assert: c extent isIntegerPoint class
		equals: True
		description: 'testDrawGroup_amp:6.47'.
	self
		assert: c extent isIntegerPoint
		equals: true
		description: 'testDrawGroup_amp:6.48'.
	self
		assert: c extent x class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.49'.
	self
		assert: c extent x
		equals: 500
		description: 'testDrawGroup_amp:6.50'.
	self
		assert: c extent isPoint class
		equals: True
		description: 'testDrawGroup_amp:6.51'.
	self
		assert: c extent isPoint
		equals: true
		description: 'testDrawGroup_amp:6.52'.
	self
		assert: c parent class
		equals: TSCanvas
		description: 'testDrawGroup_amp:6.53'.
	self
		assert: c parent showRectangles class
		equals: False
		description: 'testDrawGroup_amp:6.54'.
	self
		assert: c parent showRectangles
		equals: false
		description: 'testDrawGroup_amp:6.55'.
	self
		assert: c parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.56'.
	self
		assert: c parent numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:6.57'.
	self
		assert: c parent view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:6.58'.
	self
		assert: c parent view
		equals: nil
		description: 'testDrawGroup_amp:6.59'.
	self
		assert: c parent isShape class
		equals: False
		description: 'testDrawGroup_amp:6.60'.
	self
		assert: c parent isShape
		equals: false
		description: 'testDrawGroup_amp:6.61'.
	self
		assert: c parent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.62'.
	self
		assert: c parent numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:6.63'.
	self
		assert: c parent clearBackground class
		equals: True
		description: 'testDrawGroup_amp:6.64'.
	self
		assert: c parent clearBackground
		equals: true
		description: 'testDrawGroup_amp:6.65'.
	self
		assert: c shapes class
		equals: TSGroup
		description: 'testDrawGroup_amp:6.66'.
	self
		assert: c shapes size
		equals: 1
		description: 'testDrawGroup_amp:6.67'.
	self
		assert: c encompassingRectangle class
		equals: Rectangle
		description: 'testDrawGroup_amp:6.68'.
	self
		assert: c encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.69'.
	self
		assert: c encompassingRectangle top
		equals: 0.0
		description: 'testDrawGroup_amp:6.70'.
	self
		assert: c encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawGroup_amp:6.71'.
	self
		assert: c encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDrawGroup_amp:6.72'.
	self
		assert: c encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.73'.
	self
		assert: c encompassingRectangle area
		equals: 1.0
		description: 'testDrawGroup_amp:6.74'.
	self
		assert: c encompassingRectangle isTall class
		equals: False
		description: 'testDrawGroup_amp:6.75'.
	self
		assert: c encompassingRectangle isTall
		equals: false
		description: 'testDrawGroup_amp:6.76'.
	self
		assert: c encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.77'.
	self
		assert: c encompassingRectangle left
		equals: 0.0
		description: 'testDrawGroup_amp:6.78'.
	self
		assert: c encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.79'.
	self
		assert: c encompassingRectangle width
		equals: 1.0
		description: 'testDrawGroup_amp:6.80'.
	self
		assert: c encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.81'.
	self
		assert: c encompassingRectangle right
		equals: 1.0
		description: 'testDrawGroup_amp:6.82'.
	self
		assert: c encompassingRectangle isZero class
		equals: False
		description: 'testDrawGroup_amp:6.83'.
	self
		assert: c encompassingRectangle isZero
		equals: false
		description: 'testDrawGroup_amp:6.84'.
	self
		assert: c encompassingRectangle isWide class
		equals: False
		description: 'testDrawGroup_amp:6.85'.
	self
		assert: c encompassingRectangle isWide
		equals: false
		description: 'testDrawGroup_amp:6.86'.
	self
		assert: c encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.87'.
	self
		assert: c encompassingRectangle bottom
		equals: 1.0
		description: 'testDrawGroup_amp:6.88'.
	self
		assert: c encompassingRectangle isRectangle class
		equals: True
		description: 'testDrawGroup_amp:6.89'.
	self
		assert: c encompassingRectangle isRectangle
		equals: true
		description: 'testDrawGroup_amp:6.90'.
	self
		assert: c encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDrawGroup_amp:6.91'.
	self
		assert: c encompassingRectangle height
		equals: 1.0
		description: 'testDrawGroup_amp:6.92'.
	self
		assert: c view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:6.93'.
	self assert: c view equals: nil description: 'testDrawGroup_amp:6.94'.
	self
		assert: c isShape class
		equals: False
		description: 'testDrawGroup_amp:6.95'.
	self
		assert: c isShape
		equals: false
		description: 'testDrawGroup_amp:6.96'.
	self
		assert: c basicRectangle class
		equals: Rectangle
		description: 'testDrawGroup_amp:6.97'.
	self
		assert: c basicRectangle top class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.98'.
	self
		assert: c basicRectangle top
		equals: 0
		description: 'testDrawGroup_amp:6.99'.
	self
		assert: c basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDrawGroup_amp:6.100'.
	self
		assert: c basicRectangle hasPositiveExtent
		equals: true
		description: 'testDrawGroup_amp:6.101'.
	self
		assert: c basicRectangle area class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.102'.
	self
		assert: c basicRectangle area
		equals: 250000
		description: 'testDrawGroup_amp:6.103'.
	self
		assert: c basicRectangle isTall class
		equals: False
		description: 'testDrawGroup_amp:6.104'.
	self
		assert: c basicRectangle isTall
		equals: false
		description: 'testDrawGroup_amp:6.105'.
	self
		assert: c basicRectangle left class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.106'.
	self
		assert: c basicRectangle left
		equals: 0
		description: 'testDrawGroup_amp:6.107'.
	self
		assert: c basicRectangle width class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.108'.
	self
		assert: c basicRectangle width
		equals: 500
		description: 'testDrawGroup_amp:6.109'.
	self
		assert: c basicRectangle right class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.110'.
	self
		assert: c basicRectangle right
		equals: 500
		description: 'testDrawGroup_amp:6.111'.
	self
		assert: c basicRectangle isZero class
		equals: False
		description: 'testDrawGroup_amp:6.112'.
	self
		assert: c basicRectangle isZero
		equals: false
		description: 'testDrawGroup_amp:6.113'.
	self
		assert: c basicRectangle isWide class
		equals: False
		description: 'testDrawGroup_amp:6.114'.
	self
		assert: c basicRectangle isWide
		equals: false
		description: 'testDrawGroup_amp:6.115'.
	self
		assert: c basicRectangle bottom class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.116'.
	self
		assert: c basicRectangle bottom
		equals: 500
		description: 'testDrawGroup_amp:6.117'.
	self
		assert: c basicRectangle isRectangle class
		equals: True
		description: 'testDrawGroup_amp:6.118'.
	self
		assert: c basicRectangle isRectangle
		equals: true
		description: 'testDrawGroup_amp:6.119'.
	self
		assert: c basicRectangle height class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.120'.
	self
		assert: c basicRectangle height
		equals: 500
		description: 'testDrawGroup_amp:6.121'.
	self
		assert: c topParent class
		equals: TSCanvas
		description: 'testDrawGroup_amp:6.122'.
	self
		assert: c topParent showRectangles class
		equals: False
		description: 'testDrawGroup_amp:6.123'.
	self
		assert: c topParent showRectangles
		equals: false
		description: 'testDrawGroup_amp:6.124'.
	self
		assert: c topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.125'.
	self
		assert: c topParent numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:6.126'.
	self
		assert: c topParent view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:6.127'.
	self
		assert: c topParent view
		equals: nil
		description: 'testDrawGroup_amp:6.128'.
	self
		assert: c topParent isShape class
		equals: False
		description: 'testDrawGroup_amp:6.129'.
	self
		assert: c topParent isShape
		equals: false
		description: 'testDrawGroup_amp:6.130'.
	self
		assert: c topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.131'.
	self
		assert: c topParent numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:6.132'.
	self
		assert: c topParent clearBackground class
		equals: True
		description: 'testDrawGroup_amp:6.133'.
	self
		assert: c topParent clearBackground
		equals: true
		description: 'testDrawGroup_amp:6.134'.
	self
		assert: c numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.135'.
	self
		assert: c numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:6.136'.
	self
		assert: c canvas class
		equals: TSCanvas
		description: 'testDrawGroup_amp:6.137'.
	self
		assert: c canvas showRectangles class
		equals: False
		description: 'testDrawGroup_amp:6.138'.
	self
		assert: c canvas showRectangles
		equals: false
		description: 'testDrawGroup_amp:6.139'.
	self
		assert: c canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.140'.
	self
		assert: c canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:6.141'.
	self
		assert: c canvas view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:6.142'.
	self
		assert: c canvas view
		equals: nil
		description: 'testDrawGroup_amp:6.143'.
	self
		assert: c canvas isShape class
		equals: False
		description: 'testDrawGroup_amp:6.144'.
	self
		assert: c canvas isShape
		equals: false
		description: 'testDrawGroup_amp:6.145'.
	self
		assert: c canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.146'.
	self
		assert: c canvas numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:6.147'.
	self
		assert: c canvas clearBackground class
		equals: True
		description: 'testDrawGroup_amp:6.148'.
	self
		assert: c canvas clearBackground
		equals: true
		description: 'testDrawGroup_amp:6.149'.
	self
		assert: c clearBackground class
		equals: True
		description: 'testDrawGroup_amp:6.150'.
	self
		assert: c clearBackground
		equals: true
		description: 'testDrawGroup_amp:6.151'.
	self
		assert: tmp_N3NTkWtZkn5 class
		equals: TSAthensMorph
		description: 'testDrawGroup_amp:6.1'.
	self
		assert: tmp_N3NTkWtZkn5 isDrawing class
		equals: False
		description: 'testDrawGroup_amp:6.2'.
	self
		assert: tmp_N3NTkWtZkn5 isDrawing
		equals: false
		description: 'testDrawGroup_amp:6.3'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawGroup_amp:6.4'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawGroup_amp:6.5'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawGroup_amp:6.6'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.7'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:6.8'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:6.9'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas view
		equals: nil
		description: 'testDrawGroup_amp:6.10'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas isShape class
		equals: False
		description: 'testDrawGroup_amp:6.11'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas isShape
		equals: false
		description: 'testDrawGroup_amp:6.12'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.13'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:6.14'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawGroup_amp:6.15'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawGroup_amp:6.16'.
	self
		assert: tmp_N3NTkWtZkn5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawGroup_amp:6.17'.
	self
		assert: tmp_N3NTkWtZkn5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:6.18'.
	self
		assert: tmp_N3NTkWtZkn5 renderer builder
		equals: nil
		description: 'testDrawGroup_amp:6.19'.
	self
		assert: tmp_N3NTkWtZkn5 surface class
		equals: AthensCairoSurface
		description: 'testDrawGroup_amp:6.20'.
	self
		assert: tmp_N3NTkWtZkn5 surface status class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.21'.
	self
		assert: tmp_N3NTkWtZkn5 surface status
		equals: 0
		description: 'testDrawGroup_amp:6.22'.
	self
		assert: tmp_N3NTkWtZkn5 surface width class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.23'.
	self
		assert: tmp_N3NTkWtZkn5 surface width
		equals: 50
		description: 'testDrawGroup_amp:6.24'.
	self
		assert: tmp_N3NTkWtZkn5 surface height class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.25'.
	self
		assert: tmp_N3NTkWtZkn5 surface height
		equals: 40
		description: 'testDrawGroup_amp:6.26'.
	self
		assert: tmp_N3NTkWtZkn5 surface isSuccess class
		equals: True
		description: 'testDrawGroup_amp:6.27'.
	self
		assert: tmp_N3NTkWtZkn5 surface isSuccess
		equals: true
		description: 'testDrawGroup_amp:6.28'.
	self
		assert: tmp_N3NTkWtZkn5 surface stride class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.29'.
	self
		assert: tmp_N3NTkWtZkn5 surface stride
		equals: 200
		description: 'testDrawGroup_amp:6.30'.
	self
		assert: tmp_N3NTkWtZkn5 canvas class
		equals: TSCanvas
		description: 'testDrawGroup_amp:6.31'.
	self
		assert: tmp_N3NTkWtZkn5 canvas showRectangles class
		equals: False
		description: 'testDrawGroup_amp:6.32'.
	self
		assert: tmp_N3NTkWtZkn5 canvas showRectangles
		equals: false
		description: 'testDrawGroup_amp:6.33'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.34'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:6.35'.
	self
		assert: tmp_N3NTkWtZkn5 canvas view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:6.36'.
	self
		assert: tmp_N3NTkWtZkn5 canvas view
		equals: nil
		description: 'testDrawGroup_amp:6.37'.
	self
		assert: tmp_N3NTkWtZkn5 canvas isShape class
		equals: False
		description: 'testDrawGroup_amp:6.38'.
	self
		assert: tmp_N3NTkWtZkn5 canvas isShape
		equals: false
		description: 'testDrawGroup_amp:6.39'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:6.40'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:6.41'.
	self
		assert: tmp_N3NTkWtZkn5 canvas clearBackground class
		equals: True
		description: 'testDrawGroup_amp:6.42'.
	self
		assert: tmp_N3NTkWtZkn5 canvas clearBackground
		equals: true
		description: 'testDrawGroup_amp:6.43'.
	self
		assert: tmp_N3NTkWtZkn5 wantsSteps class
		equals: False
		description: 'testDrawGroup_amp:6.44'.
	self
		assert: tmp_N3NTkWtZkn5 wantsSteps
		equals: false
		description: 'testDrawGroup_amp:6.45'.
	self
		assert: tmp_N3NTkWtZkn5 isDragging class
		equals: False
		description: 'testDrawGroup_amp:6.46'.
	self
		assert: tmp_N3NTkWtZkn5 isDragging
		equals: false
		description: 'testDrawGroup_amp:6.47'.
	tmp_N3NTkWtZkn5 drawOnMockCanvas.
	self
		assert: tmp_N3NTkWtZkn5 class
		equals: TSAthensMorph
		description: 'testDrawGroup_amp:7.1'.
	self
		assert: tmp_N3NTkWtZkn5 isDrawing class
		equals: False
		description: 'testDrawGroup_amp:7.2'.
	self
		assert: tmp_N3NTkWtZkn5 isDrawing
		equals: false
		description: 'testDrawGroup_amp:7.3'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas class
		equals: TSCanvas
		description: 'testDrawGroup_amp:7.4'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas showRectangles class
		equals: False
		description: 'testDrawGroup_amp:7.5'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas showRectangles
		equals: false
		description: 'testDrawGroup_amp:7.6'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.7'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:7.8'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:7.9'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas view
		equals: nil
		description: 'testDrawGroup_amp:7.10'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas isShape class
		equals: False
		description: 'testDrawGroup_amp:7.11'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas isShape
		equals: false
		description: 'testDrawGroup_amp:7.12'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.13'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:7.14'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas clearBackground class
		equals: True
		description: 'testDrawGroup_amp:7.15'.
	self
		assert: tmp_N3NTkWtZkn5 trachelCanvas clearBackground
		equals: true
		description: 'testDrawGroup_amp:7.16'.
	self
		assert: tmp_N3NTkWtZkn5 renderer class
		equals: TSAthensRenderer
		description: 'testDrawGroup_amp:7.17'.
	self
		assert: tmp_N3NTkWtZkn5 renderer builder class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:7.18'.
	self
		assert: tmp_N3NTkWtZkn5 renderer builder
		equals: nil
		description: 'testDrawGroup_amp:7.19'.
	self
		assert: tmp_N3NTkWtZkn5 surface class
		equals: AthensCairoSurface
		description: 'testDrawGroup_amp:7.20'.
	self
		assert: tmp_N3NTkWtZkn5 surface status class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.21'.
	self
		assert: tmp_N3NTkWtZkn5 surface status
		equals: 0
		description: 'testDrawGroup_amp:7.22'.
	self
		assert: tmp_N3NTkWtZkn5 surface width class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.23'.
	self
		assert: tmp_N3NTkWtZkn5 surface width
		equals: 50
		description: 'testDrawGroup_amp:7.24'.
	self
		assert: tmp_N3NTkWtZkn5 surface height class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.25'.
	self
		assert: tmp_N3NTkWtZkn5 surface height
		equals: 40
		description: 'testDrawGroup_amp:7.26'.
	self
		assert: tmp_N3NTkWtZkn5 surface isSuccess class
		equals: True
		description: 'testDrawGroup_amp:7.27'.
	self
		assert: tmp_N3NTkWtZkn5 surface isSuccess
		equals: true
		description: 'testDrawGroup_amp:7.28'.
	self
		assert: tmp_N3NTkWtZkn5 surface stride class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.29'.
	self
		assert: tmp_N3NTkWtZkn5 surface stride
		equals: 200
		description: 'testDrawGroup_amp:7.30'.
	self
		assert: tmp_N3NTkWtZkn5 canvas class
		equals: TSCanvas
		description: 'testDrawGroup_amp:7.31'.
	self
		assert: tmp_N3NTkWtZkn5 canvas showRectangles class
		equals: False
		description: 'testDrawGroup_amp:7.32'.
	self
		assert: tmp_N3NTkWtZkn5 canvas showRectangles
		equals: false
		description: 'testDrawGroup_amp:7.33'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.34'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDrawGroup_amp:7.35'.
	self
		assert: tmp_N3NTkWtZkn5 canvas view class
		equals: UndefinedObject
		description: 'testDrawGroup_amp:7.36'.
	self
		assert: tmp_N3NTkWtZkn5 canvas view
		equals: nil
		description: 'testDrawGroup_amp:7.37'.
	self
		assert: tmp_N3NTkWtZkn5 canvas isShape class
		equals: False
		description: 'testDrawGroup_amp:7.38'.
	self
		assert: tmp_N3NTkWtZkn5 canvas isShape
		equals: false
		description: 'testDrawGroup_amp:7.39'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDrawGroup_amp:7.40'.
	self
		assert: tmp_N3NTkWtZkn5 canvas numberOfShapes
		equals: 1
		description: 'testDrawGroup_amp:7.41'.
	self
		assert: tmp_N3NTkWtZkn5 canvas clearBackground class
		equals: True
		description: 'testDrawGroup_amp:7.42'.
	self
		assert: tmp_N3NTkWtZkn5 canvas clearBackground
		equals: true
		description: 'testDrawGroup_amp:7.43'.
	self
		assert: tmp_N3NTkWtZkn5 wantsSteps class
		equals: False
		description: 'testDrawGroup_amp:7.44'.
	self
		assert: tmp_N3NTkWtZkn5 wantsSteps
		equals: false
		description: 'testDrawGroup_amp:7.45'.
	self
		assert: tmp_N3NTkWtZkn5 isDragging class
		equals: False
		description: 'testDrawGroup_amp:7.46'.
	self
		assert: tmp_N3NTkWtZkn5 isDragging
		equals: false
		description: 'testDrawGroup_amp:7.47'
]
