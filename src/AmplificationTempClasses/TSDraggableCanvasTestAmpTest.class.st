Class {
	#name : #TSDraggableCanvasTestAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> setUp [
	view := RSView new.
	view add: (RSShapeBuilder ellipse width: 40; height: 20) element.
	
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> testDefault_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> testDraggingModeLeft_amp [
	<madeBySmallAmp>
	| tmp_LDvvC6zJkD4 tmp_UYglwfzM3l5 tmp_qwbYj1t2ih9 tmp_91tDHRCsg411 tmp_TsMz26Yy1u13 tmp_pu15U6KpwB15 tmp_Rpk2ywTgKk17 |
	tmp_UYglwfzM3l5 := view @ TSDraggableCanvas left.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:1.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:1.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeLeft_amp:1.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:1.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeLeft_amp:1.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:1.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:1.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:1.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:1.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:1.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:1.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:1.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:1.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:1.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:1.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:1.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:1.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeLeft_amp:1.21'.
	self
		assert: tmp_UYglwfzM3l5 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:1.1'.
	self
		assert: tmp_UYglwfzM3l5 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:1.2'.
	self
		assert: tmp_UYglwfzM3l5 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:1.3'.
	self
		assert: tmp_UYglwfzM3l5 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:1.4'.
	self
		assert: tmp_UYglwfzM3l5 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:1.5'.
	self
		assert: tmp_UYglwfzM3l5 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:1.6'.
	self
		assert: tmp_UYglwfzM3l5 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.7'.
	self
		assert: tmp_UYglwfzM3l5 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:1.8'.
	self
		assert: tmp_UYglwfzM3l5 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.9'.
	self
		assert: tmp_UYglwfzM3l5 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:1.10'.
	self
		assert: tmp_UYglwfzM3l5 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.11'.
	self
		assert: tmp_UYglwfzM3l5 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:1.12'.
	self
		assert: tmp_UYglwfzM3l5 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.13'.
	self
		assert: tmp_UYglwfzM3l5 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:1.14'.
	self
		assert: tmp_UYglwfzM3l5 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.15'.
	self
		assert: tmp_UYglwfzM3l5 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:1.16'.
	self
		assert: tmp_UYglwfzM3l5 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.17'.
	self
		assert: tmp_UYglwfzM3l5 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:1.18'.
	self
		assert: tmp_UYglwfzM3l5 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.19'.
	self
		assert: tmp_UYglwfzM3l5 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:1.20'.
	self
		assert: tmp_UYglwfzM3l5 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.21'.
	self
		assert: tmp_UYglwfzM3l5 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:1.22'.
	self
		assert: tmp_UYglwfzM3l5 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.23'.
	self
		assert: tmp_UYglwfzM3l5 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:1.24'.
	self
		assert: tmp_UYglwfzM3l5 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.25'.
	self
		assert: tmp_UYglwfzM3l5 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:1.26'.
	self
		assert: tmp_UYglwfzM3l5 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.27'.
	self
		assert: tmp_UYglwfzM3l5 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:1.28'.
	self
		assert: tmp_UYglwfzM3l5 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.29'.
	self
		assert: tmp_UYglwfzM3l5 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:1.30'.
	self
		assert: tmp_UYglwfzM3l5 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.31'.
	self
		assert: tmp_UYglwfzM3l5 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:1.32'.
	self
		assert: tmp_UYglwfzM3l5 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:1.33'.
	self
		assert: tmp_UYglwfzM3l5 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:1.34'.
	self
		assert: tmp_UYglwfzM3l5 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:1.35'.
	self
		assert: tmp_UYglwfzM3l5 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:1.36'.
	self
		assert: tmp_UYglwfzM3l5 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:1.37'.
	self
		assert: tmp_UYglwfzM3l5 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.38'.
	self
		assert: tmp_UYglwfzM3l5 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:1.39'.
	self
		assert: tmp_UYglwfzM3l5 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:1.40'.
	self
		assert: tmp_UYglwfzM3l5 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:1.41'.
	self
		assert: tmp_UYglwfzM3l5 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:1.42'.
	self
		assert: tmp_UYglwfzM3l5 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:1.43'.
	self
		assert: tmp_UYglwfzM3l5 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.44'.
	self
		assert: tmp_UYglwfzM3l5 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:1.45'.
	self
		assert: tmp_UYglwfzM3l5 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:1.46'.
	self
		assert: tmp_UYglwfzM3l5 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:1.47'.
	self
		assert: tmp_UYglwfzM3l5 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:1.48'.
	self
		assert: tmp_UYglwfzM3l5 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:1.49'.
	self
		assert: tmp_UYglwfzM3l5 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:1.50'.
	self
		assert: tmp_UYglwfzM3l5 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.51'.
	self
		assert: tmp_UYglwfzM3l5 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:1.52'.
	self
		assert: tmp_UYglwfzM3l5 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:1.53'.
	self
		assert: tmp_UYglwfzM3l5 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:1.54'.
	self
		assert: tmp_UYglwfzM3l5 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:1.55'.
	self
		assert: tmp_UYglwfzM3l5 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:1.56'.
	self
		assert: tmp_UYglwfzM3l5 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.57'.
	self
		assert: tmp_UYglwfzM3l5 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:1.58'.
	self
		assert: tmp_UYglwfzM3l5 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:1.59'.
	self
		assert: tmp_UYglwfzM3l5 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:1.60'.
	self
		assert: tmp_UYglwfzM3l5 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:1.61'.
	self
		assert: tmp_UYglwfzM3l5 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:1.62'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:1.63'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.64'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:1.65'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:1.66'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:1.67'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.68'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:1.69'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:1.70'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:1.71'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.72'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:1.73'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.74'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:1.75'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.76'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:1.77'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:1.78'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:1.79'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:1.80'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:1.81'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.82'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:1.83'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:1.84'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:1.85'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:1.86'.
	self
		assert: tmp_UYglwfzM3l5 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:1.87'.
	self
		assert: tmp_UYglwfzM3l5 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:1.88'.
	self
		assert: tmp_UYglwfzM3l5 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.89'.
	self
		assert: tmp_UYglwfzM3l5 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:1.90'.
	self
		assert: tmp_UYglwfzM3l5 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:1.91'.
	self
		assert: tmp_UYglwfzM3l5 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:1.92'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:1.93'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.94'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:1.95'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:1.96'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:1.97'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.98'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:1.99'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:1.100'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:1.101'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.102'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:1.103'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.104'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:1.105'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.106'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:1.107'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:1.108'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:1.109'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:1.110'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:1.111'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.112'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:1.113'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:1.114'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:1.115'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.116'.
	self
		assert: tmp_UYglwfzM3l5 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:1.117'.
	self
		assert: tmp_UYglwfzM3l5 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:1.118'.
	self
		assert: tmp_UYglwfzM3l5 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:1.119'.
	self
		assert: tmp_UYglwfzM3l5 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:1.120'.
	self
		assert: tmp_UYglwfzM3l5 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.121'.
	self
		assert: tmp_UYglwfzM3l5 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:1.122'.
	self
		assert: tmp_UYglwfzM3l5 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:1.123'.
	self
		assert: tmp_UYglwfzM3l5 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:1.124'.
	self
		assert: tmp_UYglwfzM3l5 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:1.125'.
	self
		assert: tmp_UYglwfzM3l5 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:1.126'.
	self
		assert: tmp_UYglwfzM3l5 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.127'.
	self
		assert: tmp_UYglwfzM3l5 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:1.128'.
	self
		assert: tmp_UYglwfzM3l5 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:1.129'.
	self
		assert: tmp_UYglwfzM3l5 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:1.130'.
	self
		assert: tmp_UYglwfzM3l5 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.131'.
	self
		assert: tmp_UYglwfzM3l5 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:1.132'.
	self
		assert: tmp_UYglwfzM3l5 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:1.133'.
	self
		assert: tmp_UYglwfzM3l5 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:1.134'.
	self
		assert: tmp_UYglwfzM3l5 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:1.135'.
	self
		assert: tmp_UYglwfzM3l5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.136'.
	self
		assert: tmp_UYglwfzM3l5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:1.137'.
	self
		assert: tmp_UYglwfzM3l5 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:1.138'.
	self
		assert: tmp_UYglwfzM3l5 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:1.139'.
	self
		assert: tmp_UYglwfzM3l5 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:1.140'.
	self
		assert: tmp_UYglwfzM3l5 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:1.141'.
	self
		assert: tmp_UYglwfzM3l5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:1.142'.
	self
		assert: tmp_UYglwfzM3l5 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:1.143'.
	self
		assert: tmp_UYglwfzM3l5 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:1.144'.
	self
		assert: tmp_UYglwfzM3l5 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:1.145'.
	self
		assert: tmp_UYglwfzM3l5 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:1.146'.
	self
		assert: tmp_UYglwfzM3l5 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:1.147'.
	tmp_pu15U6KpwB15 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:2.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:2.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeLeft_amp:2.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:2.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeLeft_amp:2.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:2.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:2.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:2.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:2.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:2.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:2.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:2.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:2.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:2.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:2.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:2.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:2.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeLeft_amp:2.21'.
	self
		assert: tmp_pu15U6KpwB15 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:2.1'.
	self
		assert: tmp_pu15U6KpwB15 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:2.2'.
	self
		assert: tmp_pu15U6KpwB15 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:2.3'.
	self
		assert: tmp_pu15U6KpwB15 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:2.4'.
	self
		assert: tmp_pu15U6KpwB15 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:2.5'.
	self
		assert: tmp_pu15U6KpwB15 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:2.6'.
	self
		assert: tmp_pu15U6KpwB15 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.7'.
	self
		assert: tmp_pu15U6KpwB15 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:2.8'.
	self
		assert: tmp_pu15U6KpwB15 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.9'.
	self
		assert: tmp_pu15U6KpwB15 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:2.10'.
	self
		assert: tmp_pu15U6KpwB15 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.11'.
	self
		assert: tmp_pu15U6KpwB15 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:2.12'.
	self
		assert: tmp_pu15U6KpwB15 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.13'.
	self
		assert: tmp_pu15U6KpwB15 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:2.14'.
	self
		assert: tmp_pu15U6KpwB15 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.15'.
	self
		assert: tmp_pu15U6KpwB15 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:2.16'.
	self
		assert: tmp_pu15U6KpwB15 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.17'.
	self
		assert: tmp_pu15U6KpwB15 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:2.18'.
	self
		assert: tmp_pu15U6KpwB15 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.19'.
	self
		assert: tmp_pu15U6KpwB15 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:2.20'.
	self
		assert: tmp_pu15U6KpwB15 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.21'.
	self
		assert: tmp_pu15U6KpwB15 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:2.22'.
	self
		assert: tmp_pu15U6KpwB15 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.23'.
	self
		assert: tmp_pu15U6KpwB15 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:2.24'.
	self
		assert: tmp_pu15U6KpwB15 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.25'.
	self
		assert: tmp_pu15U6KpwB15 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:2.26'.
	self
		assert: tmp_pu15U6KpwB15 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.27'.
	self
		assert: tmp_pu15U6KpwB15 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:2.28'.
	self
		assert: tmp_pu15U6KpwB15 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.29'.
	self
		assert: tmp_pu15U6KpwB15 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:2.30'.
	self
		assert: tmp_pu15U6KpwB15 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.31'.
	self
		assert: tmp_pu15U6KpwB15 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:2.32'.
	self
		assert: tmp_pu15U6KpwB15 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:2.33'.
	self
		assert: tmp_pu15U6KpwB15 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:2.34'.
	self
		assert: tmp_pu15U6KpwB15 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:2.35'.
	self
		assert: tmp_pu15U6KpwB15 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:2.36'.
	self
		assert: tmp_pu15U6KpwB15 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:2.37'.
	self
		assert: tmp_pu15U6KpwB15 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.38'.
	self
		assert: tmp_pu15U6KpwB15 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:2.39'.
	self
		assert: tmp_pu15U6KpwB15 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:2.40'.
	self
		assert: tmp_pu15U6KpwB15 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:2.41'.
	self
		assert: tmp_pu15U6KpwB15 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:2.42'.
	self
		assert: tmp_pu15U6KpwB15 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:2.43'.
	self
		assert: tmp_pu15U6KpwB15 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.44'.
	self
		assert: tmp_pu15U6KpwB15 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:2.45'.
	self
		assert: tmp_pu15U6KpwB15 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:2.46'.
	self
		assert: tmp_pu15U6KpwB15 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:2.47'.
	self
		assert: tmp_pu15U6KpwB15 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:2.48'.
	self
		assert: tmp_pu15U6KpwB15 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:2.49'.
	self
		assert: tmp_pu15U6KpwB15 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:2.50'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.51'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:2.52'.
	self
		assert: tmp_pu15U6KpwB15 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:2.53'.
	self
		assert: tmp_pu15U6KpwB15 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:2.54'.
	self
		assert: tmp_pu15U6KpwB15 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:2.55'.
	self
		assert: tmp_pu15U6KpwB15 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:2.56'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.57'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:2.58'.
	self
		assert: tmp_pu15U6KpwB15 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:2.59'.
	self
		assert: tmp_pu15U6KpwB15 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:2.60'.
	self
		assert: tmp_pu15U6KpwB15 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:2.61'.
	self
		assert: tmp_pu15U6KpwB15 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:2.62'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:2.63'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.64'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:2.65'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:2.66'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:2.67'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.68'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:2.69'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:2.70'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:2.71'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.72'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:2.73'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.74'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:2.75'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.76'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:2.77'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:2.78'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:2.79'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:2.80'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:2.81'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.82'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:2.83'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:2.84'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:2.85'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:2.86'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:2.87'.
	self
		assert: tmp_pu15U6KpwB15 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:2.88'.
	self
		assert: tmp_pu15U6KpwB15 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.89'.
	self
		assert: tmp_pu15U6KpwB15 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:2.90'.
	self
		assert: tmp_pu15U6KpwB15 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:2.91'.
	self
		assert: tmp_pu15U6KpwB15 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:2.92'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:2.93'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.94'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:2.95'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:2.96'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:2.97'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.98'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:2.99'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:2.100'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:2.101'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.102'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:2.103'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.104'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:2.105'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.106'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:2.107'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:2.108'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:2.109'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:2.110'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:2.111'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.112'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:2.113'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:2.114'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:2.115'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.116'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:2.117'.
	self
		assert: tmp_pu15U6KpwB15 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:2.118'.
	self
		assert: tmp_pu15U6KpwB15 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:2.119'.
	self
		assert: tmp_pu15U6KpwB15 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:2.120'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.121'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:2.122'.
	self
		assert: tmp_pu15U6KpwB15 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:2.123'.
	self
		assert: tmp_pu15U6KpwB15 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:2.124'.
	self
		assert: tmp_pu15U6KpwB15 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:2.125'.
	self
		assert: tmp_pu15U6KpwB15 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:2.126'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.127'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:2.128'.
	self
		assert: tmp_pu15U6KpwB15 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:2.129'.
	self
		assert: tmp_pu15U6KpwB15 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:2.130'.
	self
		assert: tmp_pu15U6KpwB15 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.131'.
	self
		assert: tmp_pu15U6KpwB15 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:2.132'.
	self
		assert: tmp_pu15U6KpwB15 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:2.133'.
	self
		assert: tmp_pu15U6KpwB15 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:2.134'.
	self
		assert: tmp_pu15U6KpwB15 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:2.135'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.136'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:2.137'.
	self
		assert: tmp_pu15U6KpwB15 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:2.138'.
	self
		assert: tmp_pu15U6KpwB15 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:2.139'.
	self
		assert: tmp_pu15U6KpwB15 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:2.140'.
	self
		assert: tmp_pu15U6KpwB15 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:2.141'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:2.142'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:2.143'.
	self
		assert: tmp_pu15U6KpwB15 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:2.144'.
	self
		assert: tmp_pu15U6KpwB15 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:2.145'.
	self
		assert: tmp_pu15U6KpwB15 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:2.146'.
	self
		assert: tmp_pu15U6KpwB15 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:2.147'.
	tmp_pu15U6KpwB15
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	self
		assert: tmp_pu15U6KpwB15 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:3.1'.
	self
		assert: tmp_pu15U6KpwB15 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:3.2'.
	self
		assert: tmp_pu15U6KpwB15 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:3.3'.
	self
		assert: tmp_pu15U6KpwB15 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:3.4'.
	self
		assert: tmp_pu15U6KpwB15 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:3.5'.
	self
		assert: tmp_pu15U6KpwB15 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:3.6'.
	self
		assert: tmp_pu15U6KpwB15 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.7'.
	self
		assert: tmp_pu15U6KpwB15 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:3.8'.
	self
		assert: tmp_pu15U6KpwB15 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.9'.
	self
		assert: tmp_pu15U6KpwB15 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:3.10'.
	self
		assert: tmp_pu15U6KpwB15 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.11'.
	self
		assert: tmp_pu15U6KpwB15 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:3.12'.
	self
		assert: tmp_pu15U6KpwB15 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.13'.
	self
		assert: tmp_pu15U6KpwB15 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:3.14'.
	self
		assert: tmp_pu15U6KpwB15 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.15'.
	self
		assert: tmp_pu15U6KpwB15 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:3.16'.
	self
		assert: tmp_pu15U6KpwB15 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.17'.
	self
		assert: tmp_pu15U6KpwB15 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:3.18'.
	self
		assert: tmp_pu15U6KpwB15 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.19'.
	self
		assert: tmp_pu15U6KpwB15 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:3.20'.
	self
		assert: tmp_pu15U6KpwB15 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.21'.
	self
		assert: tmp_pu15U6KpwB15 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:3.22'.
	self
		assert: tmp_pu15U6KpwB15 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.23'.
	self
		assert: tmp_pu15U6KpwB15 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:3.24'.
	self
		assert: tmp_pu15U6KpwB15 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.25'.
	self
		assert: tmp_pu15U6KpwB15 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:3.26'.
	self
		assert: tmp_pu15U6KpwB15 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.27'.
	self
		assert: tmp_pu15U6KpwB15 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:3.28'.
	self
		assert: tmp_pu15U6KpwB15 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.29'.
	self
		assert: tmp_pu15U6KpwB15 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:3.30'.
	self
		assert: tmp_pu15U6KpwB15 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.31'.
	self
		assert: tmp_pu15U6KpwB15 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:3.32'.
	self
		assert: tmp_pu15U6KpwB15 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:3.33'.
	self
		assert: tmp_pu15U6KpwB15 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:3.34'.
	self
		assert: tmp_pu15U6KpwB15 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:3.35'.
	self
		assert: tmp_pu15U6KpwB15 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:3.36'.
	self
		assert: tmp_pu15U6KpwB15 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:3.37'.
	self
		assert: tmp_pu15U6KpwB15 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.38'.
	self
		assert: tmp_pu15U6KpwB15 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:3.39'.
	self
		assert: tmp_pu15U6KpwB15 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:3.40'.
	self
		assert: tmp_pu15U6KpwB15 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:3.41'.
	self
		assert: tmp_pu15U6KpwB15 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:3.42'.
	self
		assert: tmp_pu15U6KpwB15 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:3.43'.
	self
		assert: tmp_pu15U6KpwB15 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.44'.
	self
		assert: tmp_pu15U6KpwB15 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:3.45'.
	self
		assert: tmp_pu15U6KpwB15 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:3.46'.
	self
		assert: tmp_pu15U6KpwB15 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:3.47'.
	self
		assert: tmp_pu15U6KpwB15 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:3.48'.
	self
		assert: tmp_pu15U6KpwB15 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:3.49'.
	self
		assert: tmp_pu15U6KpwB15 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:3.50'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.51'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:3.52'.
	self
		assert: tmp_pu15U6KpwB15 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:3.53'.
	self
		assert: tmp_pu15U6KpwB15 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:3.54'.
	self
		assert: tmp_pu15U6KpwB15 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:3.55'.
	self
		assert: tmp_pu15U6KpwB15 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:3.56'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.57'.
	self
		assert: tmp_pu15U6KpwB15 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:3.58'.
	self
		assert: tmp_pu15U6KpwB15 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:3.59'.
	self
		assert: tmp_pu15U6KpwB15 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:3.60'.
	self
		assert: tmp_pu15U6KpwB15 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:3.61'.
	self
		assert: tmp_pu15U6KpwB15 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:3.62'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:3.63'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.64'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:3.65'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:3.66'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:3.67'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.68'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:3.69'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:3.70'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:3.71'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.72'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:3.73'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.74'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:3.75'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.76'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:3.77'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:3.78'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:3.79'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:3.80'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:3.81'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.82'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:3.83'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:3.84'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:3.85'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:3.86'.
	self
		assert: tmp_pu15U6KpwB15 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:3.87'.
	self
		assert: tmp_pu15U6KpwB15 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:3.88'.
	self
		assert: tmp_pu15U6KpwB15 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.89'.
	self
		assert: tmp_pu15U6KpwB15 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:3.90'.
	self
		assert: tmp_pu15U6KpwB15 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:3.91'.
	self
		assert: tmp_pu15U6KpwB15 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:3.92'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:3.93'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.94'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:3.95'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:3.96'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:3.97'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.98'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:3.99'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:3.100'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:3.101'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.102'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:3.103'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.104'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:3.105'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.106'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:3.107'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:3.108'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:3.109'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:3.110'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:3.111'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.112'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:3.113'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:3.114'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:3.115'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.116'.
	self
		assert: tmp_pu15U6KpwB15 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:3.117'.
	self
		assert: tmp_pu15U6KpwB15 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:3.118'.
	self
		assert: tmp_pu15U6KpwB15 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:3.119'.
	self
		assert: tmp_pu15U6KpwB15 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:3.120'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.121'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:3.122'.
	self
		assert: tmp_pu15U6KpwB15 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:3.123'.
	self
		assert: tmp_pu15U6KpwB15 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:3.124'.
	self
		assert: tmp_pu15U6KpwB15 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:3.125'.
	self
		assert: tmp_pu15U6KpwB15 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:3.126'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.127'.
	self
		assert: tmp_pu15U6KpwB15 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:3.128'.
	self
		assert: tmp_pu15U6KpwB15 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:3.129'.
	self
		assert: tmp_pu15U6KpwB15 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:3.130'.
	self
		assert: tmp_pu15U6KpwB15 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.131'.
	self
		assert: tmp_pu15U6KpwB15 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:3.132'.
	self
		assert: tmp_pu15U6KpwB15 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:3.133'.
	self
		assert: tmp_pu15U6KpwB15 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:3.134'.
	self
		assert: tmp_pu15U6KpwB15 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:3.135'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.136'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:3.137'.
	self
		assert: tmp_pu15U6KpwB15 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:3.138'.
	self
		assert: tmp_pu15U6KpwB15 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:3.139'.
	self
		assert: tmp_pu15U6KpwB15 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:3.140'.
	self
		assert: tmp_pu15U6KpwB15 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:3.141'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:3.142'.
	self
		assert: tmp_pu15U6KpwB15 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:3.143'.
	self
		assert: tmp_pu15U6KpwB15 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:3.144'.
	self
		assert: tmp_pu15U6KpwB15 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:3.145'.
	self
		assert: tmp_pu15U6KpwB15 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:3.146'.
	self
		assert: tmp_pu15U6KpwB15 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:3.147'.
	self
		should: [ tmp_qwbYj1t2ih9
				announce:
					(TSMouseDragging new
						step: 10 @ 5;
						canvas: view canvas) ]
		raise: MessageNotUnderstood
		description: 'testDraggingModeLeft_amp:4.1'.
	tmp_LDvvC6zJkD4 := view removeInteractionIfPresent: TSDraggableCanvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:5.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:5.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeLeft_amp:5.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:5.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeLeft_amp:5.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:5.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:5.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:5.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:5.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:5.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:5.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:5.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:5.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:5.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:5.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:5.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:5.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeLeft_amp:5.21'.
	self
		assert: tmp_LDvvC6zJkD4 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:5.1'.
	self
		assert: tmp_LDvvC6zJkD4 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:5.2'.
	self
		assert: tmp_LDvvC6zJkD4 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:5.3'.
	self
		assert: tmp_LDvvC6zJkD4 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:5.4'.
	self
		assert: tmp_LDvvC6zJkD4 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:5.5'.
	self
		assert: tmp_LDvvC6zJkD4 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:5.6'.
	self
		assert: tmp_LDvvC6zJkD4 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.7'.
	self
		assert: tmp_LDvvC6zJkD4 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:5.8'.
	self
		assert: tmp_LDvvC6zJkD4 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.9'.
	self
		assert: tmp_LDvvC6zJkD4 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:5.10'.
	self
		assert: tmp_LDvvC6zJkD4 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.11'.
	self
		assert: tmp_LDvvC6zJkD4 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:5.12'.
	self
		assert: tmp_LDvvC6zJkD4 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.13'.
	self
		assert: tmp_LDvvC6zJkD4 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:5.14'.
	self
		assert: tmp_LDvvC6zJkD4 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.15'.
	self
		assert: tmp_LDvvC6zJkD4 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:5.16'.
	self
		assert: tmp_LDvvC6zJkD4 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.17'.
	self
		assert: tmp_LDvvC6zJkD4 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:5.18'.
	self
		assert: tmp_LDvvC6zJkD4 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.19'.
	self
		assert: tmp_LDvvC6zJkD4 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:5.20'.
	self
		assert: tmp_LDvvC6zJkD4 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.21'.
	self
		assert: tmp_LDvvC6zJkD4 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:5.22'.
	self
		assert: tmp_LDvvC6zJkD4 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.23'.
	self
		assert: tmp_LDvvC6zJkD4 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:5.24'.
	self
		assert: tmp_LDvvC6zJkD4 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.25'.
	self
		assert: tmp_LDvvC6zJkD4 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:5.26'.
	self
		assert: tmp_LDvvC6zJkD4 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.27'.
	self
		assert: tmp_LDvvC6zJkD4 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:5.28'.
	self
		assert: tmp_LDvvC6zJkD4 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.29'.
	self
		assert: tmp_LDvvC6zJkD4 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:5.30'.
	self
		assert: tmp_LDvvC6zJkD4 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.31'.
	self
		assert: tmp_LDvvC6zJkD4 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:5.32'.
	self
		assert: tmp_LDvvC6zJkD4 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:5.33'.
	self
		assert: tmp_LDvvC6zJkD4 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:5.34'.
	self
		assert: tmp_LDvvC6zJkD4 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:5.35'.
	self
		assert: tmp_LDvvC6zJkD4 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:5.36'.
	self
		assert: tmp_LDvvC6zJkD4 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:5.37'.
	self
		assert: tmp_LDvvC6zJkD4 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.38'.
	self
		assert: tmp_LDvvC6zJkD4 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:5.39'.
	self
		assert: tmp_LDvvC6zJkD4 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:5.40'.
	self
		assert: tmp_LDvvC6zJkD4 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:5.41'.
	self
		assert: tmp_LDvvC6zJkD4 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:5.42'.
	self
		assert: tmp_LDvvC6zJkD4 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:5.43'.
	self
		assert: tmp_LDvvC6zJkD4 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.44'.
	self
		assert: tmp_LDvvC6zJkD4 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:5.45'.
	self
		assert: tmp_LDvvC6zJkD4 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:5.46'.
	self
		assert: tmp_LDvvC6zJkD4 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:5.47'.
	self
		assert: tmp_LDvvC6zJkD4 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:5.48'.
	self
		assert: tmp_LDvvC6zJkD4 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:5.49'.
	self
		assert: tmp_LDvvC6zJkD4 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:5.50'.
	self
		assert: tmp_LDvvC6zJkD4 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.51'.
	self
		assert: tmp_LDvvC6zJkD4 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:5.52'.
	self
		assert: tmp_LDvvC6zJkD4 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:5.53'.
	self
		assert: tmp_LDvvC6zJkD4 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:5.54'.
	self
		assert: tmp_LDvvC6zJkD4 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:5.55'.
	self
		assert: tmp_LDvvC6zJkD4 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:5.56'.
	self
		assert: tmp_LDvvC6zJkD4 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.57'.
	self
		assert: tmp_LDvvC6zJkD4 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:5.58'.
	self
		assert: tmp_LDvvC6zJkD4 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:5.59'.
	self
		assert: tmp_LDvvC6zJkD4 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:5.60'.
	self
		assert: tmp_LDvvC6zJkD4 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:5.61'.
	self
		assert: tmp_LDvvC6zJkD4 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:5.62'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:5.63'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.64'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:5.65'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:5.66'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:5.67'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.68'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:5.69'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:5.70'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:5.71'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.72'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:5.73'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.74'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:5.75'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.76'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:5.77'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:5.78'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:5.79'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:5.80'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:5.81'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.82'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:5.83'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:5.84'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:5.85'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:5.86'.
	self
		assert: tmp_LDvvC6zJkD4 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:5.87'.
	self
		assert: tmp_LDvvC6zJkD4 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:5.88'.
	self
		assert: tmp_LDvvC6zJkD4 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.89'.
	self
		assert: tmp_LDvvC6zJkD4 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:5.90'.
	self
		assert: tmp_LDvvC6zJkD4 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:5.91'.
	self
		assert: tmp_LDvvC6zJkD4 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:5.92'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:5.93'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.94'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:5.95'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:5.96'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:5.97'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.98'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:5.99'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:5.100'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:5.101'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.102'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:5.103'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.104'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:5.105'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.106'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:5.107'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:5.108'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:5.109'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:5.110'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:5.111'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.112'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:5.113'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:5.114'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:5.115'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.116'.
	self
		assert: tmp_LDvvC6zJkD4 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:5.117'.
	self
		assert: tmp_LDvvC6zJkD4 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:5.118'.
	self
		assert: tmp_LDvvC6zJkD4 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:5.119'.
	self
		assert: tmp_LDvvC6zJkD4 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:5.120'.
	self
		assert: tmp_LDvvC6zJkD4 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.121'.
	self
		assert: tmp_LDvvC6zJkD4 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:5.122'.
	self
		assert: tmp_LDvvC6zJkD4 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:5.123'.
	self
		assert: tmp_LDvvC6zJkD4 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:5.124'.
	self
		assert: tmp_LDvvC6zJkD4 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:5.125'.
	self
		assert: tmp_LDvvC6zJkD4 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:5.126'.
	self
		assert: tmp_LDvvC6zJkD4 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.127'.
	self
		assert: tmp_LDvvC6zJkD4 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:5.128'.
	self
		assert: tmp_LDvvC6zJkD4 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:5.129'.
	self
		assert: tmp_LDvvC6zJkD4 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:5.130'.
	self
		assert: tmp_LDvvC6zJkD4 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.131'.
	self
		assert: tmp_LDvvC6zJkD4 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:5.132'.
	self
		assert: tmp_LDvvC6zJkD4 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:5.133'.
	self
		assert: tmp_LDvvC6zJkD4 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:5.134'.
	self
		assert: tmp_LDvvC6zJkD4 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:5.135'.
	self
		assert: tmp_LDvvC6zJkD4 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.136'.
	self
		assert: tmp_LDvvC6zJkD4 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:5.137'.
	self
		assert: tmp_LDvvC6zJkD4 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:5.138'.
	self
		assert: tmp_LDvvC6zJkD4 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:5.139'.
	self
		assert: tmp_LDvvC6zJkD4 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:5.140'.
	self
		assert: tmp_LDvvC6zJkD4 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:5.141'.
	self
		assert: tmp_LDvvC6zJkD4 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:5.142'.
	self
		assert: tmp_LDvvC6zJkD4 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:5.143'.
	self
		assert: tmp_LDvvC6zJkD4 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:5.144'.
	self
		assert: tmp_LDvvC6zJkD4 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:5.145'.
	self
		assert: tmp_LDvvC6zJkD4 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:5.146'.
	self
		assert: tmp_LDvvC6zJkD4 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:5.147'.
	view removeInteractionIfPresent: TSDraggableCanvas.
	tmp_Rpk2ywTgKk17 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:7.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:7.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeLeft_amp:7.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:7.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeLeft_amp:7.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:7.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:7.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:7.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:7.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:7.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:7.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:7.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:7.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:7.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:7.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:7.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:7.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeLeft_amp:7.21'.
	self
		assert: tmp_Rpk2ywTgKk17 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:7.1'.
	self
		assert: tmp_Rpk2ywTgKk17 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:7.2'.
	self
		assert: tmp_Rpk2ywTgKk17 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:7.3'.
	self
		assert: tmp_Rpk2ywTgKk17 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:7.4'.
	self
		assert: tmp_Rpk2ywTgKk17 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:7.5'.
	self
		assert: tmp_Rpk2ywTgKk17 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:7.6'.
	self
		assert: tmp_Rpk2ywTgKk17 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.7'.
	self
		assert: tmp_Rpk2ywTgKk17 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:7.8'.
	self
		assert: tmp_Rpk2ywTgKk17 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.9'.
	self
		assert: tmp_Rpk2ywTgKk17 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:7.10'.
	self
		assert: tmp_Rpk2ywTgKk17 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.11'.
	self
		assert: tmp_Rpk2ywTgKk17 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:7.12'.
	self
		assert: tmp_Rpk2ywTgKk17 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.13'.
	self
		assert: tmp_Rpk2ywTgKk17 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:7.14'.
	self
		assert: tmp_Rpk2ywTgKk17 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.15'.
	self
		assert: tmp_Rpk2ywTgKk17 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:7.16'.
	self
		assert: tmp_Rpk2ywTgKk17 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.17'.
	self
		assert: tmp_Rpk2ywTgKk17 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:7.18'.
	self
		assert: tmp_Rpk2ywTgKk17 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.19'.
	self
		assert: tmp_Rpk2ywTgKk17 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:7.20'.
	self
		assert: tmp_Rpk2ywTgKk17 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.21'.
	self
		assert: tmp_Rpk2ywTgKk17 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:7.22'.
	self
		assert: tmp_Rpk2ywTgKk17 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.23'.
	self
		assert: tmp_Rpk2ywTgKk17 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:7.24'.
	self
		assert: tmp_Rpk2ywTgKk17 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.25'.
	self
		assert: tmp_Rpk2ywTgKk17 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:7.26'.
	self
		assert: tmp_Rpk2ywTgKk17 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.27'.
	self
		assert: tmp_Rpk2ywTgKk17 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:7.28'.
	self
		assert: tmp_Rpk2ywTgKk17 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.29'.
	self
		assert: tmp_Rpk2ywTgKk17 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:7.30'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.31'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:7.32'.
	self
		assert: tmp_Rpk2ywTgKk17 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:7.33'.
	self
		assert: tmp_Rpk2ywTgKk17 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:7.34'.
	self
		assert: tmp_Rpk2ywTgKk17 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:7.35'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:7.36'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:7.37'.
	self
		assert: tmp_Rpk2ywTgKk17 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.38'.
	self
		assert: tmp_Rpk2ywTgKk17 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:7.39'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:7.40'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:7.41'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:7.42'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:7.43'.
	self
		assert: tmp_Rpk2ywTgKk17 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.44'.
	self
		assert: tmp_Rpk2ywTgKk17 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:7.45'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:7.46'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:7.47'.
	self
		assert: tmp_Rpk2ywTgKk17 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:7.48'.
	self
		assert: tmp_Rpk2ywTgKk17 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:7.49'.
	self
		assert: tmp_Rpk2ywTgKk17 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:7.50'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.51'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:7.52'.
	self
		assert: tmp_Rpk2ywTgKk17 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:7.53'.
	self
		assert: tmp_Rpk2ywTgKk17 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:7.54'.
	self
		assert: tmp_Rpk2ywTgKk17 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:7.55'.
	self
		assert: tmp_Rpk2ywTgKk17 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:7.56'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.57'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:7.58'.
	self
		assert: tmp_Rpk2ywTgKk17 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:7.59'.
	self
		assert: tmp_Rpk2ywTgKk17 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:7.60'.
	self
		assert: tmp_Rpk2ywTgKk17 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:7.61'.
	self
		assert: tmp_Rpk2ywTgKk17 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:7.62'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:7.63'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.64'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:7.65'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:7.66'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:7.67'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.68'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:7.69'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:7.70'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:7.71'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.72'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:7.73'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.74'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:7.75'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.76'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:7.77'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:7.78'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:7.79'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:7.80'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:7.81'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.82'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:7.83'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:7.84'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:7.85'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:7.86'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:7.87'.
	self
		assert: tmp_Rpk2ywTgKk17 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:7.88'.
	self
		assert: tmp_Rpk2ywTgKk17 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.89'.
	self
		assert: tmp_Rpk2ywTgKk17 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:7.90'.
	self
		assert: tmp_Rpk2ywTgKk17 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:7.91'.
	self
		assert: tmp_Rpk2ywTgKk17 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:7.92'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:7.93'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.94'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:7.95'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:7.96'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:7.97'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.98'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:7.99'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:7.100'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:7.101'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.102'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:7.103'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.104'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:7.105'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.106'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:7.107'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:7.108'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:7.109'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:7.110'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:7.111'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.112'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:7.113'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:7.114'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:7.115'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.116'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:7.117'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:7.118'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:7.119'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:7.120'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.121'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:7.122'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:7.123'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:7.124'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:7.125'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:7.126'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.127'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:7.128'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:7.129'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:7.130'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.131'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:7.132'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:7.133'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:7.134'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:7.135'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.136'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:7.137'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:7.138'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:7.139'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:7.140'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:7.141'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:7.142'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:7.143'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:7.144'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:7.145'.
	self
		assert: tmp_Rpk2ywTgKk17 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:7.146'.
	self
		assert: tmp_Rpk2ywTgKk17 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:7.147'.
	tmp_Rpk2ywTgKk17 announce: (TSMouseDragEnd new canvas: view canvas).
	self
		assert: tmp_Rpk2ywTgKk17 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:8.1'.
	self
		assert: tmp_Rpk2ywTgKk17 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:8.2'.
	self
		assert: tmp_Rpk2ywTgKk17 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:8.3'.
	self
		assert: tmp_Rpk2ywTgKk17 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:8.4'.
	self
		assert: tmp_Rpk2ywTgKk17 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:8.5'.
	self
		assert: tmp_Rpk2ywTgKk17 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:8.6'.
	self
		assert: tmp_Rpk2ywTgKk17 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.7'.
	self
		assert: tmp_Rpk2ywTgKk17 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:8.8'.
	self
		assert: tmp_Rpk2ywTgKk17 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.9'.
	self
		assert: tmp_Rpk2ywTgKk17 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:8.10'.
	self
		assert: tmp_Rpk2ywTgKk17 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.11'.
	self
		assert: tmp_Rpk2ywTgKk17 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:8.12'.
	self
		assert: tmp_Rpk2ywTgKk17 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.13'.
	self
		assert: tmp_Rpk2ywTgKk17 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:8.14'.
	self
		assert: tmp_Rpk2ywTgKk17 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.15'.
	self
		assert: tmp_Rpk2ywTgKk17 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:8.16'.
	self
		assert: tmp_Rpk2ywTgKk17 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.17'.
	self
		assert: tmp_Rpk2ywTgKk17 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:8.18'.
	self
		assert: tmp_Rpk2ywTgKk17 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.19'.
	self
		assert: tmp_Rpk2ywTgKk17 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:8.20'.
	self
		assert: tmp_Rpk2ywTgKk17 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.21'.
	self
		assert: tmp_Rpk2ywTgKk17 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:8.22'.
	self
		assert: tmp_Rpk2ywTgKk17 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.23'.
	self
		assert: tmp_Rpk2ywTgKk17 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:8.24'.
	self
		assert: tmp_Rpk2ywTgKk17 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.25'.
	self
		assert: tmp_Rpk2ywTgKk17 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:8.26'.
	self
		assert: tmp_Rpk2ywTgKk17 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.27'.
	self
		assert: tmp_Rpk2ywTgKk17 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:8.28'.
	self
		assert: tmp_Rpk2ywTgKk17 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.29'.
	self
		assert: tmp_Rpk2ywTgKk17 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:8.30'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.31'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:8.32'.
	self
		assert: tmp_Rpk2ywTgKk17 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:8.33'.
	self
		assert: tmp_Rpk2ywTgKk17 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:8.34'.
	self
		assert: tmp_Rpk2ywTgKk17 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:8.35'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:8.36'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:8.37'.
	self
		assert: tmp_Rpk2ywTgKk17 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.38'.
	self
		assert: tmp_Rpk2ywTgKk17 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:8.39'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:8.40'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:8.41'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:8.42'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:8.43'.
	self
		assert: tmp_Rpk2ywTgKk17 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.44'.
	self
		assert: tmp_Rpk2ywTgKk17 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:8.45'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:8.46'.
	self
		assert: tmp_Rpk2ywTgKk17 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:8.47'.
	self
		assert: tmp_Rpk2ywTgKk17 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:8.48'.
	self
		assert: tmp_Rpk2ywTgKk17 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:8.49'.
	self
		assert: tmp_Rpk2ywTgKk17 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:8.50'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.51'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:8.52'.
	self
		assert: tmp_Rpk2ywTgKk17 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:8.53'.
	self
		assert: tmp_Rpk2ywTgKk17 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:8.54'.
	self
		assert: tmp_Rpk2ywTgKk17 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:8.55'.
	self
		assert: tmp_Rpk2ywTgKk17 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:8.56'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.57'.
	self
		assert: tmp_Rpk2ywTgKk17 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:8.58'.
	self
		assert: tmp_Rpk2ywTgKk17 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:8.59'.
	self
		assert: tmp_Rpk2ywTgKk17 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:8.60'.
	self
		assert: tmp_Rpk2ywTgKk17 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:8.61'.
	self
		assert: tmp_Rpk2ywTgKk17 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:8.62'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:8.63'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.64'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:8.65'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:8.66'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:8.67'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.68'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:8.69'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:8.70'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:8.71'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.72'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:8.73'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.74'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:8.75'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.76'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:8.77'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:8.78'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:8.79'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:8.80'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:8.81'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.82'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:8.83'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:8.84'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:8.85'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:8.86'.
	self
		assert: tmp_Rpk2ywTgKk17 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:8.87'.
	self
		assert: tmp_Rpk2ywTgKk17 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:8.88'.
	self
		assert: tmp_Rpk2ywTgKk17 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.89'.
	self
		assert: tmp_Rpk2ywTgKk17 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:8.90'.
	self
		assert: tmp_Rpk2ywTgKk17 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:8.91'.
	self
		assert: tmp_Rpk2ywTgKk17 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:8.92'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:8.93'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.94'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:8.95'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:8.96'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:8.97'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.98'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:8.99'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:8.100'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:8.101'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.102'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:8.103'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.104'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:8.105'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.106'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:8.107'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:8.108'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:8.109'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:8.110'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:8.111'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.112'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:8.113'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:8.114'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:8.115'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.116'.
	self
		assert: tmp_Rpk2ywTgKk17 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:8.117'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:8.118'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:8.119'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:8.120'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.121'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:8.122'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:8.123'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:8.124'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:8.125'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:8.126'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.127'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:8.128'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:8.129'.
	self
		assert: tmp_Rpk2ywTgKk17 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:8.130'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.131'.
	self
		assert: tmp_Rpk2ywTgKk17 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:8.132'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:8.133'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:8.134'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:8.135'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.136'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:8.137'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:8.138'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:8.139'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:8.140'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:8.141'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:8.142'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:8.143'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:8.144'.
	self
		assert: tmp_Rpk2ywTgKk17 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:8.145'.
	self
		assert: tmp_Rpk2ywTgKk17 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:8.146'.
	self
		assert: tmp_Rpk2ywTgKk17 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:8.147'.
	tmp_91tDHRCsg411 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:9.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:9.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeLeft_amp:9.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:9.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeLeft_amp:9.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:9.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:9.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:9.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:9.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:9.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:9.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:9.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:9.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:9.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:9.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:9.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:9.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeLeft_amp:9.21'.
	self
		assert: tmp_91tDHRCsg411 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:9.1'.
	self
		assert: tmp_91tDHRCsg411 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:9.2'.
	self
		assert: tmp_91tDHRCsg411 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:9.3'.
	self
		assert: tmp_91tDHRCsg411 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:9.4'.
	self
		assert: tmp_91tDHRCsg411 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:9.5'.
	self
		assert: tmp_91tDHRCsg411 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:9.6'.
	self
		assert: tmp_91tDHRCsg411 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.7'.
	self
		assert: tmp_91tDHRCsg411 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:9.8'.
	self
		assert: tmp_91tDHRCsg411 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.9'.
	self
		assert: tmp_91tDHRCsg411 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:9.10'.
	self
		assert: tmp_91tDHRCsg411 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.11'.
	self
		assert: tmp_91tDHRCsg411 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:9.12'.
	self
		assert: tmp_91tDHRCsg411 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.13'.
	self
		assert: tmp_91tDHRCsg411 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:9.14'.
	self
		assert: tmp_91tDHRCsg411 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.15'.
	self
		assert: tmp_91tDHRCsg411 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:9.16'.
	self
		assert: tmp_91tDHRCsg411 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.17'.
	self
		assert: tmp_91tDHRCsg411 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:9.18'.
	self
		assert: tmp_91tDHRCsg411 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.19'.
	self
		assert: tmp_91tDHRCsg411 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:9.20'.
	self
		assert: tmp_91tDHRCsg411 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.21'.
	self
		assert: tmp_91tDHRCsg411 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:9.22'.
	self
		assert: tmp_91tDHRCsg411 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.23'.
	self
		assert: tmp_91tDHRCsg411 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:9.24'.
	self
		assert: tmp_91tDHRCsg411 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.25'.
	self
		assert: tmp_91tDHRCsg411 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:9.26'.
	self
		assert: tmp_91tDHRCsg411 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.27'.
	self
		assert: tmp_91tDHRCsg411 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:9.28'.
	self
		assert: tmp_91tDHRCsg411 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.29'.
	self
		assert: tmp_91tDHRCsg411 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:9.30'.
	self
		assert: tmp_91tDHRCsg411 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.31'.
	self
		assert: tmp_91tDHRCsg411 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:9.32'.
	self
		assert: tmp_91tDHRCsg411 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:9.33'.
	self
		assert: tmp_91tDHRCsg411 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:9.34'.
	self
		assert: tmp_91tDHRCsg411 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:9.35'.
	self
		assert: tmp_91tDHRCsg411 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:9.36'.
	self
		assert: tmp_91tDHRCsg411 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:9.37'.
	self
		assert: tmp_91tDHRCsg411 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.38'.
	self
		assert: tmp_91tDHRCsg411 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:9.39'.
	self
		assert: tmp_91tDHRCsg411 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:9.40'.
	self
		assert: tmp_91tDHRCsg411 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:9.41'.
	self
		assert: tmp_91tDHRCsg411 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:9.42'.
	self
		assert: tmp_91tDHRCsg411 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:9.43'.
	self
		assert: tmp_91tDHRCsg411 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.44'.
	self
		assert: tmp_91tDHRCsg411 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:9.45'.
	self
		assert: tmp_91tDHRCsg411 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:9.46'.
	self
		assert: tmp_91tDHRCsg411 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:9.47'.
	self
		assert: tmp_91tDHRCsg411 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:9.48'.
	self
		assert: tmp_91tDHRCsg411 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:9.49'.
	self
		assert: tmp_91tDHRCsg411 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:9.50'.
	self
		assert: tmp_91tDHRCsg411 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.51'.
	self
		assert: tmp_91tDHRCsg411 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:9.52'.
	self
		assert: tmp_91tDHRCsg411 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:9.53'.
	self
		assert: tmp_91tDHRCsg411 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:9.54'.
	self
		assert: tmp_91tDHRCsg411 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:9.55'.
	self
		assert: tmp_91tDHRCsg411 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:9.56'.
	self
		assert: tmp_91tDHRCsg411 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.57'.
	self
		assert: tmp_91tDHRCsg411 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:9.58'.
	self
		assert: tmp_91tDHRCsg411 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:9.59'.
	self
		assert: tmp_91tDHRCsg411 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:9.60'.
	self
		assert: tmp_91tDHRCsg411 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:9.61'.
	self
		assert: tmp_91tDHRCsg411 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:9.62'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:9.63'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.64'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:9.65'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:9.66'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:9.67'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.68'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:9.69'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:9.70'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:9.71'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.72'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:9.73'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.74'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:9.75'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.76'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:9.77'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:9.78'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:9.79'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:9.80'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:9.81'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.82'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:9.83'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:9.84'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:9.85'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:9.86'.
	self
		assert: tmp_91tDHRCsg411 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:9.87'.
	self
		assert: tmp_91tDHRCsg411 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:9.88'.
	self
		assert: tmp_91tDHRCsg411 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.89'.
	self
		assert: tmp_91tDHRCsg411 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:9.90'.
	self
		assert: tmp_91tDHRCsg411 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:9.91'.
	self
		assert: tmp_91tDHRCsg411 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:9.92'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:9.93'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.94'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:9.95'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:9.96'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:9.97'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.98'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:9.99'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:9.100'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:9.101'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.102'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:9.103'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.104'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:9.105'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.106'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:9.107'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:9.108'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:9.109'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:9.110'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:9.111'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.112'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:9.113'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:9.114'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:9.115'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.116'.
	self
		assert: tmp_91tDHRCsg411 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:9.117'.
	self
		assert: tmp_91tDHRCsg411 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:9.118'.
	self
		assert: tmp_91tDHRCsg411 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:9.119'.
	self
		assert: tmp_91tDHRCsg411 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:9.120'.
	self
		assert: tmp_91tDHRCsg411 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.121'.
	self
		assert: tmp_91tDHRCsg411 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:9.122'.
	self
		assert: tmp_91tDHRCsg411 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:9.123'.
	self
		assert: tmp_91tDHRCsg411 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:9.124'.
	self
		assert: tmp_91tDHRCsg411 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:9.125'.
	self
		assert: tmp_91tDHRCsg411 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:9.126'.
	self
		assert: tmp_91tDHRCsg411 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.127'.
	self
		assert: tmp_91tDHRCsg411 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:9.128'.
	self
		assert: tmp_91tDHRCsg411 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:9.129'.
	self
		assert: tmp_91tDHRCsg411 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:9.130'.
	self
		assert: tmp_91tDHRCsg411 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.131'.
	self
		assert: tmp_91tDHRCsg411 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:9.132'.
	self
		assert: tmp_91tDHRCsg411 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:9.133'.
	self
		assert: tmp_91tDHRCsg411 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:9.134'.
	self
		assert: tmp_91tDHRCsg411 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:9.135'.
	self
		assert: tmp_91tDHRCsg411 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.136'.
	self
		assert: tmp_91tDHRCsg411 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:9.137'.
	self
		assert: tmp_91tDHRCsg411 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:9.138'.
	self
		assert: tmp_91tDHRCsg411 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:9.139'.
	self
		assert: tmp_91tDHRCsg411 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:9.140'.
	self
		assert: tmp_91tDHRCsg411 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:9.141'.
	self
		assert: tmp_91tDHRCsg411 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:9.142'.
	self
		assert: tmp_91tDHRCsg411 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:9.143'.
	self
		assert: tmp_91tDHRCsg411 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:9.144'.
	self
		assert: tmp_91tDHRCsg411 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:9.145'.
	self
		assert: tmp_91tDHRCsg411 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:9.146'.
	self
		assert: tmp_91tDHRCsg411 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:9.147'.
	tmp_TsMz26Yy1u13 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:10.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:10.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeLeft_amp:10.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:10.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeLeft_amp:10.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:10.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:10.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:10.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:10.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:10.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:10.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:10.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:10.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:10.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:10.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:10.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:10.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeLeft_amp:10.21'.
	self
		assert: tmp_TsMz26Yy1u13 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:10.1'.
	self
		assert: tmp_TsMz26Yy1u13 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:10.2'.
	self
		assert: tmp_TsMz26Yy1u13 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:10.3'.
	self
		assert: tmp_TsMz26Yy1u13 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:10.4'.
	self
		assert: tmp_TsMz26Yy1u13 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:10.5'.
	self
		assert: tmp_TsMz26Yy1u13 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:10.6'.
	self
		assert: tmp_TsMz26Yy1u13 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.7'.
	self
		assert: tmp_TsMz26Yy1u13 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:10.8'.
	self
		assert: tmp_TsMz26Yy1u13 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.9'.
	self
		assert: tmp_TsMz26Yy1u13 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:10.10'.
	self
		assert: tmp_TsMz26Yy1u13 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.11'.
	self
		assert: tmp_TsMz26Yy1u13 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:10.12'.
	self
		assert: tmp_TsMz26Yy1u13 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.13'.
	self
		assert: tmp_TsMz26Yy1u13 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:10.14'.
	self
		assert: tmp_TsMz26Yy1u13 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.15'.
	self
		assert: tmp_TsMz26Yy1u13 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:10.16'.
	self
		assert: tmp_TsMz26Yy1u13 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.17'.
	self
		assert: tmp_TsMz26Yy1u13 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:10.18'.
	self
		assert: tmp_TsMz26Yy1u13 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.19'.
	self
		assert: tmp_TsMz26Yy1u13 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:10.20'.
	self
		assert: tmp_TsMz26Yy1u13 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.21'.
	self
		assert: tmp_TsMz26Yy1u13 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:10.22'.
	self
		assert: tmp_TsMz26Yy1u13 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.23'.
	self
		assert: tmp_TsMz26Yy1u13 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:10.24'.
	self
		assert: tmp_TsMz26Yy1u13 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.25'.
	self
		assert: tmp_TsMz26Yy1u13 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:10.26'.
	self
		assert: tmp_TsMz26Yy1u13 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.27'.
	self
		assert: tmp_TsMz26Yy1u13 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:10.28'.
	self
		assert: tmp_TsMz26Yy1u13 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.29'.
	self
		assert: tmp_TsMz26Yy1u13 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:10.30'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.31'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:10.32'.
	self
		assert: tmp_TsMz26Yy1u13 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:10.33'.
	self
		assert: tmp_TsMz26Yy1u13 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:10.34'.
	self
		assert: tmp_TsMz26Yy1u13 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:10.35'.
	self
		assert: tmp_TsMz26Yy1u13 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:10.36'.
	self
		assert: tmp_TsMz26Yy1u13 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:10.37'.
	self
		assert: tmp_TsMz26Yy1u13 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.38'.
	self
		assert: tmp_TsMz26Yy1u13 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:10.39'.
	self
		assert: tmp_TsMz26Yy1u13 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:10.40'.
	self
		assert: tmp_TsMz26Yy1u13 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:10.41'.
	self
		assert: tmp_TsMz26Yy1u13 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:10.42'.
	self
		assert: tmp_TsMz26Yy1u13 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:10.43'.
	self
		assert: tmp_TsMz26Yy1u13 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.44'.
	self
		assert: tmp_TsMz26Yy1u13 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:10.45'.
	self
		assert: tmp_TsMz26Yy1u13 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:10.46'.
	self
		assert: tmp_TsMz26Yy1u13 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:10.47'.
	self
		assert: tmp_TsMz26Yy1u13 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:10.48'.
	self
		assert: tmp_TsMz26Yy1u13 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:10.49'.
	self
		assert: tmp_TsMz26Yy1u13 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:10.50'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.51'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:10.52'.
	self
		assert: tmp_TsMz26Yy1u13 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:10.53'.
	self
		assert: tmp_TsMz26Yy1u13 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:10.54'.
	self
		assert: tmp_TsMz26Yy1u13 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:10.55'.
	self
		assert: tmp_TsMz26Yy1u13 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:10.56'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.57'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:10.58'.
	self
		assert: tmp_TsMz26Yy1u13 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:10.59'.
	self
		assert: tmp_TsMz26Yy1u13 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:10.60'.
	self
		assert: tmp_TsMz26Yy1u13 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:10.61'.
	self
		assert: tmp_TsMz26Yy1u13 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:10.62'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:10.63'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.64'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:10.65'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:10.66'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:10.67'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.68'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:10.69'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:10.70'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:10.71'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.72'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:10.73'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.74'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:10.75'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.76'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:10.77'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:10.78'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:10.79'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:10.80'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:10.81'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.82'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:10.83'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:10.84'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:10.85'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:10.86'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:10.87'.
	self
		assert: tmp_TsMz26Yy1u13 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:10.88'.
	self
		assert: tmp_TsMz26Yy1u13 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.89'.
	self
		assert: tmp_TsMz26Yy1u13 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:10.90'.
	self
		assert: tmp_TsMz26Yy1u13 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:10.91'.
	self
		assert: tmp_TsMz26Yy1u13 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:10.92'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:10.93'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.94'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:10.95'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:10.96'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:10.97'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.98'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:10.99'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:10.100'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:10.101'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.102'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:10.103'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.104'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:10.105'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.106'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:10.107'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:10.108'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:10.109'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:10.110'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:10.111'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.112'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:10.113'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:10.114'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:10.115'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.116'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:10.117'.
	self
		assert: tmp_TsMz26Yy1u13 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:10.118'.
	self
		assert: tmp_TsMz26Yy1u13 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:10.119'.
	self
		assert: tmp_TsMz26Yy1u13 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:10.120'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.121'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:10.122'.
	self
		assert: tmp_TsMz26Yy1u13 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:10.123'.
	self
		assert: tmp_TsMz26Yy1u13 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:10.124'.
	self
		assert: tmp_TsMz26Yy1u13 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:10.125'.
	self
		assert: tmp_TsMz26Yy1u13 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:10.126'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.127'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:10.128'.
	self
		assert: tmp_TsMz26Yy1u13 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:10.129'.
	self
		assert: tmp_TsMz26Yy1u13 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:10.130'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.131'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:10.132'.
	self
		assert: tmp_TsMz26Yy1u13 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:10.133'.
	self
		assert: tmp_TsMz26Yy1u13 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:10.134'.
	self
		assert: tmp_TsMz26Yy1u13 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:10.135'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.136'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:10.137'.
	self
		assert: tmp_TsMz26Yy1u13 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:10.138'.
	self
		assert: tmp_TsMz26Yy1u13 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:10.139'.
	self
		assert: tmp_TsMz26Yy1u13 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:10.140'.
	self
		assert: tmp_TsMz26Yy1u13 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:10.141'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:10.142'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:10.143'.
	self
		assert: tmp_TsMz26Yy1u13 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:10.144'.
	self
		assert: tmp_TsMz26Yy1u13 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:10.145'.
	self
		assert: tmp_TsMz26Yy1u13 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:10.146'.
	self
		assert: tmp_TsMz26Yy1u13 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:10.147'.
	tmp_TsMz26Yy1u13
		announce: (TSMouseLeftDragStart new canvas: view canvas).
	self
		assert: tmp_TsMz26Yy1u13 class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:11.1'.
	self
		assert: tmp_TsMz26Yy1u13 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:11.2'.
	self
		assert: tmp_TsMz26Yy1u13 fixedShapes size
		equals: 0
		description: 'testDraggingModeLeft_amp:11.3'.
	self
		assert: tmp_TsMz26Yy1u13 showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:11.4'.
	self
		assert: tmp_TsMz26Yy1u13 showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:11.5'.
	self
		assert: tmp_TsMz26Yy1u13 color class
		equals: Color
		description: 'testDraggingModeLeft_amp:11.6'.
	self
		assert: tmp_TsMz26Yy1u13 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.7'.
	self
		assert: tmp_TsMz26Yy1u13 color alpha
		equals: 1.0
		description: 'testDraggingModeLeft_amp:11.8'.
	self
		assert: tmp_TsMz26Yy1u13 color red class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.9'.
	self
		assert: tmp_TsMz26Yy1u13 color red
		equals: 1.0
		description: 'testDraggingModeLeft_amp:11.10'.
	self
		assert: tmp_TsMz26Yy1u13 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.11'.
	self
		assert: tmp_TsMz26Yy1u13 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:11.12'.
	self
		assert: tmp_TsMz26Yy1u13 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.13'.
	self
		assert: tmp_TsMz26Yy1u13 color brightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:11.14'.
	self
		assert: tmp_TsMz26Yy1u13 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.15'.
	self
		assert: tmp_TsMz26Yy1u13 color hue
		equals: 0.0
		description: 'testDraggingModeLeft_amp:11.16'.
	self
		assert: tmp_TsMz26Yy1u13 color green class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.17'.
	self
		assert: tmp_TsMz26Yy1u13 color green
		equals: 1.0
		description: 'testDraggingModeLeft_amp:11.18'.
	self
		assert: tmp_TsMz26Yy1u13 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.19'.
	self
		assert: tmp_TsMz26Yy1u13 color chroma
		equals: 0.0
		description: 'testDraggingModeLeft_amp:11.20'.
	self
		assert: tmp_TsMz26Yy1u13 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.21'.
	self
		assert: tmp_TsMz26Yy1u13 color lightness
		equals: 1.0
		description: 'testDraggingModeLeft_amp:11.22'.
	self
		assert: tmp_TsMz26Yy1u13 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.23'.
	self
		assert: tmp_TsMz26Yy1u13 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:11.24'.
	self
		assert: tmp_TsMz26Yy1u13 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.25'.
	self
		assert: tmp_TsMz26Yy1u13 color saturation
		equals: 0.0
		description: 'testDraggingModeLeft_amp:11.26'.
	self
		assert: tmp_TsMz26Yy1u13 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.27'.
	self
		assert: tmp_TsMz26Yy1u13 color luminance
		equals: 1.0
		description: 'testDraggingModeLeft_amp:11.28'.
	self
		assert: tmp_TsMz26Yy1u13 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.29'.
	self
		assert: tmp_TsMz26Yy1u13 color blue
		equals: 1.0
		description: 'testDraggingModeLeft_amp:11.30'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.31'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:11.32'.
	self
		assert: tmp_TsMz26Yy1u13 morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:11.33'.
	self
		assert: tmp_TsMz26Yy1u13 morph
		equals: nil
		description: 'testDraggingModeLeft_amp:11.34'.
	self
		assert: tmp_TsMz26Yy1u13 extent class
		equals: Point
		description: 'testDraggingModeLeft_amp:11.35'.
	self
		assert: tmp_TsMz26Yy1u13 extent isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:11.36'.
	self
		assert: tmp_TsMz26Yy1u13 extent isZero
		equals: false
		description: 'testDraggingModeLeft_amp:11.37'.
	self
		assert: tmp_TsMz26Yy1u13 extent y class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.38'.
	self
		assert: tmp_TsMz26Yy1u13 extent y
		equals: 500
		description: 'testDraggingModeLeft_amp:11.39'.
	self
		assert: tmp_TsMz26Yy1u13 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeLeft_amp:11.40'.
	self
		assert: tmp_TsMz26Yy1u13 extent isFloatPoint
		equals: false
		description: 'testDraggingModeLeft_amp:11.41'.
	self
		assert: tmp_TsMz26Yy1u13 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:11.42'.
	self
		assert: tmp_TsMz26Yy1u13 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeLeft_amp:11.43'.
	self
		assert: tmp_TsMz26Yy1u13 extent x class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.44'.
	self
		assert: tmp_TsMz26Yy1u13 extent x
		equals: 500
		description: 'testDraggingModeLeft_amp:11.45'.
	self
		assert: tmp_TsMz26Yy1u13 extent isPoint class
		equals: True
		description: 'testDraggingModeLeft_amp:11.46'.
	self
		assert: tmp_TsMz26Yy1u13 extent isPoint
		equals: true
		description: 'testDraggingModeLeft_amp:11.47'.
	self
		assert: tmp_TsMz26Yy1u13 parent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:11.48'.
	self
		assert: tmp_TsMz26Yy1u13 parent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:11.49'.
	self
		assert: tmp_TsMz26Yy1u13 parent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:11.50'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.51'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:11.52'.
	self
		assert: tmp_TsMz26Yy1u13 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:11.53'.
	self
		assert: tmp_TsMz26Yy1u13 parent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:11.54'.
	self
		assert: tmp_TsMz26Yy1u13 parent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:11.55'.
	self
		assert: tmp_TsMz26Yy1u13 parent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:11.56'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.57'.
	self
		assert: tmp_TsMz26Yy1u13 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:11.58'.
	self
		assert: tmp_TsMz26Yy1u13 parent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:11.59'.
	self
		assert: tmp_TsMz26Yy1u13 parent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:11.60'.
	self
		assert: tmp_TsMz26Yy1u13 shapes class
		equals: TSGroup
		description: 'testDraggingModeLeft_amp:11.61'.
	self
		assert: tmp_TsMz26Yy1u13 shapes size
		equals: 1
		description: 'testDraggingModeLeft_amp:11.62'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:11.63'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.64'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeLeft_amp:11.65'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:11.66'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:11.67'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.68'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeLeft_amp:11.69'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:11.70'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:11.71'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.72'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeLeft_amp:11.73'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.74'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeLeft_amp:11.75'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.76'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeLeft_amp:11.77'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:11.78'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:11.79'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeLeft_amp:11.80'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeLeft_amp:11.81'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.82'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeLeft_amp:11.83'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:11.84'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:11.85'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeLeft_amp:11.86'.
	self
		assert: tmp_TsMz26Yy1u13 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeLeft_amp:11.87'.
	self
		assert: tmp_TsMz26Yy1u13 view class
		equals: RSView
		description: 'testDraggingModeLeft_amp:11.88'.
	self
		assert: tmp_TsMz26Yy1u13 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.89'.
	self
		assert: tmp_TsMz26Yy1u13 view numberOfEdges
		equals: 0
		description: 'testDraggingModeLeft_amp:11.90'.
	self
		assert: tmp_TsMz26Yy1u13 isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:11.91'.
	self
		assert: tmp_TsMz26Yy1u13 isShape
		equals: false
		description: 'testDraggingModeLeft_amp:11.92'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeLeft_amp:11.93'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.94'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle top
		equals: 0
		description: 'testDraggingModeLeft_amp:11.95'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeLeft_amp:11.96'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeLeft_amp:11.97'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.98'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle area
		equals: 250000
		description: 'testDraggingModeLeft_amp:11.99'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeLeft_amp:11.100'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isTall
		equals: false
		description: 'testDraggingModeLeft_amp:11.101'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.102'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle left
		equals: 0
		description: 'testDraggingModeLeft_amp:11.103'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.104'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle width
		equals: 500
		description: 'testDraggingModeLeft_amp:11.105'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.106'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle right
		equals: 500
		description: 'testDraggingModeLeft_amp:11.107'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeLeft_amp:11.108'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isZero
		equals: false
		description: 'testDraggingModeLeft_amp:11.109'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeLeft_amp:11.110'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isWide
		equals: false
		description: 'testDraggingModeLeft_amp:11.111'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.112'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeLeft_amp:11.113'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeLeft_amp:11.114'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeLeft_amp:11.115'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.116'.
	self
		assert: tmp_TsMz26Yy1u13 basicRectangle height
		equals: 500
		description: 'testDraggingModeLeft_amp:11.117'.
	self
		assert: tmp_TsMz26Yy1u13 topParent class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:11.118'.
	self
		assert: tmp_TsMz26Yy1u13 topParent showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:11.119'.
	self
		assert: tmp_TsMz26Yy1u13 topParent showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:11.120'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.121'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:11.122'.
	self
		assert: tmp_TsMz26Yy1u13 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:11.123'.
	self
		assert: tmp_TsMz26Yy1u13 topParent morph
		equals: nil
		description: 'testDraggingModeLeft_amp:11.124'.
	self
		assert: tmp_TsMz26Yy1u13 topParent isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:11.125'.
	self
		assert: tmp_TsMz26Yy1u13 topParent isShape
		equals: false
		description: 'testDraggingModeLeft_amp:11.126'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.127'.
	self
		assert: tmp_TsMz26Yy1u13 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:11.128'.
	self
		assert: tmp_TsMz26Yy1u13 topParent clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:11.129'.
	self
		assert: tmp_TsMz26Yy1u13 topParent clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:11.130'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.131'.
	self
		assert: tmp_TsMz26Yy1u13 numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:11.132'.
	self
		assert: tmp_TsMz26Yy1u13 canvas class
		equals: TSCanvas
		description: 'testDraggingModeLeft_amp:11.133'.
	self
		assert: tmp_TsMz26Yy1u13 canvas showRectangles class
		equals: False
		description: 'testDraggingModeLeft_amp:11.134'.
	self
		assert: tmp_TsMz26Yy1u13 canvas showRectangles
		equals: false
		description: 'testDraggingModeLeft_amp:11.135'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.136'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeLeft_amp:11.137'.
	self
		assert: tmp_TsMz26Yy1u13 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeLeft_amp:11.138'.
	self
		assert: tmp_TsMz26Yy1u13 canvas morph
		equals: nil
		description: 'testDraggingModeLeft_amp:11.139'.
	self
		assert: tmp_TsMz26Yy1u13 canvas isShape class
		equals: False
		description: 'testDraggingModeLeft_amp:11.140'.
	self
		assert: tmp_TsMz26Yy1u13 canvas isShape
		equals: false
		description: 'testDraggingModeLeft_amp:11.141'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeLeft_amp:11.142'.
	self
		assert: tmp_TsMz26Yy1u13 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeLeft_amp:11.143'.
	self
		assert: tmp_TsMz26Yy1u13 canvas clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:11.144'.
	self
		assert: tmp_TsMz26Yy1u13 canvas clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:11.145'.
	self
		assert: tmp_TsMz26Yy1u13 clearBackground class
		equals: True
		description: 'testDraggingModeLeft_amp:11.146'.
	self
		assert: tmp_TsMz26Yy1u13 clearBackground
		equals: true
		description: 'testDraggingModeLeft_amp:11.147'.
	view canvas announce: (TSMouseDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	view canvas announce: (TSMouseLeftDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> testDraggingModeMiddle_amp [
	<madeBySmallAmp>
	| tmp_cfzDmRJNh74 tmp_ya92jpXUOd5 tmp_JY6SgA9Nsy9 tmp_51Is8ro0Q711 tmp_hazCm3p7RZ13 tmp_3Oh0iz17ix15 tmp_0ZpCXEAsTG17 |
	tmp_ya92jpXUOd5 := view @ TSDraggableCanvas middle.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:1.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeMiddle_amp:1.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:1.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:1.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:1.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:1.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:1.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:1.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:1.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:1.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:1.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeMiddle_amp:1.21'.
	self
		assert: tmp_ya92jpXUOd5 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:1.1'.
	self
		assert: tmp_ya92jpXUOd5 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:1.2'.
	self
		assert: tmp_ya92jpXUOd5 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.3'.
	self
		assert: tmp_ya92jpXUOd5 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.4'.
	self
		assert: tmp_ya92jpXUOd5 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:1.5'.
	self
		assert: tmp_ya92jpXUOd5 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:1.6'.
	self
		assert: tmp_ya92jpXUOd5 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.7'.
	self
		assert: tmp_ya92jpXUOd5 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:1.8'.
	self
		assert: tmp_ya92jpXUOd5 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.9'.
	self
		assert: tmp_ya92jpXUOd5 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:1.10'.
	self
		assert: tmp_ya92jpXUOd5 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.11'.
	self
		assert: tmp_ya92jpXUOd5 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:1.12'.
	self
		assert: tmp_ya92jpXUOd5 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.13'.
	self
		assert: tmp_ya92jpXUOd5 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:1.14'.
	self
		assert: tmp_ya92jpXUOd5 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.15'.
	self
		assert: tmp_ya92jpXUOd5 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:1.16'.
	self
		assert: tmp_ya92jpXUOd5 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.17'.
	self
		assert: tmp_ya92jpXUOd5 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:1.18'.
	self
		assert: tmp_ya92jpXUOd5 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.19'.
	self
		assert: tmp_ya92jpXUOd5 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:1.20'.
	self
		assert: tmp_ya92jpXUOd5 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.21'.
	self
		assert: tmp_ya92jpXUOd5 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:1.22'.
	self
		assert: tmp_ya92jpXUOd5 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.23'.
	self
		assert: tmp_ya92jpXUOd5 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:1.24'.
	self
		assert: tmp_ya92jpXUOd5 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.25'.
	self
		assert: tmp_ya92jpXUOd5 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:1.26'.
	self
		assert: tmp_ya92jpXUOd5 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.27'.
	self
		assert: tmp_ya92jpXUOd5 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:1.28'.
	self
		assert: tmp_ya92jpXUOd5 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.29'.
	self
		assert: tmp_ya92jpXUOd5 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:1.30'.
	self
		assert: tmp_ya92jpXUOd5 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.31'.
	self
		assert: tmp_ya92jpXUOd5 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.32'.
	self
		assert: tmp_ya92jpXUOd5 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:1.33'.
	self
		assert: tmp_ya92jpXUOd5 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:1.34'.
	self
		assert: tmp_ya92jpXUOd5 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:1.35'.
	self
		assert: tmp_ya92jpXUOd5 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.36'.
	self
		assert: tmp_ya92jpXUOd5 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:1.37'.
	self
		assert: tmp_ya92jpXUOd5 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.38'.
	self
		assert: tmp_ya92jpXUOd5 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:1.39'.
	self
		assert: tmp_ya92jpXUOd5 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.40'.
	self
		assert: tmp_ya92jpXUOd5 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:1.41'.
	self
		assert: tmp_ya92jpXUOd5 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.42'.
	self
		assert: tmp_ya92jpXUOd5 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:1.43'.
	self
		assert: tmp_ya92jpXUOd5 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.44'.
	self
		assert: tmp_ya92jpXUOd5 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:1.45'.
	self
		assert: tmp_ya92jpXUOd5 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.46'.
	self
		assert: tmp_ya92jpXUOd5 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:1.47'.
	self
		assert: tmp_ya92jpXUOd5 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:1.48'.
	self
		assert: tmp_ya92jpXUOd5 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.49'.
	self
		assert: tmp_ya92jpXUOd5 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:1.50'.
	self
		assert: tmp_ya92jpXUOd5 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.51'.
	self
		assert: tmp_ya92jpXUOd5 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.52'.
	self
		assert: tmp_ya92jpXUOd5 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:1.53'.
	self
		assert: tmp_ya92jpXUOd5 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:1.54'.
	self
		assert: tmp_ya92jpXUOd5 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.55'.
	self
		assert: tmp_ya92jpXUOd5 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:1.56'.
	self
		assert: tmp_ya92jpXUOd5 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.57'.
	self
		assert: tmp_ya92jpXUOd5 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:1.58'.
	self
		assert: tmp_ya92jpXUOd5 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.59'.
	self
		assert: tmp_ya92jpXUOd5 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:1.60'.
	self
		assert: tmp_ya92jpXUOd5 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:1.61'.
	self
		assert: tmp_ya92jpXUOd5 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:1.62'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:1.63'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.64'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:1.65'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.66'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:1.67'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.68'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:1.69'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.70'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:1.71'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.72'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:1.73'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.74'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:1.75'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.76'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:1.77'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.78'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:1.79'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.80'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:1.81'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.82'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:1.83'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.84'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:1.85'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:1.86'.
	self
		assert: tmp_ya92jpXUOd5 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:1.87'.
	self
		assert: tmp_ya92jpXUOd5 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:1.88'.
	self
		assert: tmp_ya92jpXUOd5 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.89'.
	self
		assert: tmp_ya92jpXUOd5 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.90'.
	self
		assert: tmp_ya92jpXUOd5 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.91'.
	self
		assert: tmp_ya92jpXUOd5 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:1.92'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:1.93'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.94'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.95'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.96'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:1.97'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.98'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:1.99'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.100'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:1.101'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.102'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.103'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.104'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:1.105'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.106'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:1.107'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.108'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:1.109'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.110'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:1.111'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.112'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:1.113'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.114'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:1.115'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.116'.
	self
		assert: tmp_ya92jpXUOd5 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:1.117'.
	self
		assert: tmp_ya92jpXUOd5 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:1.118'.
	self
		assert: tmp_ya92jpXUOd5 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.119'.
	self
		assert: tmp_ya92jpXUOd5 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:1.120'.
	self
		assert: tmp_ya92jpXUOd5 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.121'.
	self
		assert: tmp_ya92jpXUOd5 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.122'.
	self
		assert: tmp_ya92jpXUOd5 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:1.123'.
	self
		assert: tmp_ya92jpXUOd5 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:1.124'.
	self
		assert: tmp_ya92jpXUOd5 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.125'.
	self
		assert: tmp_ya92jpXUOd5 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:1.126'.
	self
		assert: tmp_ya92jpXUOd5 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.127'.
	self
		assert: tmp_ya92jpXUOd5 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:1.128'.
	self
		assert: tmp_ya92jpXUOd5 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.129'.
	self
		assert: tmp_ya92jpXUOd5 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:1.130'.
	self
		assert: tmp_ya92jpXUOd5 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.131'.
	self
		assert: tmp_ya92jpXUOd5 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:1.132'.
	self
		assert: tmp_ya92jpXUOd5 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:1.133'.
	self
		assert: tmp_ya92jpXUOd5 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.134'.
	self
		assert: tmp_ya92jpXUOd5 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:1.135'.
	self
		assert: tmp_ya92jpXUOd5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.136'.
	self
		assert: tmp_ya92jpXUOd5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:1.137'.
	self
		assert: tmp_ya92jpXUOd5 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:1.138'.
	self
		assert: tmp_ya92jpXUOd5 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:1.139'.
	self
		assert: tmp_ya92jpXUOd5 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:1.140'.
	self
		assert: tmp_ya92jpXUOd5 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:1.141'.
	self
		assert: tmp_ya92jpXUOd5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:1.142'.
	self
		assert: tmp_ya92jpXUOd5 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:1.143'.
	self
		assert: tmp_ya92jpXUOd5 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.144'.
	self
		assert: tmp_ya92jpXUOd5 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:1.145'.
	self
		assert: tmp_ya92jpXUOd5 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:1.146'.
	self
		assert: tmp_ya92jpXUOd5 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:1.147'.
	tmp_3Oh0iz17ix15 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:2.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeMiddle_amp:2.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:2.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:2.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:2.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:2.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:2.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:2.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:2.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:2.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:2.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeMiddle_amp:2.21'.
	self
		assert: tmp_3Oh0iz17ix15 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:2.1'.
	self
		assert: tmp_3Oh0iz17ix15 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:2.2'.
	self
		assert: tmp_3Oh0iz17ix15 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.3'.
	self
		assert: tmp_3Oh0iz17ix15 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.4'.
	self
		assert: tmp_3Oh0iz17ix15 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:2.5'.
	self
		assert: tmp_3Oh0iz17ix15 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:2.6'.
	self
		assert: tmp_3Oh0iz17ix15 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.7'.
	self
		assert: tmp_3Oh0iz17ix15 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:2.8'.
	self
		assert: tmp_3Oh0iz17ix15 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.9'.
	self
		assert: tmp_3Oh0iz17ix15 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:2.10'.
	self
		assert: tmp_3Oh0iz17ix15 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.11'.
	self
		assert: tmp_3Oh0iz17ix15 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:2.12'.
	self
		assert: tmp_3Oh0iz17ix15 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.13'.
	self
		assert: tmp_3Oh0iz17ix15 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:2.14'.
	self
		assert: tmp_3Oh0iz17ix15 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.15'.
	self
		assert: tmp_3Oh0iz17ix15 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:2.16'.
	self
		assert: tmp_3Oh0iz17ix15 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.17'.
	self
		assert: tmp_3Oh0iz17ix15 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:2.18'.
	self
		assert: tmp_3Oh0iz17ix15 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.19'.
	self
		assert: tmp_3Oh0iz17ix15 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:2.20'.
	self
		assert: tmp_3Oh0iz17ix15 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.21'.
	self
		assert: tmp_3Oh0iz17ix15 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:2.22'.
	self
		assert: tmp_3Oh0iz17ix15 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.23'.
	self
		assert: tmp_3Oh0iz17ix15 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:2.24'.
	self
		assert: tmp_3Oh0iz17ix15 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.25'.
	self
		assert: tmp_3Oh0iz17ix15 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:2.26'.
	self
		assert: tmp_3Oh0iz17ix15 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.27'.
	self
		assert: tmp_3Oh0iz17ix15 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:2.28'.
	self
		assert: tmp_3Oh0iz17ix15 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.29'.
	self
		assert: tmp_3Oh0iz17ix15 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:2.30'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.31'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.32'.
	self
		assert: tmp_3Oh0iz17ix15 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:2.33'.
	self
		assert: tmp_3Oh0iz17ix15 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:2.34'.
	self
		assert: tmp_3Oh0iz17ix15 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:2.35'.
	self
		assert: tmp_3Oh0iz17ix15 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.36'.
	self
		assert: tmp_3Oh0iz17ix15 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:2.37'.
	self
		assert: tmp_3Oh0iz17ix15 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.38'.
	self
		assert: tmp_3Oh0iz17ix15 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:2.39'.
	self
		assert: tmp_3Oh0iz17ix15 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.40'.
	self
		assert: tmp_3Oh0iz17ix15 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:2.41'.
	self
		assert: tmp_3Oh0iz17ix15 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.42'.
	self
		assert: tmp_3Oh0iz17ix15 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:2.43'.
	self
		assert: tmp_3Oh0iz17ix15 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.44'.
	self
		assert: tmp_3Oh0iz17ix15 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:2.45'.
	self
		assert: tmp_3Oh0iz17ix15 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.46'.
	self
		assert: tmp_3Oh0iz17ix15 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:2.47'.
	self
		assert: tmp_3Oh0iz17ix15 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:2.48'.
	self
		assert: tmp_3Oh0iz17ix15 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.49'.
	self
		assert: tmp_3Oh0iz17ix15 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:2.50'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.51'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.52'.
	self
		assert: tmp_3Oh0iz17ix15 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:2.53'.
	self
		assert: tmp_3Oh0iz17ix15 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:2.54'.
	self
		assert: tmp_3Oh0iz17ix15 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.55'.
	self
		assert: tmp_3Oh0iz17ix15 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:2.56'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.57'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:2.58'.
	self
		assert: tmp_3Oh0iz17ix15 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.59'.
	self
		assert: tmp_3Oh0iz17ix15 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:2.60'.
	self
		assert: tmp_3Oh0iz17ix15 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:2.61'.
	self
		assert: tmp_3Oh0iz17ix15 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:2.62'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:2.63'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.64'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:2.65'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.66'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:2.67'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.68'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:2.69'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.70'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:2.71'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.72'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:2.73'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.74'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:2.75'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.76'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:2.77'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.78'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:2.79'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.80'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:2.81'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.82'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:2.83'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.84'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:2.85'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:2.86'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:2.87'.
	self
		assert: tmp_3Oh0iz17ix15 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:2.88'.
	self
		assert: tmp_3Oh0iz17ix15 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.89'.
	self
		assert: tmp_3Oh0iz17ix15 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.90'.
	self
		assert: tmp_3Oh0iz17ix15 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.91'.
	self
		assert: tmp_3Oh0iz17ix15 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:2.92'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:2.93'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.94'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.95'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.96'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:2.97'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.98'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:2.99'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.100'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:2.101'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.102'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.103'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.104'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:2.105'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.106'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:2.107'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.108'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:2.109'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.110'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:2.111'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.112'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:2.113'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.114'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:2.115'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.116'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:2.117'.
	self
		assert: tmp_3Oh0iz17ix15 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:2.118'.
	self
		assert: tmp_3Oh0iz17ix15 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.119'.
	self
		assert: tmp_3Oh0iz17ix15 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:2.120'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.121'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.122'.
	self
		assert: tmp_3Oh0iz17ix15 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:2.123'.
	self
		assert: tmp_3Oh0iz17ix15 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:2.124'.
	self
		assert: tmp_3Oh0iz17ix15 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.125'.
	self
		assert: tmp_3Oh0iz17ix15 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:2.126'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.127'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:2.128'.
	self
		assert: tmp_3Oh0iz17ix15 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.129'.
	self
		assert: tmp_3Oh0iz17ix15 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:2.130'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.131'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:2.132'.
	self
		assert: tmp_3Oh0iz17ix15 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:2.133'.
	self
		assert: tmp_3Oh0iz17ix15 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.134'.
	self
		assert: tmp_3Oh0iz17ix15 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:2.135'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.136'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:2.137'.
	self
		assert: tmp_3Oh0iz17ix15 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:2.138'.
	self
		assert: tmp_3Oh0iz17ix15 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:2.139'.
	self
		assert: tmp_3Oh0iz17ix15 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:2.140'.
	self
		assert: tmp_3Oh0iz17ix15 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:2.141'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:2.142'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:2.143'.
	self
		assert: tmp_3Oh0iz17ix15 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.144'.
	self
		assert: tmp_3Oh0iz17ix15 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:2.145'.
	self
		assert: tmp_3Oh0iz17ix15 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:2.146'.
	self
		assert: tmp_3Oh0iz17ix15 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:2.147'.
	tmp_3Oh0iz17ix15
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	self
		assert: tmp_3Oh0iz17ix15 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:3.1'.
	self
		assert: tmp_3Oh0iz17ix15 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:3.2'.
	self
		assert: tmp_3Oh0iz17ix15 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.3'.
	self
		assert: tmp_3Oh0iz17ix15 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.4'.
	self
		assert: tmp_3Oh0iz17ix15 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:3.5'.
	self
		assert: tmp_3Oh0iz17ix15 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:3.6'.
	self
		assert: tmp_3Oh0iz17ix15 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.7'.
	self
		assert: tmp_3Oh0iz17ix15 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:3.8'.
	self
		assert: tmp_3Oh0iz17ix15 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.9'.
	self
		assert: tmp_3Oh0iz17ix15 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:3.10'.
	self
		assert: tmp_3Oh0iz17ix15 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.11'.
	self
		assert: tmp_3Oh0iz17ix15 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:3.12'.
	self
		assert: tmp_3Oh0iz17ix15 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.13'.
	self
		assert: tmp_3Oh0iz17ix15 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:3.14'.
	self
		assert: tmp_3Oh0iz17ix15 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.15'.
	self
		assert: tmp_3Oh0iz17ix15 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:3.16'.
	self
		assert: tmp_3Oh0iz17ix15 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.17'.
	self
		assert: tmp_3Oh0iz17ix15 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:3.18'.
	self
		assert: tmp_3Oh0iz17ix15 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.19'.
	self
		assert: tmp_3Oh0iz17ix15 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:3.20'.
	self
		assert: tmp_3Oh0iz17ix15 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.21'.
	self
		assert: tmp_3Oh0iz17ix15 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:3.22'.
	self
		assert: tmp_3Oh0iz17ix15 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.23'.
	self
		assert: tmp_3Oh0iz17ix15 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:3.24'.
	self
		assert: tmp_3Oh0iz17ix15 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.25'.
	self
		assert: tmp_3Oh0iz17ix15 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:3.26'.
	self
		assert: tmp_3Oh0iz17ix15 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.27'.
	self
		assert: tmp_3Oh0iz17ix15 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:3.28'.
	self
		assert: tmp_3Oh0iz17ix15 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.29'.
	self
		assert: tmp_3Oh0iz17ix15 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:3.30'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.31'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.32'.
	self
		assert: tmp_3Oh0iz17ix15 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:3.33'.
	self
		assert: tmp_3Oh0iz17ix15 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:3.34'.
	self
		assert: tmp_3Oh0iz17ix15 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:3.35'.
	self
		assert: tmp_3Oh0iz17ix15 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.36'.
	self
		assert: tmp_3Oh0iz17ix15 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:3.37'.
	self
		assert: tmp_3Oh0iz17ix15 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.38'.
	self
		assert: tmp_3Oh0iz17ix15 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:3.39'.
	self
		assert: tmp_3Oh0iz17ix15 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.40'.
	self
		assert: tmp_3Oh0iz17ix15 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:3.41'.
	self
		assert: tmp_3Oh0iz17ix15 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.42'.
	self
		assert: tmp_3Oh0iz17ix15 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:3.43'.
	self
		assert: tmp_3Oh0iz17ix15 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.44'.
	self
		assert: tmp_3Oh0iz17ix15 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:3.45'.
	self
		assert: tmp_3Oh0iz17ix15 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.46'.
	self
		assert: tmp_3Oh0iz17ix15 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:3.47'.
	self
		assert: tmp_3Oh0iz17ix15 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:3.48'.
	self
		assert: tmp_3Oh0iz17ix15 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.49'.
	self
		assert: tmp_3Oh0iz17ix15 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:3.50'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.51'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.52'.
	self
		assert: tmp_3Oh0iz17ix15 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:3.53'.
	self
		assert: tmp_3Oh0iz17ix15 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:3.54'.
	self
		assert: tmp_3Oh0iz17ix15 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.55'.
	self
		assert: tmp_3Oh0iz17ix15 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:3.56'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.57'.
	self
		assert: tmp_3Oh0iz17ix15 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:3.58'.
	self
		assert: tmp_3Oh0iz17ix15 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.59'.
	self
		assert: tmp_3Oh0iz17ix15 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:3.60'.
	self
		assert: tmp_3Oh0iz17ix15 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:3.61'.
	self
		assert: tmp_3Oh0iz17ix15 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:3.62'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:3.63'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.64'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:3.65'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.66'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:3.67'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.68'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:3.69'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.70'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:3.71'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.72'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:3.73'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.74'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:3.75'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.76'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:3.77'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.78'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:3.79'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.80'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:3.81'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.82'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:3.83'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.84'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:3.85'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:3.86'.
	self
		assert: tmp_3Oh0iz17ix15 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:3.87'.
	self
		assert: tmp_3Oh0iz17ix15 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:3.88'.
	self
		assert: tmp_3Oh0iz17ix15 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.89'.
	self
		assert: tmp_3Oh0iz17ix15 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.90'.
	self
		assert: tmp_3Oh0iz17ix15 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.91'.
	self
		assert: tmp_3Oh0iz17ix15 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:3.92'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:3.93'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.94'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.95'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.96'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:3.97'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.98'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:3.99'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.100'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:3.101'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.102'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.103'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.104'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:3.105'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.106'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:3.107'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.108'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:3.109'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.110'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:3.111'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.112'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:3.113'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.114'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:3.115'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.116'.
	self
		assert: tmp_3Oh0iz17ix15 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:3.117'.
	self
		assert: tmp_3Oh0iz17ix15 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:3.118'.
	self
		assert: tmp_3Oh0iz17ix15 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.119'.
	self
		assert: tmp_3Oh0iz17ix15 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:3.120'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.121'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.122'.
	self
		assert: tmp_3Oh0iz17ix15 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:3.123'.
	self
		assert: tmp_3Oh0iz17ix15 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:3.124'.
	self
		assert: tmp_3Oh0iz17ix15 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.125'.
	self
		assert: tmp_3Oh0iz17ix15 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:3.126'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.127'.
	self
		assert: tmp_3Oh0iz17ix15 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:3.128'.
	self
		assert: tmp_3Oh0iz17ix15 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.129'.
	self
		assert: tmp_3Oh0iz17ix15 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:3.130'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.131'.
	self
		assert: tmp_3Oh0iz17ix15 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:3.132'.
	self
		assert: tmp_3Oh0iz17ix15 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:3.133'.
	self
		assert: tmp_3Oh0iz17ix15 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.134'.
	self
		assert: tmp_3Oh0iz17ix15 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:3.135'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.136'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:3.137'.
	self
		assert: tmp_3Oh0iz17ix15 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:3.138'.
	self
		assert: tmp_3Oh0iz17ix15 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:3.139'.
	self
		assert: tmp_3Oh0iz17ix15 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:3.140'.
	self
		assert: tmp_3Oh0iz17ix15 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:3.141'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:3.142'.
	self
		assert: tmp_3Oh0iz17ix15 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:3.143'.
	self
		assert: tmp_3Oh0iz17ix15 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.144'.
	self
		assert: tmp_3Oh0iz17ix15 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:3.145'.
	self
		assert: tmp_3Oh0iz17ix15 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:3.146'.
	self
		assert: tmp_3Oh0iz17ix15 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:3.147'.
	self
		should: [ tmp_JY6SgA9Nsy9
				announce:
					(TSMouseDragging new
						step: 10 @ 5;
						canvas: view canvas) ]
		raise: MessageNotUnderstood
		description: 'testDraggingModeMiddle_amp:4.1'.
	tmp_cfzDmRJNh74 := view removeInteractionIfPresent: TSDraggableCanvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:5.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeMiddle_amp:5.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:5.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:5.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:5.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:5.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:5.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:5.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:5.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:5.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:5.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeMiddle_amp:5.21'.
	self
		assert: tmp_cfzDmRJNh74 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:5.1'.
	self
		assert: tmp_cfzDmRJNh74 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:5.2'.
	self
		assert: tmp_cfzDmRJNh74 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.3'.
	self
		assert: tmp_cfzDmRJNh74 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.4'.
	self
		assert: tmp_cfzDmRJNh74 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:5.5'.
	self
		assert: tmp_cfzDmRJNh74 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:5.6'.
	self
		assert: tmp_cfzDmRJNh74 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.7'.
	self
		assert: tmp_cfzDmRJNh74 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:5.8'.
	self
		assert: tmp_cfzDmRJNh74 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.9'.
	self
		assert: tmp_cfzDmRJNh74 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:5.10'.
	self
		assert: tmp_cfzDmRJNh74 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.11'.
	self
		assert: tmp_cfzDmRJNh74 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:5.12'.
	self
		assert: tmp_cfzDmRJNh74 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.13'.
	self
		assert: tmp_cfzDmRJNh74 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:5.14'.
	self
		assert: tmp_cfzDmRJNh74 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.15'.
	self
		assert: tmp_cfzDmRJNh74 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:5.16'.
	self
		assert: tmp_cfzDmRJNh74 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.17'.
	self
		assert: tmp_cfzDmRJNh74 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:5.18'.
	self
		assert: tmp_cfzDmRJNh74 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.19'.
	self
		assert: tmp_cfzDmRJNh74 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:5.20'.
	self
		assert: tmp_cfzDmRJNh74 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.21'.
	self
		assert: tmp_cfzDmRJNh74 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:5.22'.
	self
		assert: tmp_cfzDmRJNh74 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.23'.
	self
		assert: tmp_cfzDmRJNh74 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:5.24'.
	self
		assert: tmp_cfzDmRJNh74 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.25'.
	self
		assert: tmp_cfzDmRJNh74 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:5.26'.
	self
		assert: tmp_cfzDmRJNh74 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.27'.
	self
		assert: tmp_cfzDmRJNh74 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:5.28'.
	self
		assert: tmp_cfzDmRJNh74 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.29'.
	self
		assert: tmp_cfzDmRJNh74 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:5.30'.
	self
		assert: tmp_cfzDmRJNh74 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.31'.
	self
		assert: tmp_cfzDmRJNh74 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.32'.
	self
		assert: tmp_cfzDmRJNh74 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:5.33'.
	self
		assert: tmp_cfzDmRJNh74 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:5.34'.
	self
		assert: tmp_cfzDmRJNh74 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:5.35'.
	self
		assert: tmp_cfzDmRJNh74 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.36'.
	self
		assert: tmp_cfzDmRJNh74 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:5.37'.
	self
		assert: tmp_cfzDmRJNh74 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.38'.
	self
		assert: tmp_cfzDmRJNh74 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:5.39'.
	self
		assert: tmp_cfzDmRJNh74 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.40'.
	self
		assert: tmp_cfzDmRJNh74 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:5.41'.
	self
		assert: tmp_cfzDmRJNh74 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.42'.
	self
		assert: tmp_cfzDmRJNh74 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:5.43'.
	self
		assert: tmp_cfzDmRJNh74 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.44'.
	self
		assert: tmp_cfzDmRJNh74 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:5.45'.
	self
		assert: tmp_cfzDmRJNh74 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.46'.
	self
		assert: tmp_cfzDmRJNh74 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:5.47'.
	self
		assert: tmp_cfzDmRJNh74 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:5.48'.
	self
		assert: tmp_cfzDmRJNh74 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.49'.
	self
		assert: tmp_cfzDmRJNh74 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:5.50'.
	self
		assert: tmp_cfzDmRJNh74 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.51'.
	self
		assert: tmp_cfzDmRJNh74 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.52'.
	self
		assert: tmp_cfzDmRJNh74 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:5.53'.
	self
		assert: tmp_cfzDmRJNh74 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:5.54'.
	self
		assert: tmp_cfzDmRJNh74 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.55'.
	self
		assert: tmp_cfzDmRJNh74 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:5.56'.
	self
		assert: tmp_cfzDmRJNh74 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.57'.
	self
		assert: tmp_cfzDmRJNh74 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:5.58'.
	self
		assert: tmp_cfzDmRJNh74 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.59'.
	self
		assert: tmp_cfzDmRJNh74 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:5.60'.
	self
		assert: tmp_cfzDmRJNh74 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:5.61'.
	self
		assert: tmp_cfzDmRJNh74 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:5.62'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:5.63'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.64'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:5.65'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.66'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:5.67'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.68'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:5.69'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.70'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:5.71'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.72'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:5.73'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.74'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:5.75'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.76'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:5.77'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.78'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:5.79'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.80'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:5.81'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.82'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:5.83'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.84'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:5.85'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:5.86'.
	self
		assert: tmp_cfzDmRJNh74 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:5.87'.
	self
		assert: tmp_cfzDmRJNh74 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:5.88'.
	self
		assert: tmp_cfzDmRJNh74 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.89'.
	self
		assert: tmp_cfzDmRJNh74 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.90'.
	self
		assert: tmp_cfzDmRJNh74 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.91'.
	self
		assert: tmp_cfzDmRJNh74 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:5.92'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:5.93'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.94'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.95'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.96'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:5.97'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.98'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:5.99'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.100'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:5.101'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.102'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.103'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.104'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:5.105'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.106'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:5.107'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.108'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:5.109'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.110'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:5.111'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.112'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:5.113'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.114'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:5.115'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.116'.
	self
		assert: tmp_cfzDmRJNh74 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:5.117'.
	self
		assert: tmp_cfzDmRJNh74 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:5.118'.
	self
		assert: tmp_cfzDmRJNh74 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.119'.
	self
		assert: tmp_cfzDmRJNh74 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:5.120'.
	self
		assert: tmp_cfzDmRJNh74 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.121'.
	self
		assert: tmp_cfzDmRJNh74 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.122'.
	self
		assert: tmp_cfzDmRJNh74 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:5.123'.
	self
		assert: tmp_cfzDmRJNh74 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:5.124'.
	self
		assert: tmp_cfzDmRJNh74 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.125'.
	self
		assert: tmp_cfzDmRJNh74 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:5.126'.
	self
		assert: tmp_cfzDmRJNh74 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.127'.
	self
		assert: tmp_cfzDmRJNh74 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:5.128'.
	self
		assert: tmp_cfzDmRJNh74 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.129'.
	self
		assert: tmp_cfzDmRJNh74 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:5.130'.
	self
		assert: tmp_cfzDmRJNh74 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.131'.
	self
		assert: tmp_cfzDmRJNh74 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:5.132'.
	self
		assert: tmp_cfzDmRJNh74 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:5.133'.
	self
		assert: tmp_cfzDmRJNh74 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.134'.
	self
		assert: tmp_cfzDmRJNh74 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:5.135'.
	self
		assert: tmp_cfzDmRJNh74 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.136'.
	self
		assert: tmp_cfzDmRJNh74 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:5.137'.
	self
		assert: tmp_cfzDmRJNh74 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:5.138'.
	self
		assert: tmp_cfzDmRJNh74 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:5.139'.
	self
		assert: tmp_cfzDmRJNh74 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:5.140'.
	self
		assert: tmp_cfzDmRJNh74 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:5.141'.
	self
		assert: tmp_cfzDmRJNh74 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:5.142'.
	self
		assert: tmp_cfzDmRJNh74 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:5.143'.
	self
		assert: tmp_cfzDmRJNh74 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.144'.
	self
		assert: tmp_cfzDmRJNh74 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:5.145'.
	self
		assert: tmp_cfzDmRJNh74 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:5.146'.
	self
		assert: tmp_cfzDmRJNh74 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:5.147'.
	view removeInteractionIfPresent: TSDraggableCanvas.
	tmp_0ZpCXEAsTG17 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:7.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeMiddle_amp:7.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:7.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:7.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:7.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:7.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:7.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:7.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:7.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:7.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:7.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeMiddle_amp:7.21'.
	self
		assert: tmp_0ZpCXEAsTG17 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:7.1'.
	self
		assert: tmp_0ZpCXEAsTG17 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:7.2'.
	self
		assert: tmp_0ZpCXEAsTG17 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.3'.
	self
		assert: tmp_0ZpCXEAsTG17 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.4'.
	self
		assert: tmp_0ZpCXEAsTG17 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:7.5'.
	self
		assert: tmp_0ZpCXEAsTG17 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:7.6'.
	self
		assert: tmp_0ZpCXEAsTG17 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.7'.
	self
		assert: tmp_0ZpCXEAsTG17 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:7.8'.
	self
		assert: tmp_0ZpCXEAsTG17 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.9'.
	self
		assert: tmp_0ZpCXEAsTG17 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:7.10'.
	self
		assert: tmp_0ZpCXEAsTG17 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.11'.
	self
		assert: tmp_0ZpCXEAsTG17 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:7.12'.
	self
		assert: tmp_0ZpCXEAsTG17 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.13'.
	self
		assert: tmp_0ZpCXEAsTG17 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:7.14'.
	self
		assert: tmp_0ZpCXEAsTG17 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.15'.
	self
		assert: tmp_0ZpCXEAsTG17 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:7.16'.
	self
		assert: tmp_0ZpCXEAsTG17 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.17'.
	self
		assert: tmp_0ZpCXEAsTG17 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:7.18'.
	self
		assert: tmp_0ZpCXEAsTG17 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.19'.
	self
		assert: tmp_0ZpCXEAsTG17 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:7.20'.
	self
		assert: tmp_0ZpCXEAsTG17 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.21'.
	self
		assert: tmp_0ZpCXEAsTG17 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:7.22'.
	self
		assert: tmp_0ZpCXEAsTG17 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.23'.
	self
		assert: tmp_0ZpCXEAsTG17 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:7.24'.
	self
		assert: tmp_0ZpCXEAsTG17 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.25'.
	self
		assert: tmp_0ZpCXEAsTG17 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:7.26'.
	self
		assert: tmp_0ZpCXEAsTG17 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.27'.
	self
		assert: tmp_0ZpCXEAsTG17 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:7.28'.
	self
		assert: tmp_0ZpCXEAsTG17 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.29'.
	self
		assert: tmp_0ZpCXEAsTG17 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:7.30'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.31'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.32'.
	self
		assert: tmp_0ZpCXEAsTG17 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:7.33'.
	self
		assert: tmp_0ZpCXEAsTG17 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:7.34'.
	self
		assert: tmp_0ZpCXEAsTG17 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:7.35'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.36'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:7.37'.
	self
		assert: tmp_0ZpCXEAsTG17 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.38'.
	self
		assert: tmp_0ZpCXEAsTG17 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:7.39'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.40'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:7.41'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.42'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:7.43'.
	self
		assert: tmp_0ZpCXEAsTG17 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.44'.
	self
		assert: tmp_0ZpCXEAsTG17 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:7.45'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.46'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:7.47'.
	self
		assert: tmp_0ZpCXEAsTG17 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:7.48'.
	self
		assert: tmp_0ZpCXEAsTG17 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.49'.
	self
		assert: tmp_0ZpCXEAsTG17 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:7.50'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.51'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.52'.
	self
		assert: tmp_0ZpCXEAsTG17 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:7.53'.
	self
		assert: tmp_0ZpCXEAsTG17 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:7.54'.
	self
		assert: tmp_0ZpCXEAsTG17 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.55'.
	self
		assert: tmp_0ZpCXEAsTG17 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:7.56'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.57'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:7.58'.
	self
		assert: tmp_0ZpCXEAsTG17 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.59'.
	self
		assert: tmp_0ZpCXEAsTG17 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:7.60'.
	self
		assert: tmp_0ZpCXEAsTG17 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:7.61'.
	self
		assert: tmp_0ZpCXEAsTG17 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:7.62'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:7.63'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.64'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:7.65'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.66'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:7.67'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.68'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:7.69'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.70'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:7.71'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.72'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:7.73'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.74'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:7.75'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.76'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:7.77'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.78'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:7.79'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.80'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:7.81'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.82'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:7.83'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.84'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:7.85'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:7.86'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:7.87'.
	self
		assert: tmp_0ZpCXEAsTG17 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:7.88'.
	self
		assert: tmp_0ZpCXEAsTG17 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.89'.
	self
		assert: tmp_0ZpCXEAsTG17 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.90'.
	self
		assert: tmp_0ZpCXEAsTG17 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.91'.
	self
		assert: tmp_0ZpCXEAsTG17 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:7.92'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:7.93'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.94'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.95'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.96'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:7.97'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.98'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:7.99'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.100'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:7.101'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.102'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.103'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.104'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:7.105'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.106'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:7.107'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.108'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:7.109'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.110'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:7.111'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.112'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:7.113'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.114'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:7.115'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.116'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:7.117'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:7.118'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.119'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:7.120'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.121'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.122'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:7.123'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:7.124'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.125'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:7.126'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.127'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:7.128'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.129'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:7.130'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.131'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:7.132'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:7.133'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.134'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:7.135'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.136'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:7.137'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:7.138'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:7.139'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:7.140'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:7.141'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:7.142'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:7.143'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.144'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:7.145'.
	self
		assert: tmp_0ZpCXEAsTG17 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:7.146'.
	self
		assert: tmp_0ZpCXEAsTG17 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:7.147'.
	tmp_0ZpCXEAsTG17 announce: (TSMouseDragEnd new canvas: view canvas).
	self
		assert: tmp_0ZpCXEAsTG17 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:8.1'.
	self
		assert: tmp_0ZpCXEAsTG17 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:8.2'.
	self
		assert: tmp_0ZpCXEAsTG17 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.3'.
	self
		assert: tmp_0ZpCXEAsTG17 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.4'.
	self
		assert: tmp_0ZpCXEAsTG17 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:8.5'.
	self
		assert: tmp_0ZpCXEAsTG17 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:8.6'.
	self
		assert: tmp_0ZpCXEAsTG17 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.7'.
	self
		assert: tmp_0ZpCXEAsTG17 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:8.8'.
	self
		assert: tmp_0ZpCXEAsTG17 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.9'.
	self
		assert: tmp_0ZpCXEAsTG17 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:8.10'.
	self
		assert: tmp_0ZpCXEAsTG17 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.11'.
	self
		assert: tmp_0ZpCXEAsTG17 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:8.12'.
	self
		assert: tmp_0ZpCXEAsTG17 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.13'.
	self
		assert: tmp_0ZpCXEAsTG17 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:8.14'.
	self
		assert: tmp_0ZpCXEAsTG17 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.15'.
	self
		assert: tmp_0ZpCXEAsTG17 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:8.16'.
	self
		assert: tmp_0ZpCXEAsTG17 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.17'.
	self
		assert: tmp_0ZpCXEAsTG17 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:8.18'.
	self
		assert: tmp_0ZpCXEAsTG17 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.19'.
	self
		assert: tmp_0ZpCXEAsTG17 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:8.20'.
	self
		assert: tmp_0ZpCXEAsTG17 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.21'.
	self
		assert: tmp_0ZpCXEAsTG17 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:8.22'.
	self
		assert: tmp_0ZpCXEAsTG17 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.23'.
	self
		assert: tmp_0ZpCXEAsTG17 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:8.24'.
	self
		assert: tmp_0ZpCXEAsTG17 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.25'.
	self
		assert: tmp_0ZpCXEAsTG17 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:8.26'.
	self
		assert: tmp_0ZpCXEAsTG17 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.27'.
	self
		assert: tmp_0ZpCXEAsTG17 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:8.28'.
	self
		assert: tmp_0ZpCXEAsTG17 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.29'.
	self
		assert: tmp_0ZpCXEAsTG17 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:8.30'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.31'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.32'.
	self
		assert: tmp_0ZpCXEAsTG17 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:8.33'.
	self
		assert: tmp_0ZpCXEAsTG17 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:8.34'.
	self
		assert: tmp_0ZpCXEAsTG17 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:8.35'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.36'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:8.37'.
	self
		assert: tmp_0ZpCXEAsTG17 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.38'.
	self
		assert: tmp_0ZpCXEAsTG17 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:8.39'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.40'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:8.41'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.42'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:8.43'.
	self
		assert: tmp_0ZpCXEAsTG17 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.44'.
	self
		assert: tmp_0ZpCXEAsTG17 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:8.45'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.46'.
	self
		assert: tmp_0ZpCXEAsTG17 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:8.47'.
	self
		assert: tmp_0ZpCXEAsTG17 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:8.48'.
	self
		assert: tmp_0ZpCXEAsTG17 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.49'.
	self
		assert: tmp_0ZpCXEAsTG17 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:8.50'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.51'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.52'.
	self
		assert: tmp_0ZpCXEAsTG17 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:8.53'.
	self
		assert: tmp_0ZpCXEAsTG17 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:8.54'.
	self
		assert: tmp_0ZpCXEAsTG17 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.55'.
	self
		assert: tmp_0ZpCXEAsTG17 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:8.56'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.57'.
	self
		assert: tmp_0ZpCXEAsTG17 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:8.58'.
	self
		assert: tmp_0ZpCXEAsTG17 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.59'.
	self
		assert: tmp_0ZpCXEAsTG17 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:8.60'.
	self
		assert: tmp_0ZpCXEAsTG17 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:8.61'.
	self
		assert: tmp_0ZpCXEAsTG17 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:8.62'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:8.63'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.64'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:8.65'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.66'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:8.67'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.68'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:8.69'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.70'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:8.71'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.72'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:8.73'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.74'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:8.75'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.76'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:8.77'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.78'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:8.79'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.80'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:8.81'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.82'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:8.83'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.84'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:8.85'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:8.86'.
	self
		assert: tmp_0ZpCXEAsTG17 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:8.87'.
	self
		assert: tmp_0ZpCXEAsTG17 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:8.88'.
	self
		assert: tmp_0ZpCXEAsTG17 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.89'.
	self
		assert: tmp_0ZpCXEAsTG17 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.90'.
	self
		assert: tmp_0ZpCXEAsTG17 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.91'.
	self
		assert: tmp_0ZpCXEAsTG17 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:8.92'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:8.93'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.94'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.95'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.96'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:8.97'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.98'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:8.99'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.100'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:8.101'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.102'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.103'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.104'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:8.105'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.106'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:8.107'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.108'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:8.109'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.110'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:8.111'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.112'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:8.113'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.114'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:8.115'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.116'.
	self
		assert: tmp_0ZpCXEAsTG17 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:8.117'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:8.118'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.119'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:8.120'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.121'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.122'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:8.123'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:8.124'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.125'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:8.126'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.127'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:8.128'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.129'.
	self
		assert: tmp_0ZpCXEAsTG17 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:8.130'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.131'.
	self
		assert: tmp_0ZpCXEAsTG17 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:8.132'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:8.133'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.134'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:8.135'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.136'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:8.137'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:8.138'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:8.139'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:8.140'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:8.141'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:8.142'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:8.143'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.144'.
	self
		assert: tmp_0ZpCXEAsTG17 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:8.145'.
	self
		assert: tmp_0ZpCXEAsTG17 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:8.146'.
	self
		assert: tmp_0ZpCXEAsTG17 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:8.147'.
	tmp_51Is8ro0Q711 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:9.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeMiddle_amp:9.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:9.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:9.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:9.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:9.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:9.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:9.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:9.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:9.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:9.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeMiddle_amp:9.21'.
	self
		assert: tmp_51Is8ro0Q711 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:9.1'.
	self
		assert: tmp_51Is8ro0Q711 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:9.2'.
	self
		assert: tmp_51Is8ro0Q711 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.3'.
	self
		assert: tmp_51Is8ro0Q711 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.4'.
	self
		assert: tmp_51Is8ro0Q711 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:9.5'.
	self
		assert: tmp_51Is8ro0Q711 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:9.6'.
	self
		assert: tmp_51Is8ro0Q711 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.7'.
	self
		assert: tmp_51Is8ro0Q711 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:9.8'.
	self
		assert: tmp_51Is8ro0Q711 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.9'.
	self
		assert: tmp_51Is8ro0Q711 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:9.10'.
	self
		assert: tmp_51Is8ro0Q711 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.11'.
	self
		assert: tmp_51Is8ro0Q711 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:9.12'.
	self
		assert: tmp_51Is8ro0Q711 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.13'.
	self
		assert: tmp_51Is8ro0Q711 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:9.14'.
	self
		assert: tmp_51Is8ro0Q711 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.15'.
	self
		assert: tmp_51Is8ro0Q711 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:9.16'.
	self
		assert: tmp_51Is8ro0Q711 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.17'.
	self
		assert: tmp_51Is8ro0Q711 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:9.18'.
	self
		assert: tmp_51Is8ro0Q711 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.19'.
	self
		assert: tmp_51Is8ro0Q711 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:9.20'.
	self
		assert: tmp_51Is8ro0Q711 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.21'.
	self
		assert: tmp_51Is8ro0Q711 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:9.22'.
	self
		assert: tmp_51Is8ro0Q711 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.23'.
	self
		assert: tmp_51Is8ro0Q711 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:9.24'.
	self
		assert: tmp_51Is8ro0Q711 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.25'.
	self
		assert: tmp_51Is8ro0Q711 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:9.26'.
	self
		assert: tmp_51Is8ro0Q711 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.27'.
	self
		assert: tmp_51Is8ro0Q711 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:9.28'.
	self
		assert: tmp_51Is8ro0Q711 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.29'.
	self
		assert: tmp_51Is8ro0Q711 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:9.30'.
	self
		assert: tmp_51Is8ro0Q711 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.31'.
	self
		assert: tmp_51Is8ro0Q711 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.32'.
	self
		assert: tmp_51Is8ro0Q711 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:9.33'.
	self
		assert: tmp_51Is8ro0Q711 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:9.34'.
	self
		assert: tmp_51Is8ro0Q711 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:9.35'.
	self
		assert: tmp_51Is8ro0Q711 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.36'.
	self
		assert: tmp_51Is8ro0Q711 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:9.37'.
	self
		assert: tmp_51Is8ro0Q711 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.38'.
	self
		assert: tmp_51Is8ro0Q711 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:9.39'.
	self
		assert: tmp_51Is8ro0Q711 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.40'.
	self
		assert: tmp_51Is8ro0Q711 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:9.41'.
	self
		assert: tmp_51Is8ro0Q711 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.42'.
	self
		assert: tmp_51Is8ro0Q711 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:9.43'.
	self
		assert: tmp_51Is8ro0Q711 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.44'.
	self
		assert: tmp_51Is8ro0Q711 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:9.45'.
	self
		assert: tmp_51Is8ro0Q711 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.46'.
	self
		assert: tmp_51Is8ro0Q711 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:9.47'.
	self
		assert: tmp_51Is8ro0Q711 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:9.48'.
	self
		assert: tmp_51Is8ro0Q711 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.49'.
	self
		assert: tmp_51Is8ro0Q711 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:9.50'.
	self
		assert: tmp_51Is8ro0Q711 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.51'.
	self
		assert: tmp_51Is8ro0Q711 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.52'.
	self
		assert: tmp_51Is8ro0Q711 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:9.53'.
	self
		assert: tmp_51Is8ro0Q711 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:9.54'.
	self
		assert: tmp_51Is8ro0Q711 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.55'.
	self
		assert: tmp_51Is8ro0Q711 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:9.56'.
	self
		assert: tmp_51Is8ro0Q711 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.57'.
	self
		assert: tmp_51Is8ro0Q711 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:9.58'.
	self
		assert: tmp_51Is8ro0Q711 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.59'.
	self
		assert: tmp_51Is8ro0Q711 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:9.60'.
	self
		assert: tmp_51Is8ro0Q711 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:9.61'.
	self
		assert: tmp_51Is8ro0Q711 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:9.62'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:9.63'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.64'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:9.65'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.66'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:9.67'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.68'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:9.69'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.70'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:9.71'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.72'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:9.73'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.74'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:9.75'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.76'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:9.77'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.78'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:9.79'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.80'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:9.81'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.82'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:9.83'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.84'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:9.85'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:9.86'.
	self
		assert: tmp_51Is8ro0Q711 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:9.87'.
	self
		assert: tmp_51Is8ro0Q711 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:9.88'.
	self
		assert: tmp_51Is8ro0Q711 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.89'.
	self
		assert: tmp_51Is8ro0Q711 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.90'.
	self
		assert: tmp_51Is8ro0Q711 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.91'.
	self
		assert: tmp_51Is8ro0Q711 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:9.92'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:9.93'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.94'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.95'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.96'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:9.97'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.98'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:9.99'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.100'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:9.101'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.102'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.103'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.104'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:9.105'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.106'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:9.107'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.108'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:9.109'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.110'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:9.111'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.112'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:9.113'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.114'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:9.115'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.116'.
	self
		assert: tmp_51Is8ro0Q711 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:9.117'.
	self
		assert: tmp_51Is8ro0Q711 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:9.118'.
	self
		assert: tmp_51Is8ro0Q711 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.119'.
	self
		assert: tmp_51Is8ro0Q711 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:9.120'.
	self
		assert: tmp_51Is8ro0Q711 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.121'.
	self
		assert: tmp_51Is8ro0Q711 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.122'.
	self
		assert: tmp_51Is8ro0Q711 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:9.123'.
	self
		assert: tmp_51Is8ro0Q711 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:9.124'.
	self
		assert: tmp_51Is8ro0Q711 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.125'.
	self
		assert: tmp_51Is8ro0Q711 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:9.126'.
	self
		assert: tmp_51Is8ro0Q711 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.127'.
	self
		assert: tmp_51Is8ro0Q711 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:9.128'.
	self
		assert: tmp_51Is8ro0Q711 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.129'.
	self
		assert: tmp_51Is8ro0Q711 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:9.130'.
	self
		assert: tmp_51Is8ro0Q711 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.131'.
	self
		assert: tmp_51Is8ro0Q711 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:9.132'.
	self
		assert: tmp_51Is8ro0Q711 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:9.133'.
	self
		assert: tmp_51Is8ro0Q711 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.134'.
	self
		assert: tmp_51Is8ro0Q711 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:9.135'.
	self
		assert: tmp_51Is8ro0Q711 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.136'.
	self
		assert: tmp_51Is8ro0Q711 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:9.137'.
	self
		assert: tmp_51Is8ro0Q711 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:9.138'.
	self
		assert: tmp_51Is8ro0Q711 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:9.139'.
	self
		assert: tmp_51Is8ro0Q711 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:9.140'.
	self
		assert: tmp_51Is8ro0Q711 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:9.141'.
	self
		assert: tmp_51Is8ro0Q711 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:9.142'.
	self
		assert: tmp_51Is8ro0Q711 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:9.143'.
	self
		assert: tmp_51Is8ro0Q711 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.144'.
	self
		assert: tmp_51Is8ro0Q711 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:9.145'.
	self
		assert: tmp_51Is8ro0Q711 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:9.146'.
	self
		assert: tmp_51Is8ro0Q711 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:9.147'.
	tmp_hazCm3p7RZ13 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:10.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeMiddle_amp:10.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:10.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:10.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:10.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:10.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:10.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:10.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:10.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:10.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:10.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeMiddle_amp:10.21'.
	self
		assert: tmp_hazCm3p7RZ13 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:10.1'.
	self
		assert: tmp_hazCm3p7RZ13 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:10.2'.
	self
		assert: tmp_hazCm3p7RZ13 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.3'.
	self
		assert: tmp_hazCm3p7RZ13 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.4'.
	self
		assert: tmp_hazCm3p7RZ13 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:10.5'.
	self
		assert: tmp_hazCm3p7RZ13 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:10.6'.
	self
		assert: tmp_hazCm3p7RZ13 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.7'.
	self
		assert: tmp_hazCm3p7RZ13 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:10.8'.
	self
		assert: tmp_hazCm3p7RZ13 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.9'.
	self
		assert: tmp_hazCm3p7RZ13 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:10.10'.
	self
		assert: tmp_hazCm3p7RZ13 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.11'.
	self
		assert: tmp_hazCm3p7RZ13 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:10.12'.
	self
		assert: tmp_hazCm3p7RZ13 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.13'.
	self
		assert: tmp_hazCm3p7RZ13 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:10.14'.
	self
		assert: tmp_hazCm3p7RZ13 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.15'.
	self
		assert: tmp_hazCm3p7RZ13 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:10.16'.
	self
		assert: tmp_hazCm3p7RZ13 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.17'.
	self
		assert: tmp_hazCm3p7RZ13 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:10.18'.
	self
		assert: tmp_hazCm3p7RZ13 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.19'.
	self
		assert: tmp_hazCm3p7RZ13 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:10.20'.
	self
		assert: tmp_hazCm3p7RZ13 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.21'.
	self
		assert: tmp_hazCm3p7RZ13 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:10.22'.
	self
		assert: tmp_hazCm3p7RZ13 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.23'.
	self
		assert: tmp_hazCm3p7RZ13 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:10.24'.
	self
		assert: tmp_hazCm3p7RZ13 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.25'.
	self
		assert: tmp_hazCm3p7RZ13 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:10.26'.
	self
		assert: tmp_hazCm3p7RZ13 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.27'.
	self
		assert: tmp_hazCm3p7RZ13 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:10.28'.
	self
		assert: tmp_hazCm3p7RZ13 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.29'.
	self
		assert: tmp_hazCm3p7RZ13 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:10.30'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.31'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.32'.
	self
		assert: tmp_hazCm3p7RZ13 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:10.33'.
	self
		assert: tmp_hazCm3p7RZ13 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:10.34'.
	self
		assert: tmp_hazCm3p7RZ13 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:10.35'.
	self
		assert: tmp_hazCm3p7RZ13 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.36'.
	self
		assert: tmp_hazCm3p7RZ13 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:10.37'.
	self
		assert: tmp_hazCm3p7RZ13 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.38'.
	self
		assert: tmp_hazCm3p7RZ13 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:10.39'.
	self
		assert: tmp_hazCm3p7RZ13 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.40'.
	self
		assert: tmp_hazCm3p7RZ13 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:10.41'.
	self
		assert: tmp_hazCm3p7RZ13 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.42'.
	self
		assert: tmp_hazCm3p7RZ13 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:10.43'.
	self
		assert: tmp_hazCm3p7RZ13 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.44'.
	self
		assert: tmp_hazCm3p7RZ13 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:10.45'.
	self
		assert: tmp_hazCm3p7RZ13 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.46'.
	self
		assert: tmp_hazCm3p7RZ13 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:10.47'.
	self
		assert: tmp_hazCm3p7RZ13 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:10.48'.
	self
		assert: tmp_hazCm3p7RZ13 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.49'.
	self
		assert: tmp_hazCm3p7RZ13 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:10.50'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.51'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.52'.
	self
		assert: tmp_hazCm3p7RZ13 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:10.53'.
	self
		assert: tmp_hazCm3p7RZ13 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:10.54'.
	self
		assert: tmp_hazCm3p7RZ13 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.55'.
	self
		assert: tmp_hazCm3p7RZ13 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:10.56'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.57'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:10.58'.
	self
		assert: tmp_hazCm3p7RZ13 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.59'.
	self
		assert: tmp_hazCm3p7RZ13 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:10.60'.
	self
		assert: tmp_hazCm3p7RZ13 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:10.61'.
	self
		assert: tmp_hazCm3p7RZ13 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:10.62'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:10.63'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.64'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:10.65'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.66'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:10.67'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.68'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:10.69'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.70'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:10.71'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.72'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:10.73'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.74'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:10.75'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.76'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:10.77'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.78'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:10.79'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.80'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:10.81'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.82'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:10.83'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.84'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:10.85'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:10.86'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:10.87'.
	self
		assert: tmp_hazCm3p7RZ13 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:10.88'.
	self
		assert: tmp_hazCm3p7RZ13 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.89'.
	self
		assert: tmp_hazCm3p7RZ13 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.90'.
	self
		assert: tmp_hazCm3p7RZ13 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.91'.
	self
		assert: tmp_hazCm3p7RZ13 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:10.92'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:10.93'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.94'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.95'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.96'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:10.97'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.98'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:10.99'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.100'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:10.101'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.102'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.103'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.104'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:10.105'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.106'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:10.107'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.108'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:10.109'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.110'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:10.111'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.112'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:10.113'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.114'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:10.115'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.116'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:10.117'.
	self
		assert: tmp_hazCm3p7RZ13 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:10.118'.
	self
		assert: tmp_hazCm3p7RZ13 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.119'.
	self
		assert: tmp_hazCm3p7RZ13 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:10.120'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.121'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.122'.
	self
		assert: tmp_hazCm3p7RZ13 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:10.123'.
	self
		assert: tmp_hazCm3p7RZ13 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:10.124'.
	self
		assert: tmp_hazCm3p7RZ13 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.125'.
	self
		assert: tmp_hazCm3p7RZ13 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:10.126'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.127'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:10.128'.
	self
		assert: tmp_hazCm3p7RZ13 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.129'.
	self
		assert: tmp_hazCm3p7RZ13 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:10.130'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.131'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:10.132'.
	self
		assert: tmp_hazCm3p7RZ13 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:10.133'.
	self
		assert: tmp_hazCm3p7RZ13 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.134'.
	self
		assert: tmp_hazCm3p7RZ13 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:10.135'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.136'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:10.137'.
	self
		assert: tmp_hazCm3p7RZ13 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:10.138'.
	self
		assert: tmp_hazCm3p7RZ13 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:10.139'.
	self
		assert: tmp_hazCm3p7RZ13 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:10.140'.
	self
		assert: tmp_hazCm3p7RZ13 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:10.141'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:10.142'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:10.143'.
	self
		assert: tmp_hazCm3p7RZ13 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.144'.
	self
		assert: tmp_hazCm3p7RZ13 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:10.145'.
	self
		assert: tmp_hazCm3p7RZ13 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:10.146'.
	self
		assert: tmp_hazCm3p7RZ13 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:10.147'.
	tmp_hazCm3p7RZ13
		announce: (TSMouseMiddleDragStart new canvas: view canvas).
	self
		assert: tmp_hazCm3p7RZ13 class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:11.1'.
	self
		assert: tmp_hazCm3p7RZ13 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:11.2'.
	self
		assert: tmp_hazCm3p7RZ13 fixedShapes size
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.3'.
	self
		assert: tmp_hazCm3p7RZ13 showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.4'.
	self
		assert: tmp_hazCm3p7RZ13 showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:11.5'.
	self
		assert: tmp_hazCm3p7RZ13 color class
		equals: Color
		description: 'testDraggingModeMiddle_amp:11.6'.
	self
		assert: tmp_hazCm3p7RZ13 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.7'.
	self
		assert: tmp_hazCm3p7RZ13 color alpha
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:11.8'.
	self
		assert: tmp_hazCm3p7RZ13 color red class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.9'.
	self
		assert: tmp_hazCm3p7RZ13 color red
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:11.10'.
	self
		assert: tmp_hazCm3p7RZ13 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.11'.
	self
		assert: tmp_hazCm3p7RZ13 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:11.12'.
	self
		assert: tmp_hazCm3p7RZ13 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.13'.
	self
		assert: tmp_hazCm3p7RZ13 color brightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:11.14'.
	self
		assert: tmp_hazCm3p7RZ13 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.15'.
	self
		assert: tmp_hazCm3p7RZ13 color hue
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:11.16'.
	self
		assert: tmp_hazCm3p7RZ13 color green class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.17'.
	self
		assert: tmp_hazCm3p7RZ13 color green
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:11.18'.
	self
		assert: tmp_hazCm3p7RZ13 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.19'.
	self
		assert: tmp_hazCm3p7RZ13 color chroma
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:11.20'.
	self
		assert: tmp_hazCm3p7RZ13 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.21'.
	self
		assert: tmp_hazCm3p7RZ13 color lightness
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:11.22'.
	self
		assert: tmp_hazCm3p7RZ13 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.23'.
	self
		assert: tmp_hazCm3p7RZ13 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:11.24'.
	self
		assert: tmp_hazCm3p7RZ13 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.25'.
	self
		assert: tmp_hazCm3p7RZ13 color saturation
		equals: 0.0
		description: 'testDraggingModeMiddle_amp:11.26'.
	self
		assert: tmp_hazCm3p7RZ13 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.27'.
	self
		assert: tmp_hazCm3p7RZ13 color luminance
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:11.28'.
	self
		assert: tmp_hazCm3p7RZ13 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.29'.
	self
		assert: tmp_hazCm3p7RZ13 color blue
		equals: 1.0
		description: 'testDraggingModeMiddle_amp:11.30'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.31'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.32'.
	self
		assert: tmp_hazCm3p7RZ13 morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:11.33'.
	self
		assert: tmp_hazCm3p7RZ13 morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:11.34'.
	self
		assert: tmp_hazCm3p7RZ13 extent class
		equals: Point
		description: 'testDraggingModeMiddle_amp:11.35'.
	self
		assert: tmp_hazCm3p7RZ13 extent isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.36'.
	self
		assert: tmp_hazCm3p7RZ13 extent isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:11.37'.
	self
		assert: tmp_hazCm3p7RZ13 extent y class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.38'.
	self
		assert: tmp_hazCm3p7RZ13 extent y
		equals: 500
		description: 'testDraggingModeMiddle_amp:11.39'.
	self
		assert: tmp_hazCm3p7RZ13 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.40'.
	self
		assert: tmp_hazCm3p7RZ13 extent isFloatPoint
		equals: false
		description: 'testDraggingModeMiddle_amp:11.41'.
	self
		assert: tmp_hazCm3p7RZ13 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.42'.
	self
		assert: tmp_hazCm3p7RZ13 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:11.43'.
	self
		assert: tmp_hazCm3p7RZ13 extent x class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.44'.
	self
		assert: tmp_hazCm3p7RZ13 extent x
		equals: 500
		description: 'testDraggingModeMiddle_amp:11.45'.
	self
		assert: tmp_hazCm3p7RZ13 extent isPoint class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.46'.
	self
		assert: tmp_hazCm3p7RZ13 extent isPoint
		equals: true
		description: 'testDraggingModeMiddle_amp:11.47'.
	self
		assert: tmp_hazCm3p7RZ13 parent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:11.48'.
	self
		assert: tmp_hazCm3p7RZ13 parent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.49'.
	self
		assert: tmp_hazCm3p7RZ13 parent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:11.50'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.51'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.52'.
	self
		assert: tmp_hazCm3p7RZ13 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:11.53'.
	self
		assert: tmp_hazCm3p7RZ13 parent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:11.54'.
	self
		assert: tmp_hazCm3p7RZ13 parent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.55'.
	self
		assert: tmp_hazCm3p7RZ13 parent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:11.56'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.57'.
	self
		assert: tmp_hazCm3p7RZ13 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:11.58'.
	self
		assert: tmp_hazCm3p7RZ13 parent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.59'.
	self
		assert: tmp_hazCm3p7RZ13 parent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:11.60'.
	self
		assert: tmp_hazCm3p7RZ13 shapes class
		equals: TSGroup
		description: 'testDraggingModeMiddle_amp:11.61'.
	self
		assert: tmp_hazCm3p7RZ13 shapes size
		equals: 1
		description: 'testDraggingModeMiddle_amp:11.62'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:11.63'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.64'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeMiddle_amp:11.65'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.66'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:11.67'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.68'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeMiddle_amp:11.69'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.70'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:11.71'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.72'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeMiddle_amp:11.73'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.74'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeMiddle_amp:11.75'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.76'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:11.77'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.78'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:11.79'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.80'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeMiddle_amp:11.81'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.82'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeMiddle_amp:11.83'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.84'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:11.85'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeMiddle_amp:11.86'.
	self
		assert: tmp_hazCm3p7RZ13 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeMiddle_amp:11.87'.
	self
		assert: tmp_hazCm3p7RZ13 view class
		equals: RSView
		description: 'testDraggingModeMiddle_amp:11.88'.
	self
		assert: tmp_hazCm3p7RZ13 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.89'.
	self
		assert: tmp_hazCm3p7RZ13 view numberOfEdges
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.90'.
	self
		assert: tmp_hazCm3p7RZ13 isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.91'.
	self
		assert: tmp_hazCm3p7RZ13 isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:11.92'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeMiddle_amp:11.93'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.94'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle top
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.95'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.96'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeMiddle_amp:11.97'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.98'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle area
		equals: 250000
		description: 'testDraggingModeMiddle_amp:11.99'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.100'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isTall
		equals: false
		description: 'testDraggingModeMiddle_amp:11.101'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.102'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle left
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.103'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.104'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle width
		equals: 500
		description: 'testDraggingModeMiddle_amp:11.105'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.106'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle right
		equals: 500
		description: 'testDraggingModeMiddle_amp:11.107'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.108'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isZero
		equals: false
		description: 'testDraggingModeMiddle_amp:11.109'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.110'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isWide
		equals: false
		description: 'testDraggingModeMiddle_amp:11.111'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.112'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeMiddle_amp:11.113'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.114'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeMiddle_amp:11.115'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.116'.
	self
		assert: tmp_hazCm3p7RZ13 basicRectangle height
		equals: 500
		description: 'testDraggingModeMiddle_amp:11.117'.
	self
		assert: tmp_hazCm3p7RZ13 topParent class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:11.118'.
	self
		assert: tmp_hazCm3p7RZ13 topParent showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.119'.
	self
		assert: tmp_hazCm3p7RZ13 topParent showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:11.120'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.121'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.122'.
	self
		assert: tmp_hazCm3p7RZ13 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:11.123'.
	self
		assert: tmp_hazCm3p7RZ13 topParent morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:11.124'.
	self
		assert: tmp_hazCm3p7RZ13 topParent isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.125'.
	self
		assert: tmp_hazCm3p7RZ13 topParent isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:11.126'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.127'.
	self
		assert: tmp_hazCm3p7RZ13 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:11.128'.
	self
		assert: tmp_hazCm3p7RZ13 topParent clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.129'.
	self
		assert: tmp_hazCm3p7RZ13 topParent clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:11.130'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.131'.
	self
		assert: tmp_hazCm3p7RZ13 numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:11.132'.
	self
		assert: tmp_hazCm3p7RZ13 canvas class
		equals: TSCanvas
		description: 'testDraggingModeMiddle_amp:11.133'.
	self
		assert: tmp_hazCm3p7RZ13 canvas showRectangles class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.134'.
	self
		assert: tmp_hazCm3p7RZ13 canvas showRectangles
		equals: false
		description: 'testDraggingModeMiddle_amp:11.135'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.136'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeMiddle_amp:11.137'.
	self
		assert: tmp_hazCm3p7RZ13 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeMiddle_amp:11.138'.
	self
		assert: tmp_hazCm3p7RZ13 canvas morph
		equals: nil
		description: 'testDraggingModeMiddle_amp:11.139'.
	self
		assert: tmp_hazCm3p7RZ13 canvas isShape class
		equals: False
		description: 'testDraggingModeMiddle_amp:11.140'.
	self
		assert: tmp_hazCm3p7RZ13 canvas isShape
		equals: false
		description: 'testDraggingModeMiddle_amp:11.141'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeMiddle_amp:11.142'.
	self
		assert: tmp_hazCm3p7RZ13 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeMiddle_amp:11.143'.
	self
		assert: tmp_hazCm3p7RZ13 canvas clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.144'.
	self
		assert: tmp_hazCm3p7RZ13 canvas clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:11.145'.
	self
		assert: tmp_hazCm3p7RZ13 clearBackground class
		equals: True
		description: 'testDraggingModeMiddle_amp:11.146'.
	self
		assert: tmp_hazCm3p7RZ13 clearBackground
		equals: true
		description: 'testDraggingModeMiddle_amp:11.147'.
	view canvas announce: (TSMouseDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	view canvas
		announce: (TSMouseMiddleDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> testDraggingModeRight_amp [
	<madeBySmallAmp>
	| tmp_B7fPAVYhts4 tmp_ZQpoSJq8DH5 tmp_RF0Ru2yBSG9 tmp_9NcGyC2ZSR11 tmp_LlklpIsjze13 tmp_L8rJpghOOL15 tmp_qDMRxKfGpW17 |
	tmp_ZQpoSJq8DH5 := view @ TSDraggableCanvas right.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeRight_amp:1.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:1.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeRight_amp:1.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:1.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeRight_amp:1.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:1.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:1.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:1.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:1.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:1.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:1.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:1.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:1.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:1.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:1.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:1.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:1.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeRight_amp:1.21'.
	self
		assert: tmp_ZQpoSJq8DH5 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:1.1'.
	self
		assert: tmp_ZQpoSJq8DH5 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:1.2'.
	self
		assert: tmp_ZQpoSJq8DH5 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:1.3'.
	self
		assert: tmp_ZQpoSJq8DH5 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:1.4'.
	self
		assert: tmp_ZQpoSJq8DH5 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:1.5'.
	self
		assert: tmp_ZQpoSJq8DH5 color class
		equals: Color
		description: 'testDraggingModeRight_amp:1.6'.
	self
		assert: tmp_ZQpoSJq8DH5 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.7'.
	self
		assert: tmp_ZQpoSJq8DH5 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:1.8'.
	self
		assert: tmp_ZQpoSJq8DH5 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.9'.
	self
		assert: tmp_ZQpoSJq8DH5 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:1.10'.
	self
		assert: tmp_ZQpoSJq8DH5 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.11'.
	self
		assert: tmp_ZQpoSJq8DH5 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:1.12'.
	self
		assert: tmp_ZQpoSJq8DH5 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.13'.
	self
		assert: tmp_ZQpoSJq8DH5 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:1.14'.
	self
		assert: tmp_ZQpoSJq8DH5 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.15'.
	self
		assert: tmp_ZQpoSJq8DH5 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:1.16'.
	self
		assert: tmp_ZQpoSJq8DH5 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.17'.
	self
		assert: tmp_ZQpoSJq8DH5 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:1.18'.
	self
		assert: tmp_ZQpoSJq8DH5 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.19'.
	self
		assert: tmp_ZQpoSJq8DH5 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:1.20'.
	self
		assert: tmp_ZQpoSJq8DH5 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.21'.
	self
		assert: tmp_ZQpoSJq8DH5 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:1.22'.
	self
		assert: tmp_ZQpoSJq8DH5 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.23'.
	self
		assert: tmp_ZQpoSJq8DH5 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:1.24'.
	self
		assert: tmp_ZQpoSJq8DH5 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.25'.
	self
		assert: tmp_ZQpoSJq8DH5 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:1.26'.
	self
		assert: tmp_ZQpoSJq8DH5 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.27'.
	self
		assert: tmp_ZQpoSJq8DH5 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:1.28'.
	self
		assert: tmp_ZQpoSJq8DH5 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.29'.
	self
		assert: tmp_ZQpoSJq8DH5 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:1.30'.
	self
		assert: tmp_ZQpoSJq8DH5 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.31'.
	self
		assert: tmp_ZQpoSJq8DH5 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:1.32'.
	self
		assert: tmp_ZQpoSJq8DH5 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:1.33'.
	self
		assert: tmp_ZQpoSJq8DH5 morph
		equals: nil
		description: 'testDraggingModeRight_amp:1.34'.
	self
		assert: tmp_ZQpoSJq8DH5 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:1.35'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:1.36'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:1.37'.
	self
		assert: tmp_ZQpoSJq8DH5 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.38'.
	self
		assert: tmp_ZQpoSJq8DH5 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:1.39'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:1.40'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:1.41'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:1.42'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:1.43'.
	self
		assert: tmp_ZQpoSJq8DH5 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.44'.
	self
		assert: tmp_ZQpoSJq8DH5 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:1.45'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:1.46'.
	self
		assert: tmp_ZQpoSJq8DH5 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:1.47'.
	self
		assert: tmp_ZQpoSJq8DH5 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:1.48'.
	self
		assert: tmp_ZQpoSJq8DH5 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:1.49'.
	self
		assert: tmp_ZQpoSJq8DH5 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:1.50'.
	self
		assert: tmp_ZQpoSJq8DH5 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.51'.
	self
		assert: tmp_ZQpoSJq8DH5 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:1.52'.
	self
		assert: tmp_ZQpoSJq8DH5 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:1.53'.
	self
		assert: tmp_ZQpoSJq8DH5 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:1.54'.
	self
		assert: tmp_ZQpoSJq8DH5 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:1.55'.
	self
		assert: tmp_ZQpoSJq8DH5 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:1.56'.
	self
		assert: tmp_ZQpoSJq8DH5 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.57'.
	self
		assert: tmp_ZQpoSJq8DH5 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:1.58'.
	self
		assert: tmp_ZQpoSJq8DH5 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:1.59'.
	self
		assert: tmp_ZQpoSJq8DH5 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:1.60'.
	self
		assert: tmp_ZQpoSJq8DH5 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:1.61'.
	self
		assert: tmp_ZQpoSJq8DH5 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:1.62'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:1.63'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.64'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:1.65'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:1.66'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:1.67'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.68'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:1.69'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:1.70'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:1.71'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.72'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:1.73'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.74'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:1.75'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.76'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:1.77'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:1.78'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:1.79'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:1.80'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:1.81'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.82'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:1.83'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:1.84'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:1.85'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:1.86'.
	self
		assert: tmp_ZQpoSJq8DH5 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:1.87'.
	self
		assert: tmp_ZQpoSJq8DH5 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:1.88'.
	self
		assert: tmp_ZQpoSJq8DH5 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.89'.
	self
		assert: tmp_ZQpoSJq8DH5 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:1.90'.
	self
		assert: tmp_ZQpoSJq8DH5 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:1.91'.
	self
		assert: tmp_ZQpoSJq8DH5 isShape
		equals: false
		description: 'testDraggingModeRight_amp:1.92'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:1.93'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.94'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:1.95'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:1.96'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:1.97'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.98'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:1.99'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:1.100'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:1.101'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.102'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:1.103'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.104'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:1.105'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.106'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:1.107'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:1.108'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:1.109'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:1.110'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:1.111'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.112'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:1.113'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:1.114'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:1.115'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.116'.
	self
		assert: tmp_ZQpoSJq8DH5 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:1.117'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:1.118'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:1.119'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:1.120'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.121'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:1.122'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:1.123'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:1.124'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:1.125'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:1.126'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.127'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:1.128'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:1.129'.
	self
		assert: tmp_ZQpoSJq8DH5 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:1.130'.
	self
		assert: tmp_ZQpoSJq8DH5 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.131'.
	self
		assert: tmp_ZQpoSJq8DH5 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:1.132'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:1.133'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:1.134'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:1.135'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.136'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:1.137'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:1.138'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:1.139'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:1.140'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:1.141'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:1.142'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:1.143'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:1.144'.
	self
		assert: tmp_ZQpoSJq8DH5 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:1.145'.
	self
		assert: tmp_ZQpoSJq8DH5 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:1.146'.
	self
		assert: tmp_ZQpoSJq8DH5 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:1.147'.
	tmp_L8rJpghOOL15 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeRight_amp:2.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:2.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeRight_amp:2.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:2.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeRight_amp:2.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:2.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:2.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:2.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:2.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:2.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:2.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:2.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:2.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:2.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:2.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:2.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:2.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeRight_amp:2.21'.
	self
		assert: tmp_L8rJpghOOL15 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:2.1'.
	self
		assert: tmp_L8rJpghOOL15 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:2.2'.
	self
		assert: tmp_L8rJpghOOL15 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:2.3'.
	self
		assert: tmp_L8rJpghOOL15 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:2.4'.
	self
		assert: tmp_L8rJpghOOL15 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:2.5'.
	self
		assert: tmp_L8rJpghOOL15 color class
		equals: Color
		description: 'testDraggingModeRight_amp:2.6'.
	self
		assert: tmp_L8rJpghOOL15 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.7'.
	self
		assert: tmp_L8rJpghOOL15 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:2.8'.
	self
		assert: tmp_L8rJpghOOL15 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.9'.
	self
		assert: tmp_L8rJpghOOL15 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:2.10'.
	self
		assert: tmp_L8rJpghOOL15 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.11'.
	self
		assert: tmp_L8rJpghOOL15 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:2.12'.
	self
		assert: tmp_L8rJpghOOL15 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.13'.
	self
		assert: tmp_L8rJpghOOL15 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:2.14'.
	self
		assert: tmp_L8rJpghOOL15 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.15'.
	self
		assert: tmp_L8rJpghOOL15 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:2.16'.
	self
		assert: tmp_L8rJpghOOL15 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.17'.
	self
		assert: tmp_L8rJpghOOL15 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:2.18'.
	self
		assert: tmp_L8rJpghOOL15 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.19'.
	self
		assert: tmp_L8rJpghOOL15 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:2.20'.
	self
		assert: tmp_L8rJpghOOL15 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.21'.
	self
		assert: tmp_L8rJpghOOL15 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:2.22'.
	self
		assert: tmp_L8rJpghOOL15 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.23'.
	self
		assert: tmp_L8rJpghOOL15 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:2.24'.
	self
		assert: tmp_L8rJpghOOL15 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.25'.
	self
		assert: tmp_L8rJpghOOL15 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:2.26'.
	self
		assert: tmp_L8rJpghOOL15 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.27'.
	self
		assert: tmp_L8rJpghOOL15 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:2.28'.
	self
		assert: tmp_L8rJpghOOL15 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.29'.
	self
		assert: tmp_L8rJpghOOL15 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:2.30'.
	self
		assert: tmp_L8rJpghOOL15 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.31'.
	self
		assert: tmp_L8rJpghOOL15 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:2.32'.
	self
		assert: tmp_L8rJpghOOL15 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:2.33'.
	self
		assert: tmp_L8rJpghOOL15 morph
		equals: nil
		description: 'testDraggingModeRight_amp:2.34'.
	self
		assert: tmp_L8rJpghOOL15 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:2.35'.
	self
		assert: tmp_L8rJpghOOL15 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:2.36'.
	self
		assert: tmp_L8rJpghOOL15 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:2.37'.
	self
		assert: tmp_L8rJpghOOL15 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.38'.
	self
		assert: tmp_L8rJpghOOL15 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:2.39'.
	self
		assert: tmp_L8rJpghOOL15 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:2.40'.
	self
		assert: tmp_L8rJpghOOL15 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:2.41'.
	self
		assert: tmp_L8rJpghOOL15 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:2.42'.
	self
		assert: tmp_L8rJpghOOL15 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:2.43'.
	self
		assert: tmp_L8rJpghOOL15 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.44'.
	self
		assert: tmp_L8rJpghOOL15 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:2.45'.
	self
		assert: tmp_L8rJpghOOL15 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:2.46'.
	self
		assert: tmp_L8rJpghOOL15 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:2.47'.
	self
		assert: tmp_L8rJpghOOL15 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:2.48'.
	self
		assert: tmp_L8rJpghOOL15 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:2.49'.
	self
		assert: tmp_L8rJpghOOL15 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:2.50'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.51'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:2.52'.
	self
		assert: tmp_L8rJpghOOL15 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:2.53'.
	self
		assert: tmp_L8rJpghOOL15 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:2.54'.
	self
		assert: tmp_L8rJpghOOL15 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:2.55'.
	self
		assert: tmp_L8rJpghOOL15 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:2.56'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.57'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:2.58'.
	self
		assert: tmp_L8rJpghOOL15 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:2.59'.
	self
		assert: tmp_L8rJpghOOL15 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:2.60'.
	self
		assert: tmp_L8rJpghOOL15 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:2.61'.
	self
		assert: tmp_L8rJpghOOL15 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:2.62'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:2.63'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.64'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:2.65'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:2.66'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:2.67'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.68'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:2.69'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:2.70'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:2.71'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.72'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:2.73'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.74'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:2.75'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.76'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:2.77'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:2.78'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:2.79'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:2.80'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:2.81'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.82'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:2.83'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:2.84'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:2.85'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:2.86'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:2.87'.
	self
		assert: tmp_L8rJpghOOL15 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:2.88'.
	self
		assert: tmp_L8rJpghOOL15 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.89'.
	self
		assert: tmp_L8rJpghOOL15 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:2.90'.
	self
		assert: tmp_L8rJpghOOL15 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:2.91'.
	self
		assert: tmp_L8rJpghOOL15 isShape
		equals: false
		description: 'testDraggingModeRight_amp:2.92'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:2.93'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.94'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:2.95'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:2.96'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:2.97'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.98'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:2.99'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:2.100'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:2.101'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.102'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:2.103'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.104'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:2.105'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.106'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:2.107'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:2.108'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:2.109'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:2.110'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:2.111'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.112'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:2.113'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:2.114'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:2.115'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.116'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:2.117'.
	self
		assert: tmp_L8rJpghOOL15 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:2.118'.
	self
		assert: tmp_L8rJpghOOL15 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:2.119'.
	self
		assert: tmp_L8rJpghOOL15 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:2.120'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.121'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:2.122'.
	self
		assert: tmp_L8rJpghOOL15 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:2.123'.
	self
		assert: tmp_L8rJpghOOL15 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:2.124'.
	self
		assert: tmp_L8rJpghOOL15 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:2.125'.
	self
		assert: tmp_L8rJpghOOL15 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:2.126'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.127'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:2.128'.
	self
		assert: tmp_L8rJpghOOL15 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:2.129'.
	self
		assert: tmp_L8rJpghOOL15 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:2.130'.
	self
		assert: tmp_L8rJpghOOL15 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.131'.
	self
		assert: tmp_L8rJpghOOL15 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:2.132'.
	self
		assert: tmp_L8rJpghOOL15 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:2.133'.
	self
		assert: tmp_L8rJpghOOL15 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:2.134'.
	self
		assert: tmp_L8rJpghOOL15 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:2.135'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.136'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:2.137'.
	self
		assert: tmp_L8rJpghOOL15 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:2.138'.
	self
		assert: tmp_L8rJpghOOL15 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:2.139'.
	self
		assert: tmp_L8rJpghOOL15 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:2.140'.
	self
		assert: tmp_L8rJpghOOL15 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:2.141'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:2.142'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:2.143'.
	self
		assert: tmp_L8rJpghOOL15 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:2.144'.
	self
		assert: tmp_L8rJpghOOL15 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:2.145'.
	self
		assert: tmp_L8rJpghOOL15 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:2.146'.
	self
		assert: tmp_L8rJpghOOL15 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:2.147'.
	tmp_L8rJpghOOL15
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	self
		assert: tmp_L8rJpghOOL15 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:3.1'.
	self
		assert: tmp_L8rJpghOOL15 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:3.2'.
	self
		assert: tmp_L8rJpghOOL15 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:3.3'.
	self
		assert: tmp_L8rJpghOOL15 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:3.4'.
	self
		assert: tmp_L8rJpghOOL15 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:3.5'.
	self
		assert: tmp_L8rJpghOOL15 color class
		equals: Color
		description: 'testDraggingModeRight_amp:3.6'.
	self
		assert: tmp_L8rJpghOOL15 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.7'.
	self
		assert: tmp_L8rJpghOOL15 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:3.8'.
	self
		assert: tmp_L8rJpghOOL15 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.9'.
	self
		assert: tmp_L8rJpghOOL15 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:3.10'.
	self
		assert: tmp_L8rJpghOOL15 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.11'.
	self
		assert: tmp_L8rJpghOOL15 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:3.12'.
	self
		assert: tmp_L8rJpghOOL15 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.13'.
	self
		assert: tmp_L8rJpghOOL15 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:3.14'.
	self
		assert: tmp_L8rJpghOOL15 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.15'.
	self
		assert: tmp_L8rJpghOOL15 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:3.16'.
	self
		assert: tmp_L8rJpghOOL15 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.17'.
	self
		assert: tmp_L8rJpghOOL15 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:3.18'.
	self
		assert: tmp_L8rJpghOOL15 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.19'.
	self
		assert: tmp_L8rJpghOOL15 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:3.20'.
	self
		assert: tmp_L8rJpghOOL15 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.21'.
	self
		assert: tmp_L8rJpghOOL15 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:3.22'.
	self
		assert: tmp_L8rJpghOOL15 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.23'.
	self
		assert: tmp_L8rJpghOOL15 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:3.24'.
	self
		assert: tmp_L8rJpghOOL15 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.25'.
	self
		assert: tmp_L8rJpghOOL15 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:3.26'.
	self
		assert: tmp_L8rJpghOOL15 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.27'.
	self
		assert: tmp_L8rJpghOOL15 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:3.28'.
	self
		assert: tmp_L8rJpghOOL15 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.29'.
	self
		assert: tmp_L8rJpghOOL15 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:3.30'.
	self
		assert: tmp_L8rJpghOOL15 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.31'.
	self
		assert: tmp_L8rJpghOOL15 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:3.32'.
	self
		assert: tmp_L8rJpghOOL15 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:3.33'.
	self
		assert: tmp_L8rJpghOOL15 morph
		equals: nil
		description: 'testDraggingModeRight_amp:3.34'.
	self
		assert: tmp_L8rJpghOOL15 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:3.35'.
	self
		assert: tmp_L8rJpghOOL15 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:3.36'.
	self
		assert: tmp_L8rJpghOOL15 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:3.37'.
	self
		assert: tmp_L8rJpghOOL15 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.38'.
	self
		assert: tmp_L8rJpghOOL15 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:3.39'.
	self
		assert: tmp_L8rJpghOOL15 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:3.40'.
	self
		assert: tmp_L8rJpghOOL15 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:3.41'.
	self
		assert: tmp_L8rJpghOOL15 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:3.42'.
	self
		assert: tmp_L8rJpghOOL15 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:3.43'.
	self
		assert: tmp_L8rJpghOOL15 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.44'.
	self
		assert: tmp_L8rJpghOOL15 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:3.45'.
	self
		assert: tmp_L8rJpghOOL15 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:3.46'.
	self
		assert: tmp_L8rJpghOOL15 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:3.47'.
	self
		assert: tmp_L8rJpghOOL15 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:3.48'.
	self
		assert: tmp_L8rJpghOOL15 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:3.49'.
	self
		assert: tmp_L8rJpghOOL15 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:3.50'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.51'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:3.52'.
	self
		assert: tmp_L8rJpghOOL15 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:3.53'.
	self
		assert: tmp_L8rJpghOOL15 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:3.54'.
	self
		assert: tmp_L8rJpghOOL15 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:3.55'.
	self
		assert: tmp_L8rJpghOOL15 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:3.56'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.57'.
	self
		assert: tmp_L8rJpghOOL15 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:3.58'.
	self
		assert: tmp_L8rJpghOOL15 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:3.59'.
	self
		assert: tmp_L8rJpghOOL15 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:3.60'.
	self
		assert: tmp_L8rJpghOOL15 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:3.61'.
	self
		assert: tmp_L8rJpghOOL15 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:3.62'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:3.63'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.64'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:3.65'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:3.66'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:3.67'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.68'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:3.69'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:3.70'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:3.71'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.72'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:3.73'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.74'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:3.75'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.76'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:3.77'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:3.78'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:3.79'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:3.80'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:3.81'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.82'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:3.83'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:3.84'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:3.85'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:3.86'.
	self
		assert: tmp_L8rJpghOOL15 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:3.87'.
	self
		assert: tmp_L8rJpghOOL15 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:3.88'.
	self
		assert: tmp_L8rJpghOOL15 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.89'.
	self
		assert: tmp_L8rJpghOOL15 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:3.90'.
	self
		assert: tmp_L8rJpghOOL15 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:3.91'.
	self
		assert: tmp_L8rJpghOOL15 isShape
		equals: false
		description: 'testDraggingModeRight_amp:3.92'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:3.93'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.94'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:3.95'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:3.96'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:3.97'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.98'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:3.99'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:3.100'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:3.101'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.102'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:3.103'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.104'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:3.105'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.106'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:3.107'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:3.108'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:3.109'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:3.110'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:3.111'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.112'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:3.113'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:3.114'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:3.115'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.116'.
	self
		assert: tmp_L8rJpghOOL15 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:3.117'.
	self
		assert: tmp_L8rJpghOOL15 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:3.118'.
	self
		assert: tmp_L8rJpghOOL15 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:3.119'.
	self
		assert: tmp_L8rJpghOOL15 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:3.120'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.121'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:3.122'.
	self
		assert: tmp_L8rJpghOOL15 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:3.123'.
	self
		assert: tmp_L8rJpghOOL15 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:3.124'.
	self
		assert: tmp_L8rJpghOOL15 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:3.125'.
	self
		assert: tmp_L8rJpghOOL15 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:3.126'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.127'.
	self
		assert: tmp_L8rJpghOOL15 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:3.128'.
	self
		assert: tmp_L8rJpghOOL15 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:3.129'.
	self
		assert: tmp_L8rJpghOOL15 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:3.130'.
	self
		assert: tmp_L8rJpghOOL15 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.131'.
	self
		assert: tmp_L8rJpghOOL15 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:3.132'.
	self
		assert: tmp_L8rJpghOOL15 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:3.133'.
	self
		assert: tmp_L8rJpghOOL15 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:3.134'.
	self
		assert: tmp_L8rJpghOOL15 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:3.135'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.136'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:3.137'.
	self
		assert: tmp_L8rJpghOOL15 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:3.138'.
	self
		assert: tmp_L8rJpghOOL15 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:3.139'.
	self
		assert: tmp_L8rJpghOOL15 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:3.140'.
	self
		assert: tmp_L8rJpghOOL15 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:3.141'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:3.142'.
	self
		assert: tmp_L8rJpghOOL15 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:3.143'.
	self
		assert: tmp_L8rJpghOOL15 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:3.144'.
	self
		assert: tmp_L8rJpghOOL15 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:3.145'.
	self
		assert: tmp_L8rJpghOOL15 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:3.146'.
	self
		assert: tmp_L8rJpghOOL15 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:3.147'.
	self
		should: [ tmp_RF0Ru2yBSG9
				announce:
					(TSMouseDragging new
						step: 10 @ 5;
						canvas: view canvas) ]
		raise: MessageNotUnderstood
		description: 'testDraggingModeRight_amp:4.1'.
	tmp_B7fPAVYhts4 := view removeInteractionIfPresent: TSDraggableCanvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeRight_amp:5.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:5.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeRight_amp:5.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:5.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeRight_amp:5.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:5.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:5.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:5.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:5.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:5.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:5.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:5.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:5.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:5.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:5.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:5.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:5.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeRight_amp:5.21'.
	self
		assert: tmp_B7fPAVYhts4 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:5.1'.
	self
		assert: tmp_B7fPAVYhts4 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:5.2'.
	self
		assert: tmp_B7fPAVYhts4 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:5.3'.
	self
		assert: tmp_B7fPAVYhts4 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:5.4'.
	self
		assert: tmp_B7fPAVYhts4 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:5.5'.
	self
		assert: tmp_B7fPAVYhts4 color class
		equals: Color
		description: 'testDraggingModeRight_amp:5.6'.
	self
		assert: tmp_B7fPAVYhts4 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.7'.
	self
		assert: tmp_B7fPAVYhts4 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:5.8'.
	self
		assert: tmp_B7fPAVYhts4 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.9'.
	self
		assert: tmp_B7fPAVYhts4 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:5.10'.
	self
		assert: tmp_B7fPAVYhts4 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.11'.
	self
		assert: tmp_B7fPAVYhts4 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:5.12'.
	self
		assert: tmp_B7fPAVYhts4 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.13'.
	self
		assert: tmp_B7fPAVYhts4 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:5.14'.
	self
		assert: tmp_B7fPAVYhts4 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.15'.
	self
		assert: tmp_B7fPAVYhts4 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:5.16'.
	self
		assert: tmp_B7fPAVYhts4 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.17'.
	self
		assert: tmp_B7fPAVYhts4 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:5.18'.
	self
		assert: tmp_B7fPAVYhts4 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.19'.
	self
		assert: tmp_B7fPAVYhts4 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:5.20'.
	self
		assert: tmp_B7fPAVYhts4 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.21'.
	self
		assert: tmp_B7fPAVYhts4 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:5.22'.
	self
		assert: tmp_B7fPAVYhts4 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.23'.
	self
		assert: tmp_B7fPAVYhts4 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:5.24'.
	self
		assert: tmp_B7fPAVYhts4 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.25'.
	self
		assert: tmp_B7fPAVYhts4 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:5.26'.
	self
		assert: tmp_B7fPAVYhts4 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.27'.
	self
		assert: tmp_B7fPAVYhts4 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:5.28'.
	self
		assert: tmp_B7fPAVYhts4 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.29'.
	self
		assert: tmp_B7fPAVYhts4 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:5.30'.
	self
		assert: tmp_B7fPAVYhts4 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.31'.
	self
		assert: tmp_B7fPAVYhts4 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:5.32'.
	self
		assert: tmp_B7fPAVYhts4 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:5.33'.
	self
		assert: tmp_B7fPAVYhts4 morph
		equals: nil
		description: 'testDraggingModeRight_amp:5.34'.
	self
		assert: tmp_B7fPAVYhts4 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:5.35'.
	self
		assert: tmp_B7fPAVYhts4 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:5.36'.
	self
		assert: tmp_B7fPAVYhts4 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:5.37'.
	self
		assert: tmp_B7fPAVYhts4 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.38'.
	self
		assert: tmp_B7fPAVYhts4 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:5.39'.
	self
		assert: tmp_B7fPAVYhts4 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:5.40'.
	self
		assert: tmp_B7fPAVYhts4 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:5.41'.
	self
		assert: tmp_B7fPAVYhts4 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:5.42'.
	self
		assert: tmp_B7fPAVYhts4 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:5.43'.
	self
		assert: tmp_B7fPAVYhts4 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.44'.
	self
		assert: tmp_B7fPAVYhts4 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:5.45'.
	self
		assert: tmp_B7fPAVYhts4 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:5.46'.
	self
		assert: tmp_B7fPAVYhts4 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:5.47'.
	self
		assert: tmp_B7fPAVYhts4 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:5.48'.
	self
		assert: tmp_B7fPAVYhts4 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:5.49'.
	self
		assert: tmp_B7fPAVYhts4 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:5.50'.
	self
		assert: tmp_B7fPAVYhts4 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.51'.
	self
		assert: tmp_B7fPAVYhts4 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:5.52'.
	self
		assert: tmp_B7fPAVYhts4 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:5.53'.
	self
		assert: tmp_B7fPAVYhts4 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:5.54'.
	self
		assert: tmp_B7fPAVYhts4 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:5.55'.
	self
		assert: tmp_B7fPAVYhts4 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:5.56'.
	self
		assert: tmp_B7fPAVYhts4 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.57'.
	self
		assert: tmp_B7fPAVYhts4 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:5.58'.
	self
		assert: tmp_B7fPAVYhts4 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:5.59'.
	self
		assert: tmp_B7fPAVYhts4 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:5.60'.
	self
		assert: tmp_B7fPAVYhts4 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:5.61'.
	self
		assert: tmp_B7fPAVYhts4 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:5.62'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:5.63'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.64'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:5.65'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:5.66'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:5.67'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.68'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:5.69'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:5.70'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:5.71'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.72'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:5.73'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.74'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:5.75'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.76'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:5.77'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:5.78'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:5.79'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:5.80'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:5.81'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.82'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:5.83'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:5.84'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:5.85'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:5.86'.
	self
		assert: tmp_B7fPAVYhts4 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:5.87'.
	self
		assert: tmp_B7fPAVYhts4 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:5.88'.
	self
		assert: tmp_B7fPAVYhts4 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.89'.
	self
		assert: tmp_B7fPAVYhts4 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:5.90'.
	self
		assert: tmp_B7fPAVYhts4 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:5.91'.
	self
		assert: tmp_B7fPAVYhts4 isShape
		equals: false
		description: 'testDraggingModeRight_amp:5.92'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:5.93'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.94'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:5.95'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:5.96'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:5.97'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.98'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:5.99'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:5.100'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:5.101'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.102'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:5.103'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.104'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:5.105'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.106'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:5.107'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:5.108'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:5.109'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:5.110'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:5.111'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.112'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:5.113'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:5.114'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:5.115'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.116'.
	self
		assert: tmp_B7fPAVYhts4 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:5.117'.
	self
		assert: tmp_B7fPAVYhts4 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:5.118'.
	self
		assert: tmp_B7fPAVYhts4 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:5.119'.
	self
		assert: tmp_B7fPAVYhts4 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:5.120'.
	self
		assert: tmp_B7fPAVYhts4 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.121'.
	self
		assert: tmp_B7fPAVYhts4 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:5.122'.
	self
		assert: tmp_B7fPAVYhts4 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:5.123'.
	self
		assert: tmp_B7fPAVYhts4 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:5.124'.
	self
		assert: tmp_B7fPAVYhts4 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:5.125'.
	self
		assert: tmp_B7fPAVYhts4 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:5.126'.
	self
		assert: tmp_B7fPAVYhts4 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.127'.
	self
		assert: tmp_B7fPAVYhts4 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:5.128'.
	self
		assert: tmp_B7fPAVYhts4 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:5.129'.
	self
		assert: tmp_B7fPAVYhts4 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:5.130'.
	self
		assert: tmp_B7fPAVYhts4 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.131'.
	self
		assert: tmp_B7fPAVYhts4 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:5.132'.
	self
		assert: tmp_B7fPAVYhts4 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:5.133'.
	self
		assert: tmp_B7fPAVYhts4 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:5.134'.
	self
		assert: tmp_B7fPAVYhts4 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:5.135'.
	self
		assert: tmp_B7fPAVYhts4 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.136'.
	self
		assert: tmp_B7fPAVYhts4 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:5.137'.
	self
		assert: tmp_B7fPAVYhts4 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:5.138'.
	self
		assert: tmp_B7fPAVYhts4 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:5.139'.
	self
		assert: tmp_B7fPAVYhts4 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:5.140'.
	self
		assert: tmp_B7fPAVYhts4 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:5.141'.
	self
		assert: tmp_B7fPAVYhts4 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:5.142'.
	self
		assert: tmp_B7fPAVYhts4 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:5.143'.
	self
		assert: tmp_B7fPAVYhts4 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:5.144'.
	self
		assert: tmp_B7fPAVYhts4 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:5.145'.
	self
		assert: tmp_B7fPAVYhts4 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:5.146'.
	self
		assert: tmp_B7fPAVYhts4 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:5.147'.
	view removeInteractionIfPresent: TSDraggableCanvas.
	tmp_qDMRxKfGpW17 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeRight_amp:7.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:7.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeRight_amp:7.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:7.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeRight_amp:7.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:7.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:7.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:7.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:7.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:7.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:7.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:7.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:7.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:7.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:7.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:7.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:7.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeRight_amp:7.21'.
	self
		assert: tmp_qDMRxKfGpW17 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:7.1'.
	self
		assert: tmp_qDMRxKfGpW17 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:7.2'.
	self
		assert: tmp_qDMRxKfGpW17 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:7.3'.
	self
		assert: tmp_qDMRxKfGpW17 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:7.4'.
	self
		assert: tmp_qDMRxKfGpW17 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:7.5'.
	self
		assert: tmp_qDMRxKfGpW17 color class
		equals: Color
		description: 'testDraggingModeRight_amp:7.6'.
	self
		assert: tmp_qDMRxKfGpW17 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.7'.
	self
		assert: tmp_qDMRxKfGpW17 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:7.8'.
	self
		assert: tmp_qDMRxKfGpW17 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.9'.
	self
		assert: tmp_qDMRxKfGpW17 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:7.10'.
	self
		assert: tmp_qDMRxKfGpW17 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.11'.
	self
		assert: tmp_qDMRxKfGpW17 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:7.12'.
	self
		assert: tmp_qDMRxKfGpW17 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.13'.
	self
		assert: tmp_qDMRxKfGpW17 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:7.14'.
	self
		assert: tmp_qDMRxKfGpW17 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.15'.
	self
		assert: tmp_qDMRxKfGpW17 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:7.16'.
	self
		assert: tmp_qDMRxKfGpW17 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.17'.
	self
		assert: tmp_qDMRxKfGpW17 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:7.18'.
	self
		assert: tmp_qDMRxKfGpW17 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.19'.
	self
		assert: tmp_qDMRxKfGpW17 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:7.20'.
	self
		assert: tmp_qDMRxKfGpW17 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.21'.
	self
		assert: tmp_qDMRxKfGpW17 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:7.22'.
	self
		assert: tmp_qDMRxKfGpW17 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.23'.
	self
		assert: tmp_qDMRxKfGpW17 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:7.24'.
	self
		assert: tmp_qDMRxKfGpW17 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.25'.
	self
		assert: tmp_qDMRxKfGpW17 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:7.26'.
	self
		assert: tmp_qDMRxKfGpW17 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.27'.
	self
		assert: tmp_qDMRxKfGpW17 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:7.28'.
	self
		assert: tmp_qDMRxKfGpW17 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.29'.
	self
		assert: tmp_qDMRxKfGpW17 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:7.30'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.31'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:7.32'.
	self
		assert: tmp_qDMRxKfGpW17 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:7.33'.
	self
		assert: tmp_qDMRxKfGpW17 morph
		equals: nil
		description: 'testDraggingModeRight_amp:7.34'.
	self
		assert: tmp_qDMRxKfGpW17 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:7.35'.
	self
		assert: tmp_qDMRxKfGpW17 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:7.36'.
	self
		assert: tmp_qDMRxKfGpW17 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:7.37'.
	self
		assert: tmp_qDMRxKfGpW17 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.38'.
	self
		assert: tmp_qDMRxKfGpW17 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:7.39'.
	self
		assert: tmp_qDMRxKfGpW17 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:7.40'.
	self
		assert: tmp_qDMRxKfGpW17 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:7.41'.
	self
		assert: tmp_qDMRxKfGpW17 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:7.42'.
	self
		assert: tmp_qDMRxKfGpW17 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:7.43'.
	self
		assert: tmp_qDMRxKfGpW17 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.44'.
	self
		assert: tmp_qDMRxKfGpW17 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:7.45'.
	self
		assert: tmp_qDMRxKfGpW17 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:7.46'.
	self
		assert: tmp_qDMRxKfGpW17 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:7.47'.
	self
		assert: tmp_qDMRxKfGpW17 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:7.48'.
	self
		assert: tmp_qDMRxKfGpW17 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:7.49'.
	self
		assert: tmp_qDMRxKfGpW17 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:7.50'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.51'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:7.52'.
	self
		assert: tmp_qDMRxKfGpW17 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:7.53'.
	self
		assert: tmp_qDMRxKfGpW17 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:7.54'.
	self
		assert: tmp_qDMRxKfGpW17 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:7.55'.
	self
		assert: tmp_qDMRxKfGpW17 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:7.56'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.57'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:7.58'.
	self
		assert: tmp_qDMRxKfGpW17 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:7.59'.
	self
		assert: tmp_qDMRxKfGpW17 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:7.60'.
	self
		assert: tmp_qDMRxKfGpW17 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:7.61'.
	self
		assert: tmp_qDMRxKfGpW17 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:7.62'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:7.63'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.64'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:7.65'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:7.66'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:7.67'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.68'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:7.69'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:7.70'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:7.71'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.72'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:7.73'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.74'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:7.75'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.76'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:7.77'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:7.78'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:7.79'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:7.80'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:7.81'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.82'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:7.83'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:7.84'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:7.85'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:7.86'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:7.87'.
	self
		assert: tmp_qDMRxKfGpW17 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:7.88'.
	self
		assert: tmp_qDMRxKfGpW17 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.89'.
	self
		assert: tmp_qDMRxKfGpW17 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:7.90'.
	self
		assert: tmp_qDMRxKfGpW17 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:7.91'.
	self
		assert: tmp_qDMRxKfGpW17 isShape
		equals: false
		description: 'testDraggingModeRight_amp:7.92'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:7.93'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.94'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:7.95'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:7.96'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:7.97'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.98'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:7.99'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:7.100'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:7.101'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.102'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:7.103'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.104'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:7.105'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.106'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:7.107'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:7.108'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:7.109'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:7.110'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:7.111'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.112'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:7.113'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:7.114'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:7.115'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.116'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:7.117'.
	self
		assert: tmp_qDMRxKfGpW17 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:7.118'.
	self
		assert: tmp_qDMRxKfGpW17 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:7.119'.
	self
		assert: tmp_qDMRxKfGpW17 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:7.120'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.121'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:7.122'.
	self
		assert: tmp_qDMRxKfGpW17 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:7.123'.
	self
		assert: tmp_qDMRxKfGpW17 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:7.124'.
	self
		assert: tmp_qDMRxKfGpW17 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:7.125'.
	self
		assert: tmp_qDMRxKfGpW17 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:7.126'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.127'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:7.128'.
	self
		assert: tmp_qDMRxKfGpW17 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:7.129'.
	self
		assert: tmp_qDMRxKfGpW17 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:7.130'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.131'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:7.132'.
	self
		assert: tmp_qDMRxKfGpW17 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:7.133'.
	self
		assert: tmp_qDMRxKfGpW17 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:7.134'.
	self
		assert: tmp_qDMRxKfGpW17 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:7.135'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.136'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:7.137'.
	self
		assert: tmp_qDMRxKfGpW17 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:7.138'.
	self
		assert: tmp_qDMRxKfGpW17 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:7.139'.
	self
		assert: tmp_qDMRxKfGpW17 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:7.140'.
	self
		assert: tmp_qDMRxKfGpW17 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:7.141'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:7.142'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:7.143'.
	self
		assert: tmp_qDMRxKfGpW17 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:7.144'.
	self
		assert: tmp_qDMRxKfGpW17 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:7.145'.
	self
		assert: tmp_qDMRxKfGpW17 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:7.146'.
	self
		assert: tmp_qDMRxKfGpW17 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:7.147'.
	tmp_qDMRxKfGpW17 announce: (TSMouseDragEnd new canvas: view canvas).
	self
		assert: tmp_qDMRxKfGpW17 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:8.1'.
	self
		assert: tmp_qDMRxKfGpW17 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:8.2'.
	self
		assert: tmp_qDMRxKfGpW17 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:8.3'.
	self
		assert: tmp_qDMRxKfGpW17 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:8.4'.
	self
		assert: tmp_qDMRxKfGpW17 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:8.5'.
	self
		assert: tmp_qDMRxKfGpW17 color class
		equals: Color
		description: 'testDraggingModeRight_amp:8.6'.
	self
		assert: tmp_qDMRxKfGpW17 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.7'.
	self
		assert: tmp_qDMRxKfGpW17 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:8.8'.
	self
		assert: tmp_qDMRxKfGpW17 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.9'.
	self
		assert: tmp_qDMRxKfGpW17 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:8.10'.
	self
		assert: tmp_qDMRxKfGpW17 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.11'.
	self
		assert: tmp_qDMRxKfGpW17 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:8.12'.
	self
		assert: tmp_qDMRxKfGpW17 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.13'.
	self
		assert: tmp_qDMRxKfGpW17 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:8.14'.
	self
		assert: tmp_qDMRxKfGpW17 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.15'.
	self
		assert: tmp_qDMRxKfGpW17 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:8.16'.
	self
		assert: tmp_qDMRxKfGpW17 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.17'.
	self
		assert: tmp_qDMRxKfGpW17 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:8.18'.
	self
		assert: tmp_qDMRxKfGpW17 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.19'.
	self
		assert: tmp_qDMRxKfGpW17 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:8.20'.
	self
		assert: tmp_qDMRxKfGpW17 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.21'.
	self
		assert: tmp_qDMRxKfGpW17 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:8.22'.
	self
		assert: tmp_qDMRxKfGpW17 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.23'.
	self
		assert: tmp_qDMRxKfGpW17 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:8.24'.
	self
		assert: tmp_qDMRxKfGpW17 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.25'.
	self
		assert: tmp_qDMRxKfGpW17 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:8.26'.
	self
		assert: tmp_qDMRxKfGpW17 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.27'.
	self
		assert: tmp_qDMRxKfGpW17 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:8.28'.
	self
		assert: tmp_qDMRxKfGpW17 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.29'.
	self
		assert: tmp_qDMRxKfGpW17 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:8.30'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.31'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:8.32'.
	self
		assert: tmp_qDMRxKfGpW17 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:8.33'.
	self
		assert: tmp_qDMRxKfGpW17 morph
		equals: nil
		description: 'testDraggingModeRight_amp:8.34'.
	self
		assert: tmp_qDMRxKfGpW17 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:8.35'.
	self
		assert: tmp_qDMRxKfGpW17 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:8.36'.
	self
		assert: tmp_qDMRxKfGpW17 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:8.37'.
	self
		assert: tmp_qDMRxKfGpW17 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.38'.
	self
		assert: tmp_qDMRxKfGpW17 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:8.39'.
	self
		assert: tmp_qDMRxKfGpW17 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:8.40'.
	self
		assert: tmp_qDMRxKfGpW17 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:8.41'.
	self
		assert: tmp_qDMRxKfGpW17 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:8.42'.
	self
		assert: tmp_qDMRxKfGpW17 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:8.43'.
	self
		assert: tmp_qDMRxKfGpW17 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.44'.
	self
		assert: tmp_qDMRxKfGpW17 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:8.45'.
	self
		assert: tmp_qDMRxKfGpW17 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:8.46'.
	self
		assert: tmp_qDMRxKfGpW17 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:8.47'.
	self
		assert: tmp_qDMRxKfGpW17 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:8.48'.
	self
		assert: tmp_qDMRxKfGpW17 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:8.49'.
	self
		assert: tmp_qDMRxKfGpW17 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:8.50'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.51'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:8.52'.
	self
		assert: tmp_qDMRxKfGpW17 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:8.53'.
	self
		assert: tmp_qDMRxKfGpW17 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:8.54'.
	self
		assert: tmp_qDMRxKfGpW17 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:8.55'.
	self
		assert: tmp_qDMRxKfGpW17 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:8.56'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.57'.
	self
		assert: tmp_qDMRxKfGpW17 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:8.58'.
	self
		assert: tmp_qDMRxKfGpW17 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:8.59'.
	self
		assert: tmp_qDMRxKfGpW17 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:8.60'.
	self
		assert: tmp_qDMRxKfGpW17 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:8.61'.
	self
		assert: tmp_qDMRxKfGpW17 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:8.62'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:8.63'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.64'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:8.65'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:8.66'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:8.67'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.68'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:8.69'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:8.70'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:8.71'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.72'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:8.73'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.74'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:8.75'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.76'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:8.77'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:8.78'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:8.79'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:8.80'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:8.81'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.82'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:8.83'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:8.84'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:8.85'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:8.86'.
	self
		assert: tmp_qDMRxKfGpW17 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:8.87'.
	self
		assert: tmp_qDMRxKfGpW17 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:8.88'.
	self
		assert: tmp_qDMRxKfGpW17 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.89'.
	self
		assert: tmp_qDMRxKfGpW17 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:8.90'.
	self
		assert: tmp_qDMRxKfGpW17 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:8.91'.
	self
		assert: tmp_qDMRxKfGpW17 isShape
		equals: false
		description: 'testDraggingModeRight_amp:8.92'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:8.93'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.94'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:8.95'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:8.96'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:8.97'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.98'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:8.99'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:8.100'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:8.101'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.102'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:8.103'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.104'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:8.105'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.106'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:8.107'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:8.108'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:8.109'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:8.110'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:8.111'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.112'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:8.113'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:8.114'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:8.115'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.116'.
	self
		assert: tmp_qDMRxKfGpW17 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:8.117'.
	self
		assert: tmp_qDMRxKfGpW17 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:8.118'.
	self
		assert: tmp_qDMRxKfGpW17 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:8.119'.
	self
		assert: tmp_qDMRxKfGpW17 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:8.120'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.121'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:8.122'.
	self
		assert: tmp_qDMRxKfGpW17 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:8.123'.
	self
		assert: tmp_qDMRxKfGpW17 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:8.124'.
	self
		assert: tmp_qDMRxKfGpW17 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:8.125'.
	self
		assert: tmp_qDMRxKfGpW17 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:8.126'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.127'.
	self
		assert: tmp_qDMRxKfGpW17 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:8.128'.
	self
		assert: tmp_qDMRxKfGpW17 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:8.129'.
	self
		assert: tmp_qDMRxKfGpW17 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:8.130'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.131'.
	self
		assert: tmp_qDMRxKfGpW17 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:8.132'.
	self
		assert: tmp_qDMRxKfGpW17 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:8.133'.
	self
		assert: tmp_qDMRxKfGpW17 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:8.134'.
	self
		assert: tmp_qDMRxKfGpW17 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:8.135'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.136'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:8.137'.
	self
		assert: tmp_qDMRxKfGpW17 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:8.138'.
	self
		assert: tmp_qDMRxKfGpW17 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:8.139'.
	self
		assert: tmp_qDMRxKfGpW17 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:8.140'.
	self
		assert: tmp_qDMRxKfGpW17 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:8.141'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:8.142'.
	self
		assert: tmp_qDMRxKfGpW17 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:8.143'.
	self
		assert: tmp_qDMRxKfGpW17 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:8.144'.
	self
		assert: tmp_qDMRxKfGpW17 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:8.145'.
	self
		assert: tmp_qDMRxKfGpW17 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:8.146'.
	self
		assert: tmp_qDMRxKfGpW17 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:8.147'.
	tmp_9NcGyC2ZSR11 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeRight_amp:9.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:9.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeRight_amp:9.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:9.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeRight_amp:9.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:9.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:9.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:9.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:9.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:9.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:9.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:9.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:9.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:9.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:9.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:9.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:9.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeRight_amp:9.21'.
	self
		assert: tmp_9NcGyC2ZSR11 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:9.1'.
	self
		assert: tmp_9NcGyC2ZSR11 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:9.2'.
	self
		assert: tmp_9NcGyC2ZSR11 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:9.3'.
	self
		assert: tmp_9NcGyC2ZSR11 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:9.4'.
	self
		assert: tmp_9NcGyC2ZSR11 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:9.5'.
	self
		assert: tmp_9NcGyC2ZSR11 color class
		equals: Color
		description: 'testDraggingModeRight_amp:9.6'.
	self
		assert: tmp_9NcGyC2ZSR11 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.7'.
	self
		assert: tmp_9NcGyC2ZSR11 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:9.8'.
	self
		assert: tmp_9NcGyC2ZSR11 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.9'.
	self
		assert: tmp_9NcGyC2ZSR11 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:9.10'.
	self
		assert: tmp_9NcGyC2ZSR11 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.11'.
	self
		assert: tmp_9NcGyC2ZSR11 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:9.12'.
	self
		assert: tmp_9NcGyC2ZSR11 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.13'.
	self
		assert: tmp_9NcGyC2ZSR11 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:9.14'.
	self
		assert: tmp_9NcGyC2ZSR11 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.15'.
	self
		assert: tmp_9NcGyC2ZSR11 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:9.16'.
	self
		assert: tmp_9NcGyC2ZSR11 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.17'.
	self
		assert: tmp_9NcGyC2ZSR11 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:9.18'.
	self
		assert: tmp_9NcGyC2ZSR11 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.19'.
	self
		assert: tmp_9NcGyC2ZSR11 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:9.20'.
	self
		assert: tmp_9NcGyC2ZSR11 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.21'.
	self
		assert: tmp_9NcGyC2ZSR11 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:9.22'.
	self
		assert: tmp_9NcGyC2ZSR11 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.23'.
	self
		assert: tmp_9NcGyC2ZSR11 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:9.24'.
	self
		assert: tmp_9NcGyC2ZSR11 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.25'.
	self
		assert: tmp_9NcGyC2ZSR11 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:9.26'.
	self
		assert: tmp_9NcGyC2ZSR11 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.27'.
	self
		assert: tmp_9NcGyC2ZSR11 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:9.28'.
	self
		assert: tmp_9NcGyC2ZSR11 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.29'.
	self
		assert: tmp_9NcGyC2ZSR11 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:9.30'.
	self
		assert: tmp_9NcGyC2ZSR11 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.31'.
	self
		assert: tmp_9NcGyC2ZSR11 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:9.32'.
	self
		assert: tmp_9NcGyC2ZSR11 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:9.33'.
	self
		assert: tmp_9NcGyC2ZSR11 morph
		equals: nil
		description: 'testDraggingModeRight_amp:9.34'.
	self
		assert: tmp_9NcGyC2ZSR11 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:9.35'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:9.36'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:9.37'.
	self
		assert: tmp_9NcGyC2ZSR11 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.38'.
	self
		assert: tmp_9NcGyC2ZSR11 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:9.39'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:9.40'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:9.41'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:9.42'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:9.43'.
	self
		assert: tmp_9NcGyC2ZSR11 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.44'.
	self
		assert: tmp_9NcGyC2ZSR11 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:9.45'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:9.46'.
	self
		assert: tmp_9NcGyC2ZSR11 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:9.47'.
	self
		assert: tmp_9NcGyC2ZSR11 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:9.48'.
	self
		assert: tmp_9NcGyC2ZSR11 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:9.49'.
	self
		assert: tmp_9NcGyC2ZSR11 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:9.50'.
	self
		assert: tmp_9NcGyC2ZSR11 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.51'.
	self
		assert: tmp_9NcGyC2ZSR11 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:9.52'.
	self
		assert: tmp_9NcGyC2ZSR11 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:9.53'.
	self
		assert: tmp_9NcGyC2ZSR11 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:9.54'.
	self
		assert: tmp_9NcGyC2ZSR11 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:9.55'.
	self
		assert: tmp_9NcGyC2ZSR11 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:9.56'.
	self
		assert: tmp_9NcGyC2ZSR11 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.57'.
	self
		assert: tmp_9NcGyC2ZSR11 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:9.58'.
	self
		assert: tmp_9NcGyC2ZSR11 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:9.59'.
	self
		assert: tmp_9NcGyC2ZSR11 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:9.60'.
	self
		assert: tmp_9NcGyC2ZSR11 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:9.61'.
	self
		assert: tmp_9NcGyC2ZSR11 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:9.62'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:9.63'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.64'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:9.65'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:9.66'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:9.67'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.68'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:9.69'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:9.70'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:9.71'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.72'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:9.73'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.74'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:9.75'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.76'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:9.77'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:9.78'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:9.79'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:9.80'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:9.81'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.82'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:9.83'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:9.84'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:9.85'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:9.86'.
	self
		assert: tmp_9NcGyC2ZSR11 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:9.87'.
	self
		assert: tmp_9NcGyC2ZSR11 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:9.88'.
	self
		assert: tmp_9NcGyC2ZSR11 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.89'.
	self
		assert: tmp_9NcGyC2ZSR11 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:9.90'.
	self
		assert: tmp_9NcGyC2ZSR11 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:9.91'.
	self
		assert: tmp_9NcGyC2ZSR11 isShape
		equals: false
		description: 'testDraggingModeRight_amp:9.92'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:9.93'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.94'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:9.95'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:9.96'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:9.97'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.98'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:9.99'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:9.100'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:9.101'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.102'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:9.103'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.104'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:9.105'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.106'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:9.107'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:9.108'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:9.109'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:9.110'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:9.111'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.112'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:9.113'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:9.114'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:9.115'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.116'.
	self
		assert: tmp_9NcGyC2ZSR11 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:9.117'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:9.118'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:9.119'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:9.120'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.121'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:9.122'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:9.123'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:9.124'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:9.125'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:9.126'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.127'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:9.128'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:9.129'.
	self
		assert: tmp_9NcGyC2ZSR11 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:9.130'.
	self
		assert: tmp_9NcGyC2ZSR11 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.131'.
	self
		assert: tmp_9NcGyC2ZSR11 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:9.132'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:9.133'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:9.134'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:9.135'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.136'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:9.137'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:9.138'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:9.139'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:9.140'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:9.141'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:9.142'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:9.143'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:9.144'.
	self
		assert: tmp_9NcGyC2ZSR11 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:9.145'.
	self
		assert: tmp_9NcGyC2ZSR11 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:9.146'.
	self
		assert: tmp_9NcGyC2ZSR11 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:9.147'.
	tmp_LlklpIsjze13 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingModeRight_amp:10.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:10.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingModeRight_amp:10.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:10.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingModeRight_amp:10.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:10.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:10.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:10.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:10.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:10.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:10.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:10.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:10.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:10.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:10.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:10.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:10.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingModeRight_amp:10.21'.
	self
		assert: tmp_LlklpIsjze13 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:10.1'.
	self
		assert: tmp_LlklpIsjze13 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:10.2'.
	self
		assert: tmp_LlklpIsjze13 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:10.3'.
	self
		assert: tmp_LlklpIsjze13 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:10.4'.
	self
		assert: tmp_LlklpIsjze13 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:10.5'.
	self
		assert: tmp_LlklpIsjze13 color class
		equals: Color
		description: 'testDraggingModeRight_amp:10.6'.
	self
		assert: tmp_LlklpIsjze13 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.7'.
	self
		assert: tmp_LlklpIsjze13 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:10.8'.
	self
		assert: tmp_LlklpIsjze13 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.9'.
	self
		assert: tmp_LlklpIsjze13 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:10.10'.
	self
		assert: tmp_LlklpIsjze13 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.11'.
	self
		assert: tmp_LlklpIsjze13 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:10.12'.
	self
		assert: tmp_LlklpIsjze13 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.13'.
	self
		assert: tmp_LlklpIsjze13 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:10.14'.
	self
		assert: tmp_LlklpIsjze13 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.15'.
	self
		assert: tmp_LlklpIsjze13 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:10.16'.
	self
		assert: tmp_LlklpIsjze13 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.17'.
	self
		assert: tmp_LlklpIsjze13 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:10.18'.
	self
		assert: tmp_LlklpIsjze13 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.19'.
	self
		assert: tmp_LlklpIsjze13 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:10.20'.
	self
		assert: tmp_LlklpIsjze13 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.21'.
	self
		assert: tmp_LlklpIsjze13 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:10.22'.
	self
		assert: tmp_LlklpIsjze13 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.23'.
	self
		assert: tmp_LlklpIsjze13 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:10.24'.
	self
		assert: tmp_LlklpIsjze13 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.25'.
	self
		assert: tmp_LlklpIsjze13 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:10.26'.
	self
		assert: tmp_LlklpIsjze13 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.27'.
	self
		assert: tmp_LlklpIsjze13 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:10.28'.
	self
		assert: tmp_LlklpIsjze13 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.29'.
	self
		assert: tmp_LlklpIsjze13 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:10.30'.
	self
		assert: tmp_LlklpIsjze13 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.31'.
	self
		assert: tmp_LlklpIsjze13 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:10.32'.
	self
		assert: tmp_LlklpIsjze13 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:10.33'.
	self
		assert: tmp_LlklpIsjze13 morph
		equals: nil
		description: 'testDraggingModeRight_amp:10.34'.
	self
		assert: tmp_LlklpIsjze13 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:10.35'.
	self
		assert: tmp_LlklpIsjze13 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:10.36'.
	self
		assert: tmp_LlklpIsjze13 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:10.37'.
	self
		assert: tmp_LlklpIsjze13 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.38'.
	self
		assert: tmp_LlklpIsjze13 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:10.39'.
	self
		assert: tmp_LlklpIsjze13 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:10.40'.
	self
		assert: tmp_LlklpIsjze13 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:10.41'.
	self
		assert: tmp_LlklpIsjze13 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:10.42'.
	self
		assert: tmp_LlklpIsjze13 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:10.43'.
	self
		assert: tmp_LlklpIsjze13 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.44'.
	self
		assert: tmp_LlklpIsjze13 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:10.45'.
	self
		assert: tmp_LlklpIsjze13 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:10.46'.
	self
		assert: tmp_LlklpIsjze13 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:10.47'.
	self
		assert: tmp_LlklpIsjze13 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:10.48'.
	self
		assert: tmp_LlklpIsjze13 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:10.49'.
	self
		assert: tmp_LlklpIsjze13 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:10.50'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.51'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:10.52'.
	self
		assert: tmp_LlklpIsjze13 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:10.53'.
	self
		assert: tmp_LlklpIsjze13 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:10.54'.
	self
		assert: tmp_LlklpIsjze13 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:10.55'.
	self
		assert: tmp_LlklpIsjze13 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:10.56'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.57'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:10.58'.
	self
		assert: tmp_LlklpIsjze13 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:10.59'.
	self
		assert: tmp_LlklpIsjze13 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:10.60'.
	self
		assert: tmp_LlklpIsjze13 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:10.61'.
	self
		assert: tmp_LlklpIsjze13 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:10.62'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:10.63'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.64'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:10.65'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:10.66'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:10.67'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.68'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:10.69'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:10.70'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:10.71'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.72'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:10.73'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.74'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:10.75'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.76'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:10.77'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:10.78'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:10.79'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:10.80'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:10.81'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.82'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:10.83'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:10.84'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:10.85'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:10.86'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:10.87'.
	self
		assert: tmp_LlklpIsjze13 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:10.88'.
	self
		assert: tmp_LlklpIsjze13 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.89'.
	self
		assert: tmp_LlklpIsjze13 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:10.90'.
	self
		assert: tmp_LlklpIsjze13 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:10.91'.
	self
		assert: tmp_LlklpIsjze13 isShape
		equals: false
		description: 'testDraggingModeRight_amp:10.92'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:10.93'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.94'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:10.95'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:10.96'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:10.97'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.98'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:10.99'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:10.100'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:10.101'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.102'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:10.103'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.104'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:10.105'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.106'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:10.107'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:10.108'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:10.109'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:10.110'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:10.111'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.112'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:10.113'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:10.114'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:10.115'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.116'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:10.117'.
	self
		assert: tmp_LlklpIsjze13 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:10.118'.
	self
		assert: tmp_LlklpIsjze13 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:10.119'.
	self
		assert: tmp_LlklpIsjze13 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:10.120'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.121'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:10.122'.
	self
		assert: tmp_LlklpIsjze13 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:10.123'.
	self
		assert: tmp_LlklpIsjze13 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:10.124'.
	self
		assert: tmp_LlklpIsjze13 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:10.125'.
	self
		assert: tmp_LlklpIsjze13 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:10.126'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.127'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:10.128'.
	self
		assert: tmp_LlklpIsjze13 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:10.129'.
	self
		assert: tmp_LlklpIsjze13 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:10.130'.
	self
		assert: tmp_LlklpIsjze13 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.131'.
	self
		assert: tmp_LlklpIsjze13 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:10.132'.
	self
		assert: tmp_LlklpIsjze13 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:10.133'.
	self
		assert: tmp_LlklpIsjze13 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:10.134'.
	self
		assert: tmp_LlklpIsjze13 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:10.135'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.136'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:10.137'.
	self
		assert: tmp_LlklpIsjze13 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:10.138'.
	self
		assert: tmp_LlklpIsjze13 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:10.139'.
	self
		assert: tmp_LlklpIsjze13 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:10.140'.
	self
		assert: tmp_LlklpIsjze13 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:10.141'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:10.142'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:10.143'.
	self
		assert: tmp_LlklpIsjze13 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:10.144'.
	self
		assert: tmp_LlklpIsjze13 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:10.145'.
	self
		assert: tmp_LlklpIsjze13 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:10.146'.
	self
		assert: tmp_LlklpIsjze13 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:10.147'.
	tmp_LlklpIsjze13
		announce: (TSMouseRightDragStart new canvas: view canvas).
	self
		assert: tmp_LlklpIsjze13 class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:11.1'.
	self
		assert: tmp_LlklpIsjze13 fixedShapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:11.2'.
	self
		assert: tmp_LlklpIsjze13 fixedShapes size
		equals: 0
		description: 'testDraggingModeRight_amp:11.3'.
	self
		assert: tmp_LlklpIsjze13 showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:11.4'.
	self
		assert: tmp_LlklpIsjze13 showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:11.5'.
	self
		assert: tmp_LlklpIsjze13 color class
		equals: Color
		description: 'testDraggingModeRight_amp:11.6'.
	self
		assert: tmp_LlklpIsjze13 color alpha class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.7'.
	self
		assert: tmp_LlklpIsjze13 color alpha
		equals: 1.0
		description: 'testDraggingModeRight_amp:11.8'.
	self
		assert: tmp_LlklpIsjze13 color red class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.9'.
	self
		assert: tmp_LlklpIsjze13 color red
		equals: 1.0
		description: 'testDraggingModeRight_amp:11.10'.
	self
		assert: tmp_LlklpIsjze13 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.11'.
	self
		assert: tmp_LlklpIsjze13 color hsvSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:11.12'.
	self
		assert: tmp_LlklpIsjze13 color brightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.13'.
	self
		assert: tmp_LlklpIsjze13 color brightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:11.14'.
	self
		assert: tmp_LlklpIsjze13 color hue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.15'.
	self
		assert: tmp_LlklpIsjze13 color hue
		equals: 0.0
		description: 'testDraggingModeRight_amp:11.16'.
	self
		assert: tmp_LlklpIsjze13 color green class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.17'.
	self
		assert: tmp_LlklpIsjze13 color green
		equals: 1.0
		description: 'testDraggingModeRight_amp:11.18'.
	self
		assert: tmp_LlklpIsjze13 color chroma class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.19'.
	self
		assert: tmp_LlklpIsjze13 color chroma
		equals: 0.0
		description: 'testDraggingModeRight_amp:11.20'.
	self
		assert: tmp_LlklpIsjze13 color lightness class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.21'.
	self
		assert: tmp_LlklpIsjze13 color lightness
		equals: 1.0
		description: 'testDraggingModeRight_amp:11.22'.
	self
		assert: tmp_LlklpIsjze13 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.23'.
	self
		assert: tmp_LlklpIsjze13 color hslSaturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:11.24'.
	self
		assert: tmp_LlklpIsjze13 color saturation class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.25'.
	self
		assert: tmp_LlklpIsjze13 color saturation
		equals: 0.0
		description: 'testDraggingModeRight_amp:11.26'.
	self
		assert: tmp_LlklpIsjze13 color luminance class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.27'.
	self
		assert: tmp_LlklpIsjze13 color luminance
		equals: 1.0
		description: 'testDraggingModeRight_amp:11.28'.
	self
		assert: tmp_LlklpIsjze13 color blue class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.29'.
	self
		assert: tmp_LlklpIsjze13 color blue
		equals: 1.0
		description: 'testDraggingModeRight_amp:11.30'.
	self
		assert: tmp_LlklpIsjze13 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.31'.
	self
		assert: tmp_LlklpIsjze13 numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:11.32'.
	self
		assert: tmp_LlklpIsjze13 morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:11.33'.
	self
		assert: tmp_LlklpIsjze13 morph
		equals: nil
		description: 'testDraggingModeRight_amp:11.34'.
	self
		assert: tmp_LlklpIsjze13 extent class
		equals: Point
		description: 'testDraggingModeRight_amp:11.35'.
	self
		assert: tmp_LlklpIsjze13 extent isZero class
		equals: False
		description: 'testDraggingModeRight_amp:11.36'.
	self
		assert: tmp_LlklpIsjze13 extent isZero
		equals: false
		description: 'testDraggingModeRight_amp:11.37'.
	self
		assert: tmp_LlklpIsjze13 extent y class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.38'.
	self
		assert: tmp_LlklpIsjze13 extent y
		equals: 500
		description: 'testDraggingModeRight_amp:11.39'.
	self
		assert: tmp_LlklpIsjze13 extent isFloatPoint class
		equals: False
		description: 'testDraggingModeRight_amp:11.40'.
	self
		assert: tmp_LlklpIsjze13 extent isFloatPoint
		equals: false
		description: 'testDraggingModeRight_amp:11.41'.
	self
		assert: tmp_LlklpIsjze13 extent isIntegerPoint class
		equals: True
		description: 'testDraggingModeRight_amp:11.42'.
	self
		assert: tmp_LlklpIsjze13 extent isIntegerPoint
		equals: true
		description: 'testDraggingModeRight_amp:11.43'.
	self
		assert: tmp_LlklpIsjze13 extent x class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.44'.
	self
		assert: tmp_LlklpIsjze13 extent x
		equals: 500
		description: 'testDraggingModeRight_amp:11.45'.
	self
		assert: tmp_LlklpIsjze13 extent isPoint class
		equals: True
		description: 'testDraggingModeRight_amp:11.46'.
	self
		assert: tmp_LlklpIsjze13 extent isPoint
		equals: true
		description: 'testDraggingModeRight_amp:11.47'.
	self
		assert: tmp_LlklpIsjze13 parent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:11.48'.
	self
		assert: tmp_LlklpIsjze13 parent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:11.49'.
	self
		assert: tmp_LlklpIsjze13 parent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:11.50'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.51'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:11.52'.
	self
		assert: tmp_LlklpIsjze13 parent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:11.53'.
	self
		assert: tmp_LlklpIsjze13 parent morph
		equals: nil
		description: 'testDraggingModeRight_amp:11.54'.
	self
		assert: tmp_LlklpIsjze13 parent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:11.55'.
	self
		assert: tmp_LlklpIsjze13 parent isShape
		equals: false
		description: 'testDraggingModeRight_amp:11.56'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.57'.
	self
		assert: tmp_LlklpIsjze13 parent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:11.58'.
	self
		assert: tmp_LlklpIsjze13 parent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:11.59'.
	self
		assert: tmp_LlklpIsjze13 parent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:11.60'.
	self
		assert: tmp_LlklpIsjze13 shapes class
		equals: TSGroup
		description: 'testDraggingModeRight_amp:11.61'.
	self
		assert: tmp_LlklpIsjze13 shapes size
		equals: 1
		description: 'testDraggingModeRight_amp:11.62'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:11.63'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.64'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingModeRight_amp:11.65'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:11.66'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:11.67'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.68'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingModeRight_amp:11.69'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:11.70'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:11.71'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.72'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingModeRight_amp:11.73'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.74'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingModeRight_amp:11.75'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.76'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingModeRight_amp:11.77'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:11.78'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:11.79'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingModeRight_amp:11.80'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isWide
		equals: true
		description: 'testDraggingModeRight_amp:11.81'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.82'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingModeRight_amp:11.83'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:11.84'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:11.85'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingModeRight_amp:11.86'.
	self
		assert: tmp_LlklpIsjze13 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingModeRight_amp:11.87'.
	self
		assert: tmp_LlklpIsjze13 view class
		equals: RSView
		description: 'testDraggingModeRight_amp:11.88'.
	self
		assert: tmp_LlklpIsjze13 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.89'.
	self
		assert: tmp_LlklpIsjze13 view numberOfEdges
		equals: 0
		description: 'testDraggingModeRight_amp:11.90'.
	self
		assert: tmp_LlklpIsjze13 isShape class
		equals: False
		description: 'testDraggingModeRight_amp:11.91'.
	self
		assert: tmp_LlklpIsjze13 isShape
		equals: false
		description: 'testDraggingModeRight_amp:11.92'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle class
		equals: Rectangle
		description: 'testDraggingModeRight_amp:11.93'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.94'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle top
		equals: 0
		description: 'testDraggingModeRight_amp:11.95'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingModeRight_amp:11.96'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingModeRight_amp:11.97'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.98'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle area
		equals: 250000
		description: 'testDraggingModeRight_amp:11.99'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isTall class
		equals: False
		description: 'testDraggingModeRight_amp:11.100'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isTall
		equals: false
		description: 'testDraggingModeRight_amp:11.101'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.102'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle left
		equals: 0
		description: 'testDraggingModeRight_amp:11.103'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.104'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle width
		equals: 500
		description: 'testDraggingModeRight_amp:11.105'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.106'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle right
		equals: 500
		description: 'testDraggingModeRight_amp:11.107'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isZero class
		equals: False
		description: 'testDraggingModeRight_amp:11.108'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isZero
		equals: false
		description: 'testDraggingModeRight_amp:11.109'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isWide class
		equals: False
		description: 'testDraggingModeRight_amp:11.110'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isWide
		equals: false
		description: 'testDraggingModeRight_amp:11.111'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.112'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle bottom
		equals: 500
		description: 'testDraggingModeRight_amp:11.113'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingModeRight_amp:11.114'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle isRectangle
		equals: true
		description: 'testDraggingModeRight_amp:11.115'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.116'.
	self
		assert: tmp_LlklpIsjze13 basicRectangle height
		equals: 500
		description: 'testDraggingModeRight_amp:11.117'.
	self
		assert: tmp_LlklpIsjze13 topParent class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:11.118'.
	self
		assert: tmp_LlklpIsjze13 topParent showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:11.119'.
	self
		assert: tmp_LlklpIsjze13 topParent showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:11.120'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.121'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:11.122'.
	self
		assert: tmp_LlklpIsjze13 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:11.123'.
	self
		assert: tmp_LlklpIsjze13 topParent morph
		equals: nil
		description: 'testDraggingModeRight_amp:11.124'.
	self
		assert: tmp_LlklpIsjze13 topParent isShape class
		equals: False
		description: 'testDraggingModeRight_amp:11.125'.
	self
		assert: tmp_LlklpIsjze13 topParent isShape
		equals: false
		description: 'testDraggingModeRight_amp:11.126'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.127'.
	self
		assert: tmp_LlklpIsjze13 topParent numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:11.128'.
	self
		assert: tmp_LlklpIsjze13 topParent clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:11.129'.
	self
		assert: tmp_LlklpIsjze13 topParent clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:11.130'.
	self
		assert: tmp_LlklpIsjze13 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.131'.
	self
		assert: tmp_LlklpIsjze13 numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:11.132'.
	self
		assert: tmp_LlklpIsjze13 canvas class
		equals: TSCanvas
		description: 'testDraggingModeRight_amp:11.133'.
	self
		assert: tmp_LlklpIsjze13 canvas showRectangles class
		equals: False
		description: 'testDraggingModeRight_amp:11.134'.
	self
		assert: tmp_LlklpIsjze13 canvas showRectangles
		equals: false
		description: 'testDraggingModeRight_amp:11.135'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.136'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingModeRight_amp:11.137'.
	self
		assert: tmp_LlklpIsjze13 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingModeRight_amp:11.138'.
	self
		assert: tmp_LlklpIsjze13 canvas morph
		equals: nil
		description: 'testDraggingModeRight_amp:11.139'.
	self
		assert: tmp_LlklpIsjze13 canvas isShape class
		equals: False
		description: 'testDraggingModeRight_amp:11.140'.
	self
		assert: tmp_LlklpIsjze13 canvas isShape
		equals: false
		description: 'testDraggingModeRight_amp:11.141'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingModeRight_amp:11.142'.
	self
		assert: tmp_LlklpIsjze13 canvas numberOfShapes
		equals: 1
		description: 'testDraggingModeRight_amp:11.143'.
	self
		assert: tmp_LlklpIsjze13 canvas clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:11.144'.
	self
		assert: tmp_LlklpIsjze13 canvas clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:11.145'.
	self
		assert: tmp_LlklpIsjze13 clearBackground class
		equals: True
		description: 'testDraggingModeRight_amp:11.146'.
	self
		assert: tmp_LlklpIsjze13 clearBackground
		equals: true
		description: 'testDraggingModeRight_amp:11.147'.
	view canvas announce: (TSMouseDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	view canvas announce: (TSMouseRightDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> testDraggingOnDraggable_amp [
	<madeBySmallAmp>
	| tmp_frcJjDQCV81 tmp_TfCJfq3G2j3 tmp_oGDN8dBM4A5 tmp_S0X2ZJRmkX7 |
	tmp_frcJjDQCV81 := view @ TSDraggableCanvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:1.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingOnDraggable_amp:1.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:1.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:1.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:1.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:1.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:1.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:1.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:1.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:1.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:1.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingOnDraggable_amp:1.21'.
	self
		assert: tmp_frcJjDQCV81 class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:1.1'.
	self
		assert: tmp_frcJjDQCV81 fixedShapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:1.2'.
	self
		assert: tmp_frcJjDQCV81 fixedShapes size
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.3'.
	self
		assert: tmp_frcJjDQCV81 showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.4'.
	self
		assert: tmp_frcJjDQCV81 showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:1.5'.
	self
		assert: tmp_frcJjDQCV81 color class
		equals: Color
		description: 'testDraggingOnDraggable_amp:1.6'.
	self
		assert: tmp_frcJjDQCV81 color alpha class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.7'.
	self
		assert: tmp_frcJjDQCV81 color alpha
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:1.8'.
	self
		assert: tmp_frcJjDQCV81 color red class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.9'.
	self
		assert: tmp_frcJjDQCV81 color red
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:1.10'.
	self
		assert: tmp_frcJjDQCV81 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.11'.
	self
		assert: tmp_frcJjDQCV81 color hsvSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:1.12'.
	self
		assert: tmp_frcJjDQCV81 color brightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.13'.
	self
		assert: tmp_frcJjDQCV81 color brightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:1.14'.
	self
		assert: tmp_frcJjDQCV81 color hue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.15'.
	self
		assert: tmp_frcJjDQCV81 color hue
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:1.16'.
	self
		assert: tmp_frcJjDQCV81 color green class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.17'.
	self
		assert: tmp_frcJjDQCV81 color green
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:1.18'.
	self
		assert: tmp_frcJjDQCV81 color chroma class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.19'.
	self
		assert: tmp_frcJjDQCV81 color chroma
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:1.20'.
	self
		assert: tmp_frcJjDQCV81 color lightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.21'.
	self
		assert: tmp_frcJjDQCV81 color lightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:1.22'.
	self
		assert: tmp_frcJjDQCV81 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.23'.
	self
		assert: tmp_frcJjDQCV81 color hslSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:1.24'.
	self
		assert: tmp_frcJjDQCV81 color saturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.25'.
	self
		assert: tmp_frcJjDQCV81 color saturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:1.26'.
	self
		assert: tmp_frcJjDQCV81 color luminance class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.27'.
	self
		assert: tmp_frcJjDQCV81 color luminance
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:1.28'.
	self
		assert: tmp_frcJjDQCV81 color blue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.29'.
	self
		assert: tmp_frcJjDQCV81 color blue
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:1.30'.
	self
		assert: tmp_frcJjDQCV81 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.31'.
	self
		assert: tmp_frcJjDQCV81 numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.32'.
	self
		assert: tmp_frcJjDQCV81 morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:1.33'.
	self
		assert: tmp_frcJjDQCV81 morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:1.34'.
	self
		assert: tmp_frcJjDQCV81 extent class
		equals: Point
		description: 'testDraggingOnDraggable_amp:1.35'.
	self
		assert: tmp_frcJjDQCV81 extent isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.36'.
	self
		assert: tmp_frcJjDQCV81 extent isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:1.37'.
	self
		assert: tmp_frcJjDQCV81 extent y class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.38'.
	self
		assert: tmp_frcJjDQCV81 extent y
		equals: 500
		description: 'testDraggingOnDraggable_amp:1.39'.
	self
		assert: tmp_frcJjDQCV81 extent isFloatPoint class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.40'.
	self
		assert: tmp_frcJjDQCV81 extent isFloatPoint
		equals: false
		description: 'testDraggingOnDraggable_amp:1.41'.
	self
		assert: tmp_frcJjDQCV81 extent isIntegerPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.42'.
	self
		assert: tmp_frcJjDQCV81 extent isIntegerPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:1.43'.
	self
		assert: tmp_frcJjDQCV81 extent x class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.44'.
	self
		assert: tmp_frcJjDQCV81 extent x
		equals: 500
		description: 'testDraggingOnDraggable_amp:1.45'.
	self
		assert: tmp_frcJjDQCV81 extent isPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.46'.
	self
		assert: tmp_frcJjDQCV81 extent isPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:1.47'.
	self
		assert: tmp_frcJjDQCV81 parent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:1.48'.
	self
		assert: tmp_frcJjDQCV81 parent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.49'.
	self
		assert: tmp_frcJjDQCV81 parent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:1.50'.
	self
		assert: tmp_frcJjDQCV81 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.51'.
	self
		assert: tmp_frcJjDQCV81 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.52'.
	self
		assert: tmp_frcJjDQCV81 parent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:1.53'.
	self
		assert: tmp_frcJjDQCV81 parent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:1.54'.
	self
		assert: tmp_frcJjDQCV81 parent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.55'.
	self
		assert: tmp_frcJjDQCV81 parent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:1.56'.
	self
		assert: tmp_frcJjDQCV81 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.57'.
	self
		assert: tmp_frcJjDQCV81 parent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:1.58'.
	self
		assert: tmp_frcJjDQCV81 parent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.59'.
	self
		assert: tmp_frcJjDQCV81 parent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:1.60'.
	self
		assert: tmp_frcJjDQCV81 shapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:1.61'.
	self
		assert: tmp_frcJjDQCV81 shapes size
		equals: 1
		description: 'testDraggingOnDraggable_amp:1.62'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:1.63'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.64'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingOnDraggable_amp:1.65'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.66'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:1.67'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.68'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingOnDraggable_amp:1.69'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.70'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:1.71'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.72'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingOnDraggable_amp:1.73'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.74'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingOnDraggable_amp:1.75'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.76'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:1.77'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.78'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:1.79'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.80'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isWide
		equals: true
		description: 'testDraggingOnDraggable_amp:1.81'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.82'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingOnDraggable_amp:1.83'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.84'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:1.85'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:1.86'.
	self
		assert: tmp_frcJjDQCV81 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:1.87'.
	self
		assert: tmp_frcJjDQCV81 view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:1.88'.
	self
		assert: tmp_frcJjDQCV81 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.89'.
	self
		assert: tmp_frcJjDQCV81 view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.90'.
	self
		assert: tmp_frcJjDQCV81 isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.91'.
	self
		assert: tmp_frcJjDQCV81 isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:1.92'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:1.93'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.94'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle top
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.95'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.96'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:1.97'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.98'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle area
		equals: 250000
		description: 'testDraggingOnDraggable_amp:1.99'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.100'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:1.101'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.102'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle left
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.103'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.104'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle width
		equals: 500
		description: 'testDraggingOnDraggable_amp:1.105'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.106'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle right
		equals: 500
		description: 'testDraggingOnDraggable_amp:1.107'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.108'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:1.109'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isWide class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.110'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isWide
		equals: false
		description: 'testDraggingOnDraggable_amp:1.111'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.112'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle bottom
		equals: 500
		description: 'testDraggingOnDraggable_amp:1.113'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.114'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:1.115'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.116'.
	self
		assert: tmp_frcJjDQCV81 basicRectangle height
		equals: 500
		description: 'testDraggingOnDraggable_amp:1.117'.
	self
		assert: tmp_frcJjDQCV81 topParent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:1.118'.
	self
		assert: tmp_frcJjDQCV81 topParent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.119'.
	self
		assert: tmp_frcJjDQCV81 topParent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:1.120'.
	self
		assert: tmp_frcJjDQCV81 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.121'.
	self
		assert: tmp_frcJjDQCV81 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.122'.
	self
		assert: tmp_frcJjDQCV81 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:1.123'.
	self
		assert: tmp_frcJjDQCV81 topParent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:1.124'.
	self
		assert: tmp_frcJjDQCV81 topParent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.125'.
	self
		assert: tmp_frcJjDQCV81 topParent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:1.126'.
	self
		assert: tmp_frcJjDQCV81 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.127'.
	self
		assert: tmp_frcJjDQCV81 topParent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:1.128'.
	self
		assert: tmp_frcJjDQCV81 topParent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.129'.
	self
		assert: tmp_frcJjDQCV81 topParent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:1.130'.
	self
		assert: tmp_frcJjDQCV81 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.131'.
	self
		assert: tmp_frcJjDQCV81 numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:1.132'.
	self
		assert: tmp_frcJjDQCV81 canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:1.133'.
	self
		assert: tmp_frcJjDQCV81 canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.134'.
	self
		assert: tmp_frcJjDQCV81 canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:1.135'.
	self
		assert: tmp_frcJjDQCV81 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.136'.
	self
		assert: tmp_frcJjDQCV81 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:1.137'.
	self
		assert: tmp_frcJjDQCV81 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:1.138'.
	self
		assert: tmp_frcJjDQCV81 canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:1.139'.
	self
		assert: tmp_frcJjDQCV81 canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:1.140'.
	self
		assert: tmp_frcJjDQCV81 canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:1.141'.
	self
		assert: tmp_frcJjDQCV81 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:1.142'.
	self
		assert: tmp_frcJjDQCV81 canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:1.143'.
	self
		assert: tmp_frcJjDQCV81 canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.144'.
	self
		assert: tmp_frcJjDQCV81 canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:1.145'.
	self
		assert: tmp_frcJjDQCV81 clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:1.146'.
	self
		assert: tmp_frcJjDQCV81 clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:1.147'.
	tmp_TfCJfq3G2j3 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:2.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingOnDraggable_amp:2.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:2.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:2.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:2.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:2.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:2.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:2.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:2.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:2.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:2.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingOnDraggable_amp:2.21'.
	self
		assert: tmp_TfCJfq3G2j3 class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:2.1'.
	self
		assert: tmp_TfCJfq3G2j3 fixedShapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:2.2'.
	self
		assert: tmp_TfCJfq3G2j3 fixedShapes size
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.3'.
	self
		assert: tmp_TfCJfq3G2j3 showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.4'.
	self
		assert: tmp_TfCJfq3G2j3 showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:2.5'.
	self
		assert: tmp_TfCJfq3G2j3 color class
		equals: Color
		description: 'testDraggingOnDraggable_amp:2.6'.
	self
		assert: tmp_TfCJfq3G2j3 color alpha class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.7'.
	self
		assert: tmp_TfCJfq3G2j3 color alpha
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:2.8'.
	self
		assert: tmp_TfCJfq3G2j3 color red class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.9'.
	self
		assert: tmp_TfCJfq3G2j3 color red
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:2.10'.
	self
		assert: tmp_TfCJfq3G2j3 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.11'.
	self
		assert: tmp_TfCJfq3G2j3 color hsvSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:2.12'.
	self
		assert: tmp_TfCJfq3G2j3 color brightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.13'.
	self
		assert: tmp_TfCJfq3G2j3 color brightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:2.14'.
	self
		assert: tmp_TfCJfq3G2j3 color hue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.15'.
	self
		assert: tmp_TfCJfq3G2j3 color hue
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:2.16'.
	self
		assert: tmp_TfCJfq3G2j3 color green class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.17'.
	self
		assert: tmp_TfCJfq3G2j3 color green
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:2.18'.
	self
		assert: tmp_TfCJfq3G2j3 color chroma class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.19'.
	self
		assert: tmp_TfCJfq3G2j3 color chroma
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:2.20'.
	self
		assert: tmp_TfCJfq3G2j3 color lightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.21'.
	self
		assert: tmp_TfCJfq3G2j3 color lightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:2.22'.
	self
		assert: tmp_TfCJfq3G2j3 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.23'.
	self
		assert: tmp_TfCJfq3G2j3 color hslSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:2.24'.
	self
		assert: tmp_TfCJfq3G2j3 color saturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.25'.
	self
		assert: tmp_TfCJfq3G2j3 color saturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:2.26'.
	self
		assert: tmp_TfCJfq3G2j3 color luminance class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.27'.
	self
		assert: tmp_TfCJfq3G2j3 color luminance
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:2.28'.
	self
		assert: tmp_TfCJfq3G2j3 color blue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.29'.
	self
		assert: tmp_TfCJfq3G2j3 color blue
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:2.30'.
	self
		assert: tmp_TfCJfq3G2j3 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.31'.
	self
		assert: tmp_TfCJfq3G2j3 numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.32'.
	self
		assert: tmp_TfCJfq3G2j3 morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:2.33'.
	self
		assert: tmp_TfCJfq3G2j3 morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:2.34'.
	self
		assert: tmp_TfCJfq3G2j3 extent class
		equals: Point
		description: 'testDraggingOnDraggable_amp:2.35'.
	self
		assert: tmp_TfCJfq3G2j3 extent isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.36'.
	self
		assert: tmp_TfCJfq3G2j3 extent isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:2.37'.
	self
		assert: tmp_TfCJfq3G2j3 extent y class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.38'.
	self
		assert: tmp_TfCJfq3G2j3 extent y
		equals: 500
		description: 'testDraggingOnDraggable_amp:2.39'.
	self
		assert: tmp_TfCJfq3G2j3 extent isFloatPoint class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.40'.
	self
		assert: tmp_TfCJfq3G2j3 extent isFloatPoint
		equals: false
		description: 'testDraggingOnDraggable_amp:2.41'.
	self
		assert: tmp_TfCJfq3G2j3 extent isIntegerPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.42'.
	self
		assert: tmp_TfCJfq3G2j3 extent isIntegerPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:2.43'.
	self
		assert: tmp_TfCJfq3G2j3 extent x class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.44'.
	self
		assert: tmp_TfCJfq3G2j3 extent x
		equals: 500
		description: 'testDraggingOnDraggable_amp:2.45'.
	self
		assert: tmp_TfCJfq3G2j3 extent isPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.46'.
	self
		assert: tmp_TfCJfq3G2j3 extent isPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:2.47'.
	self
		assert: tmp_TfCJfq3G2j3 parent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:2.48'.
	self
		assert: tmp_TfCJfq3G2j3 parent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.49'.
	self
		assert: tmp_TfCJfq3G2j3 parent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:2.50'.
	self
		assert: tmp_TfCJfq3G2j3 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.51'.
	self
		assert: tmp_TfCJfq3G2j3 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.52'.
	self
		assert: tmp_TfCJfq3G2j3 parent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:2.53'.
	self
		assert: tmp_TfCJfq3G2j3 parent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:2.54'.
	self
		assert: tmp_TfCJfq3G2j3 parent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.55'.
	self
		assert: tmp_TfCJfq3G2j3 parent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:2.56'.
	self
		assert: tmp_TfCJfq3G2j3 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.57'.
	self
		assert: tmp_TfCJfq3G2j3 parent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:2.58'.
	self
		assert: tmp_TfCJfq3G2j3 parent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.59'.
	self
		assert: tmp_TfCJfq3G2j3 parent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:2.60'.
	self
		assert: tmp_TfCJfq3G2j3 shapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:2.61'.
	self
		assert: tmp_TfCJfq3G2j3 shapes size
		equals: 1
		description: 'testDraggingOnDraggable_amp:2.62'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:2.63'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.64'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingOnDraggable_amp:2.65'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.66'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:2.67'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.68'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingOnDraggable_amp:2.69'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.70'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:2.71'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.72'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingOnDraggable_amp:2.73'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.74'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingOnDraggable_amp:2.75'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.76'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:2.77'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.78'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:2.79'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.80'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isWide
		equals: true
		description: 'testDraggingOnDraggable_amp:2.81'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.82'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingOnDraggable_amp:2.83'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.84'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:2.85'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:2.86'.
	self
		assert: tmp_TfCJfq3G2j3 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:2.87'.
	self
		assert: tmp_TfCJfq3G2j3 view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:2.88'.
	self
		assert: tmp_TfCJfq3G2j3 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.89'.
	self
		assert: tmp_TfCJfq3G2j3 view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.90'.
	self
		assert: tmp_TfCJfq3G2j3 isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.91'.
	self
		assert: tmp_TfCJfq3G2j3 isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:2.92'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:2.93'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.94'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle top
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.95'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.96'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:2.97'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.98'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle area
		equals: 250000
		description: 'testDraggingOnDraggable_amp:2.99'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.100'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:2.101'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.102'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle left
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.103'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.104'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle width
		equals: 500
		description: 'testDraggingOnDraggable_amp:2.105'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.106'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle right
		equals: 500
		description: 'testDraggingOnDraggable_amp:2.107'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.108'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:2.109'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isWide class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.110'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isWide
		equals: false
		description: 'testDraggingOnDraggable_amp:2.111'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.112'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle bottom
		equals: 500
		description: 'testDraggingOnDraggable_amp:2.113'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.114'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:2.115'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.116'.
	self
		assert: tmp_TfCJfq3G2j3 basicRectangle height
		equals: 500
		description: 'testDraggingOnDraggable_amp:2.117'.
	self
		assert: tmp_TfCJfq3G2j3 topParent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:2.118'.
	self
		assert: tmp_TfCJfq3G2j3 topParent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.119'.
	self
		assert: tmp_TfCJfq3G2j3 topParent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:2.120'.
	self
		assert: tmp_TfCJfq3G2j3 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.121'.
	self
		assert: tmp_TfCJfq3G2j3 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.122'.
	self
		assert: tmp_TfCJfq3G2j3 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:2.123'.
	self
		assert: tmp_TfCJfq3G2j3 topParent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:2.124'.
	self
		assert: tmp_TfCJfq3G2j3 topParent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.125'.
	self
		assert: tmp_TfCJfq3G2j3 topParent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:2.126'.
	self
		assert: tmp_TfCJfq3G2j3 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.127'.
	self
		assert: tmp_TfCJfq3G2j3 topParent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:2.128'.
	self
		assert: tmp_TfCJfq3G2j3 topParent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.129'.
	self
		assert: tmp_TfCJfq3G2j3 topParent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:2.130'.
	self
		assert: tmp_TfCJfq3G2j3 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.131'.
	self
		assert: tmp_TfCJfq3G2j3 numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:2.132'.
	self
		assert: tmp_TfCJfq3G2j3 canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:2.133'.
	self
		assert: tmp_TfCJfq3G2j3 canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.134'.
	self
		assert: tmp_TfCJfq3G2j3 canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:2.135'.
	self
		assert: tmp_TfCJfq3G2j3 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.136'.
	self
		assert: tmp_TfCJfq3G2j3 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:2.137'.
	self
		assert: tmp_TfCJfq3G2j3 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:2.138'.
	self
		assert: tmp_TfCJfq3G2j3 canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:2.139'.
	self
		assert: tmp_TfCJfq3G2j3 canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:2.140'.
	self
		assert: tmp_TfCJfq3G2j3 canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:2.141'.
	self
		assert: tmp_TfCJfq3G2j3 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:2.142'.
	self
		assert: tmp_TfCJfq3G2j3 canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:2.143'.
	self
		assert: tmp_TfCJfq3G2j3 canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.144'.
	self
		assert: tmp_TfCJfq3G2j3 canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:2.145'.
	self
		assert: tmp_TfCJfq3G2j3 clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:2.146'.
	self
		assert: tmp_TfCJfq3G2j3 clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:2.147'.
	tmp_oGDN8dBM4A5 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:3.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingOnDraggable_amp:3.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:3.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:3.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:3.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:3.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:3.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:3.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:3.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:3.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:3.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingOnDraggable_amp:3.21'.
	self
		assert: tmp_oGDN8dBM4A5 class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:3.1'.
	self
		assert: tmp_oGDN8dBM4A5 fixedShapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:3.2'.
	self
		assert: tmp_oGDN8dBM4A5 fixedShapes size
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.3'.
	self
		assert: tmp_oGDN8dBM4A5 showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.4'.
	self
		assert: tmp_oGDN8dBM4A5 showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:3.5'.
	self
		assert: tmp_oGDN8dBM4A5 color class
		equals: Color
		description: 'testDraggingOnDraggable_amp:3.6'.
	self
		assert: tmp_oGDN8dBM4A5 color alpha class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.7'.
	self
		assert: tmp_oGDN8dBM4A5 color alpha
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:3.8'.
	self
		assert: tmp_oGDN8dBM4A5 color red class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.9'.
	self
		assert: tmp_oGDN8dBM4A5 color red
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:3.10'.
	self
		assert: tmp_oGDN8dBM4A5 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.11'.
	self
		assert: tmp_oGDN8dBM4A5 color hsvSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:3.12'.
	self
		assert: tmp_oGDN8dBM4A5 color brightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.13'.
	self
		assert: tmp_oGDN8dBM4A5 color brightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:3.14'.
	self
		assert: tmp_oGDN8dBM4A5 color hue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.15'.
	self
		assert: tmp_oGDN8dBM4A5 color hue
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:3.16'.
	self
		assert: tmp_oGDN8dBM4A5 color green class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.17'.
	self
		assert: tmp_oGDN8dBM4A5 color green
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:3.18'.
	self
		assert: tmp_oGDN8dBM4A5 color chroma class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.19'.
	self
		assert: tmp_oGDN8dBM4A5 color chroma
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:3.20'.
	self
		assert: tmp_oGDN8dBM4A5 color lightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.21'.
	self
		assert: tmp_oGDN8dBM4A5 color lightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:3.22'.
	self
		assert: tmp_oGDN8dBM4A5 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.23'.
	self
		assert: tmp_oGDN8dBM4A5 color hslSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:3.24'.
	self
		assert: tmp_oGDN8dBM4A5 color saturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.25'.
	self
		assert: tmp_oGDN8dBM4A5 color saturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:3.26'.
	self
		assert: tmp_oGDN8dBM4A5 color luminance class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.27'.
	self
		assert: tmp_oGDN8dBM4A5 color luminance
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:3.28'.
	self
		assert: tmp_oGDN8dBM4A5 color blue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.29'.
	self
		assert: tmp_oGDN8dBM4A5 color blue
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:3.30'.
	self
		assert: tmp_oGDN8dBM4A5 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.31'.
	self
		assert: tmp_oGDN8dBM4A5 numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.32'.
	self
		assert: tmp_oGDN8dBM4A5 morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:3.33'.
	self
		assert: tmp_oGDN8dBM4A5 morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:3.34'.
	self
		assert: tmp_oGDN8dBM4A5 extent class
		equals: Point
		description: 'testDraggingOnDraggable_amp:3.35'.
	self
		assert: tmp_oGDN8dBM4A5 extent isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.36'.
	self
		assert: tmp_oGDN8dBM4A5 extent isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:3.37'.
	self
		assert: tmp_oGDN8dBM4A5 extent y class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.38'.
	self
		assert: tmp_oGDN8dBM4A5 extent y
		equals: 500
		description: 'testDraggingOnDraggable_amp:3.39'.
	self
		assert: tmp_oGDN8dBM4A5 extent isFloatPoint class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.40'.
	self
		assert: tmp_oGDN8dBM4A5 extent isFloatPoint
		equals: false
		description: 'testDraggingOnDraggable_amp:3.41'.
	self
		assert: tmp_oGDN8dBM4A5 extent isIntegerPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.42'.
	self
		assert: tmp_oGDN8dBM4A5 extent isIntegerPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:3.43'.
	self
		assert: tmp_oGDN8dBM4A5 extent x class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.44'.
	self
		assert: tmp_oGDN8dBM4A5 extent x
		equals: 500
		description: 'testDraggingOnDraggable_amp:3.45'.
	self
		assert: tmp_oGDN8dBM4A5 extent isPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.46'.
	self
		assert: tmp_oGDN8dBM4A5 extent isPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:3.47'.
	self
		assert: tmp_oGDN8dBM4A5 parent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:3.48'.
	self
		assert: tmp_oGDN8dBM4A5 parent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.49'.
	self
		assert: tmp_oGDN8dBM4A5 parent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:3.50'.
	self
		assert: tmp_oGDN8dBM4A5 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.51'.
	self
		assert: tmp_oGDN8dBM4A5 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.52'.
	self
		assert: tmp_oGDN8dBM4A5 parent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:3.53'.
	self
		assert: tmp_oGDN8dBM4A5 parent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:3.54'.
	self
		assert: tmp_oGDN8dBM4A5 parent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.55'.
	self
		assert: tmp_oGDN8dBM4A5 parent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:3.56'.
	self
		assert: tmp_oGDN8dBM4A5 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.57'.
	self
		assert: tmp_oGDN8dBM4A5 parent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:3.58'.
	self
		assert: tmp_oGDN8dBM4A5 parent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.59'.
	self
		assert: tmp_oGDN8dBM4A5 parent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:3.60'.
	self
		assert: tmp_oGDN8dBM4A5 shapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:3.61'.
	self
		assert: tmp_oGDN8dBM4A5 shapes size
		equals: 1
		description: 'testDraggingOnDraggable_amp:3.62'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:3.63'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.64'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingOnDraggable_amp:3.65'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.66'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:3.67'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.68'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingOnDraggable_amp:3.69'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.70'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:3.71'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.72'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingOnDraggable_amp:3.73'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.74'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingOnDraggable_amp:3.75'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.76'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:3.77'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.78'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:3.79'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.80'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isWide
		equals: true
		description: 'testDraggingOnDraggable_amp:3.81'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.82'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingOnDraggable_amp:3.83'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.84'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:3.85'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:3.86'.
	self
		assert: tmp_oGDN8dBM4A5 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:3.87'.
	self
		assert: tmp_oGDN8dBM4A5 view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:3.88'.
	self
		assert: tmp_oGDN8dBM4A5 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.89'.
	self
		assert: tmp_oGDN8dBM4A5 view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.90'.
	self
		assert: tmp_oGDN8dBM4A5 isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.91'.
	self
		assert: tmp_oGDN8dBM4A5 isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:3.92'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:3.93'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.94'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle top
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.95'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.96'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:3.97'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.98'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle area
		equals: 250000
		description: 'testDraggingOnDraggable_amp:3.99'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.100'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:3.101'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.102'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle left
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.103'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.104'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle width
		equals: 500
		description: 'testDraggingOnDraggable_amp:3.105'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.106'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle right
		equals: 500
		description: 'testDraggingOnDraggable_amp:3.107'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.108'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:3.109'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isWide class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.110'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isWide
		equals: false
		description: 'testDraggingOnDraggable_amp:3.111'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.112'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle bottom
		equals: 500
		description: 'testDraggingOnDraggable_amp:3.113'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.114'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:3.115'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.116'.
	self
		assert: tmp_oGDN8dBM4A5 basicRectangle height
		equals: 500
		description: 'testDraggingOnDraggable_amp:3.117'.
	self
		assert: tmp_oGDN8dBM4A5 topParent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:3.118'.
	self
		assert: tmp_oGDN8dBM4A5 topParent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.119'.
	self
		assert: tmp_oGDN8dBM4A5 topParent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:3.120'.
	self
		assert: tmp_oGDN8dBM4A5 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.121'.
	self
		assert: tmp_oGDN8dBM4A5 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.122'.
	self
		assert: tmp_oGDN8dBM4A5 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:3.123'.
	self
		assert: tmp_oGDN8dBM4A5 topParent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:3.124'.
	self
		assert: tmp_oGDN8dBM4A5 topParent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.125'.
	self
		assert: tmp_oGDN8dBM4A5 topParent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:3.126'.
	self
		assert: tmp_oGDN8dBM4A5 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.127'.
	self
		assert: tmp_oGDN8dBM4A5 topParent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:3.128'.
	self
		assert: tmp_oGDN8dBM4A5 topParent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.129'.
	self
		assert: tmp_oGDN8dBM4A5 topParent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:3.130'.
	self
		assert: tmp_oGDN8dBM4A5 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.131'.
	self
		assert: tmp_oGDN8dBM4A5 numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:3.132'.
	self
		assert: tmp_oGDN8dBM4A5 canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:3.133'.
	self
		assert: tmp_oGDN8dBM4A5 canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.134'.
	self
		assert: tmp_oGDN8dBM4A5 canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:3.135'.
	self
		assert: tmp_oGDN8dBM4A5 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.136'.
	self
		assert: tmp_oGDN8dBM4A5 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:3.137'.
	self
		assert: tmp_oGDN8dBM4A5 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:3.138'.
	self
		assert: tmp_oGDN8dBM4A5 canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:3.139'.
	self
		assert: tmp_oGDN8dBM4A5 canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:3.140'.
	self
		assert: tmp_oGDN8dBM4A5 canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:3.141'.
	self
		assert: tmp_oGDN8dBM4A5 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:3.142'.
	self
		assert: tmp_oGDN8dBM4A5 canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:3.143'.
	self
		assert: tmp_oGDN8dBM4A5 canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.144'.
	self
		assert: tmp_oGDN8dBM4A5 canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:3.145'.
	self
		assert: tmp_oGDN8dBM4A5 clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:3.146'.
	self
		assert: tmp_oGDN8dBM4A5 clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:3.147'.
	tmp_S0X2ZJRmkX7 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:4.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingOnDraggable_amp:4.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:4.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:4.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:4.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:4.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:4.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:4.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:4.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:4.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:4.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingOnDraggable_amp:4.21'.
	self
		assert: tmp_S0X2ZJRmkX7 class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:4.1'.
	self
		assert: tmp_S0X2ZJRmkX7 fixedShapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:4.2'.
	self
		assert: tmp_S0X2ZJRmkX7 fixedShapes size
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.3'.
	self
		assert: tmp_S0X2ZJRmkX7 showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.4'.
	self
		assert: tmp_S0X2ZJRmkX7 showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:4.5'.
	self
		assert: tmp_S0X2ZJRmkX7 color class
		equals: Color
		description: 'testDraggingOnDraggable_amp:4.6'.
	self
		assert: tmp_S0X2ZJRmkX7 color alpha class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.7'.
	self
		assert: tmp_S0X2ZJRmkX7 color alpha
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:4.8'.
	self
		assert: tmp_S0X2ZJRmkX7 color red class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.9'.
	self
		assert: tmp_S0X2ZJRmkX7 color red
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:4.10'.
	self
		assert: tmp_S0X2ZJRmkX7 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.11'.
	self
		assert: tmp_S0X2ZJRmkX7 color hsvSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:4.12'.
	self
		assert: tmp_S0X2ZJRmkX7 color brightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.13'.
	self
		assert: tmp_S0X2ZJRmkX7 color brightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:4.14'.
	self
		assert: tmp_S0X2ZJRmkX7 color hue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.15'.
	self
		assert: tmp_S0X2ZJRmkX7 color hue
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:4.16'.
	self
		assert: tmp_S0X2ZJRmkX7 color green class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.17'.
	self
		assert: tmp_S0X2ZJRmkX7 color green
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:4.18'.
	self
		assert: tmp_S0X2ZJRmkX7 color chroma class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.19'.
	self
		assert: tmp_S0X2ZJRmkX7 color chroma
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:4.20'.
	self
		assert: tmp_S0X2ZJRmkX7 color lightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.21'.
	self
		assert: tmp_S0X2ZJRmkX7 color lightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:4.22'.
	self
		assert: tmp_S0X2ZJRmkX7 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.23'.
	self
		assert: tmp_S0X2ZJRmkX7 color hslSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:4.24'.
	self
		assert: tmp_S0X2ZJRmkX7 color saturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.25'.
	self
		assert: tmp_S0X2ZJRmkX7 color saturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:4.26'.
	self
		assert: tmp_S0X2ZJRmkX7 color luminance class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.27'.
	self
		assert: tmp_S0X2ZJRmkX7 color luminance
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:4.28'.
	self
		assert: tmp_S0X2ZJRmkX7 color blue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.29'.
	self
		assert: tmp_S0X2ZJRmkX7 color blue
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:4.30'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.31'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.32'.
	self
		assert: tmp_S0X2ZJRmkX7 morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:4.33'.
	self
		assert: tmp_S0X2ZJRmkX7 morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:4.34'.
	self
		assert: tmp_S0X2ZJRmkX7 extent class
		equals: Point
		description: 'testDraggingOnDraggable_amp:4.35'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.36'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:4.37'.
	self
		assert: tmp_S0X2ZJRmkX7 extent y class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.38'.
	self
		assert: tmp_S0X2ZJRmkX7 extent y
		equals: 500
		description: 'testDraggingOnDraggable_amp:4.39'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isFloatPoint class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.40'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isFloatPoint
		equals: false
		description: 'testDraggingOnDraggable_amp:4.41'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isIntegerPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.42'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isIntegerPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:4.43'.
	self
		assert: tmp_S0X2ZJRmkX7 extent x class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.44'.
	self
		assert: tmp_S0X2ZJRmkX7 extent x
		equals: 500
		description: 'testDraggingOnDraggable_amp:4.45'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.46'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:4.47'.
	self
		assert: tmp_S0X2ZJRmkX7 parent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:4.48'.
	self
		assert: tmp_S0X2ZJRmkX7 parent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.49'.
	self
		assert: tmp_S0X2ZJRmkX7 parent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:4.50'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.51'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.52'.
	self
		assert: tmp_S0X2ZJRmkX7 parent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:4.53'.
	self
		assert: tmp_S0X2ZJRmkX7 parent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:4.54'.
	self
		assert: tmp_S0X2ZJRmkX7 parent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.55'.
	self
		assert: tmp_S0X2ZJRmkX7 parent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:4.56'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.57'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:4.58'.
	self
		assert: tmp_S0X2ZJRmkX7 parent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.59'.
	self
		assert: tmp_S0X2ZJRmkX7 parent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:4.60'.
	self
		assert: tmp_S0X2ZJRmkX7 shapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:4.61'.
	self
		assert: tmp_S0X2ZJRmkX7 shapes size
		equals: 1
		description: 'testDraggingOnDraggable_amp:4.62'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:4.63'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.64'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingOnDraggable_amp:4.65'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.66'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:4.67'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.68'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingOnDraggable_amp:4.69'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.70'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:4.71'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.72'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingOnDraggable_amp:4.73'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.74'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingOnDraggable_amp:4.75'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.76'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:4.77'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.78'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:4.79'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.80'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isWide
		equals: true
		description: 'testDraggingOnDraggable_amp:4.81'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.82'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingOnDraggable_amp:4.83'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.84'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:4.85'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:4.86'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:4.87'.
	self
		assert: tmp_S0X2ZJRmkX7 view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:4.88'.
	self
		assert: tmp_S0X2ZJRmkX7 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.89'.
	self
		assert: tmp_S0X2ZJRmkX7 view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.90'.
	self
		assert: tmp_S0X2ZJRmkX7 isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.91'.
	self
		assert: tmp_S0X2ZJRmkX7 isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:4.92'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:4.93'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.94'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle top
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.95'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.96'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:4.97'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.98'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle area
		equals: 250000
		description: 'testDraggingOnDraggable_amp:4.99'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.100'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:4.101'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.102'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle left
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.103'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.104'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle width
		equals: 500
		description: 'testDraggingOnDraggable_amp:4.105'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.106'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle right
		equals: 500
		description: 'testDraggingOnDraggable_amp:4.107'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.108'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:4.109'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isWide class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.110'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isWide
		equals: false
		description: 'testDraggingOnDraggable_amp:4.111'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.112'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle bottom
		equals: 500
		description: 'testDraggingOnDraggable_amp:4.113'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.114'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:4.115'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.116'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle height
		equals: 500
		description: 'testDraggingOnDraggable_amp:4.117'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:4.118'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.119'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:4.120'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.121'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.122'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:4.123'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:4.124'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.125'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:4.126'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.127'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:4.128'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.129'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:4.130'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.131'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:4.132'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:4.133'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.134'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:4.135'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.136'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:4.137'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:4.138'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:4.139'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:4.140'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:4.141'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:4.142'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:4.143'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.144'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:4.145'.
	self
		assert: tmp_S0X2ZJRmkX7 clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:4.146'.
	self
		assert: tmp_S0X2ZJRmkX7 clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:4.147'.
	tmp_S0X2ZJRmkX7 announce: (TSMouseDragEnd new canvas: view canvas).
	self
		assert: tmp_S0X2ZJRmkX7 class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:5.1'.
	self
		assert: tmp_S0X2ZJRmkX7 fixedShapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:5.2'.
	self
		assert: tmp_S0X2ZJRmkX7 fixedShapes size
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.3'.
	self
		assert: tmp_S0X2ZJRmkX7 showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.4'.
	self
		assert: tmp_S0X2ZJRmkX7 showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:5.5'.
	self
		assert: tmp_S0X2ZJRmkX7 color class
		equals: Color
		description: 'testDraggingOnDraggable_amp:5.6'.
	self
		assert: tmp_S0X2ZJRmkX7 color alpha class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.7'.
	self
		assert: tmp_S0X2ZJRmkX7 color alpha
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:5.8'.
	self
		assert: tmp_S0X2ZJRmkX7 color red class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.9'.
	self
		assert: tmp_S0X2ZJRmkX7 color red
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:5.10'.
	self
		assert: tmp_S0X2ZJRmkX7 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.11'.
	self
		assert: tmp_S0X2ZJRmkX7 color hsvSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:5.12'.
	self
		assert: tmp_S0X2ZJRmkX7 color brightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.13'.
	self
		assert: tmp_S0X2ZJRmkX7 color brightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:5.14'.
	self
		assert: tmp_S0X2ZJRmkX7 color hue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.15'.
	self
		assert: tmp_S0X2ZJRmkX7 color hue
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:5.16'.
	self
		assert: tmp_S0X2ZJRmkX7 color green class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.17'.
	self
		assert: tmp_S0X2ZJRmkX7 color green
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:5.18'.
	self
		assert: tmp_S0X2ZJRmkX7 color chroma class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.19'.
	self
		assert: tmp_S0X2ZJRmkX7 color chroma
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:5.20'.
	self
		assert: tmp_S0X2ZJRmkX7 color lightness class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.21'.
	self
		assert: tmp_S0X2ZJRmkX7 color lightness
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:5.22'.
	self
		assert: tmp_S0X2ZJRmkX7 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.23'.
	self
		assert: tmp_S0X2ZJRmkX7 color hslSaturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:5.24'.
	self
		assert: tmp_S0X2ZJRmkX7 color saturation class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.25'.
	self
		assert: tmp_S0X2ZJRmkX7 color saturation
		equals: 0.0
		description: 'testDraggingOnDraggable_amp:5.26'.
	self
		assert: tmp_S0X2ZJRmkX7 color luminance class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.27'.
	self
		assert: tmp_S0X2ZJRmkX7 color luminance
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:5.28'.
	self
		assert: tmp_S0X2ZJRmkX7 color blue class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.29'.
	self
		assert: tmp_S0X2ZJRmkX7 color blue
		equals: 1.0
		description: 'testDraggingOnDraggable_amp:5.30'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.31'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.32'.
	self
		assert: tmp_S0X2ZJRmkX7 morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:5.33'.
	self
		assert: tmp_S0X2ZJRmkX7 morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:5.34'.
	self
		assert: tmp_S0X2ZJRmkX7 extent class
		equals: Point
		description: 'testDraggingOnDraggable_amp:5.35'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.36'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:5.37'.
	self
		assert: tmp_S0X2ZJRmkX7 extent y class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.38'.
	self
		assert: tmp_S0X2ZJRmkX7 extent y
		equals: 500
		description: 'testDraggingOnDraggable_amp:5.39'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isFloatPoint class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.40'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isFloatPoint
		equals: false
		description: 'testDraggingOnDraggable_amp:5.41'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isIntegerPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.42'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isIntegerPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:5.43'.
	self
		assert: tmp_S0X2ZJRmkX7 extent x class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.44'.
	self
		assert: tmp_S0X2ZJRmkX7 extent x
		equals: 500
		description: 'testDraggingOnDraggable_amp:5.45'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isPoint class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.46'.
	self
		assert: tmp_S0X2ZJRmkX7 extent isPoint
		equals: true
		description: 'testDraggingOnDraggable_amp:5.47'.
	self
		assert: tmp_S0X2ZJRmkX7 parent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:5.48'.
	self
		assert: tmp_S0X2ZJRmkX7 parent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.49'.
	self
		assert: tmp_S0X2ZJRmkX7 parent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:5.50'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.51'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.52'.
	self
		assert: tmp_S0X2ZJRmkX7 parent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:5.53'.
	self
		assert: tmp_S0X2ZJRmkX7 parent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:5.54'.
	self
		assert: tmp_S0X2ZJRmkX7 parent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.55'.
	self
		assert: tmp_S0X2ZJRmkX7 parent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:5.56'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.57'.
	self
		assert: tmp_S0X2ZJRmkX7 parent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:5.58'.
	self
		assert: tmp_S0X2ZJRmkX7 parent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.59'.
	self
		assert: tmp_S0X2ZJRmkX7 parent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:5.60'.
	self
		assert: tmp_S0X2ZJRmkX7 shapes class
		equals: TSGroup
		description: 'testDraggingOnDraggable_amp:5.61'.
	self
		assert: tmp_S0X2ZJRmkX7 shapes size
		equals: 1
		description: 'testDraggingOnDraggable_amp:5.62'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:5.63'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.64'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingOnDraggable_amp:5.65'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.66'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:5.67'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.68'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingOnDraggable_amp:5.69'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.70'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:5.71'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.72'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingOnDraggable_amp:5.73'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.74'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingOnDraggable_amp:5.75'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.76'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:5.77'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.78'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:5.79'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.80'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isWide
		equals: true
		description: 'testDraggingOnDraggable_amp:5.81'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.82'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingOnDraggable_amp:5.83'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.84'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:5.85'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingOnDraggable_amp:5.86'.
	self
		assert: tmp_S0X2ZJRmkX7 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingOnDraggable_amp:5.87'.
	self
		assert: tmp_S0X2ZJRmkX7 view class
		equals: RSView
		description: 'testDraggingOnDraggable_amp:5.88'.
	self
		assert: tmp_S0X2ZJRmkX7 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.89'.
	self
		assert: tmp_S0X2ZJRmkX7 view numberOfEdges
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.90'.
	self
		assert: tmp_S0X2ZJRmkX7 isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.91'.
	self
		assert: tmp_S0X2ZJRmkX7 isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:5.92'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle class
		equals: Rectangle
		description: 'testDraggingOnDraggable_amp:5.93'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.94'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle top
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.95'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.96'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnDraggable_amp:5.97'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.98'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle area
		equals: 250000
		description: 'testDraggingOnDraggable_amp:5.99'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isTall class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.100'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isTall
		equals: false
		description: 'testDraggingOnDraggable_amp:5.101'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.102'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle left
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.103'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.104'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle width
		equals: 500
		description: 'testDraggingOnDraggable_amp:5.105'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.106'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle right
		equals: 500
		description: 'testDraggingOnDraggable_amp:5.107'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isZero class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.108'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isZero
		equals: false
		description: 'testDraggingOnDraggable_amp:5.109'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isWide class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.110'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isWide
		equals: false
		description: 'testDraggingOnDraggable_amp:5.111'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.112'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle bottom
		equals: 500
		description: 'testDraggingOnDraggable_amp:5.113'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.114'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle isRectangle
		equals: true
		description: 'testDraggingOnDraggable_amp:5.115'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.116'.
	self
		assert: tmp_S0X2ZJRmkX7 basicRectangle height
		equals: 500
		description: 'testDraggingOnDraggable_amp:5.117'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:5.118'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.119'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:5.120'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.121'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.122'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:5.123'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:5.124'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.125'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:5.126'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.127'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:5.128'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.129'.
	self
		assert: tmp_S0X2ZJRmkX7 topParent clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:5.130'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.131'.
	self
		assert: tmp_S0X2ZJRmkX7 numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:5.132'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas class
		equals: TSCanvas
		description: 'testDraggingOnDraggable_amp:5.133'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas showRectangles class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.134'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas showRectangles
		equals: false
		description: 'testDraggingOnDraggable_amp:5.135'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.136'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnDraggable_amp:5.137'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnDraggable_amp:5.138'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas morph
		equals: nil
		description: 'testDraggingOnDraggable_amp:5.139'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas isShape class
		equals: False
		description: 'testDraggingOnDraggable_amp:5.140'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas isShape
		equals: false
		description: 'testDraggingOnDraggable_amp:5.141'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnDraggable_amp:5.142'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnDraggable_amp:5.143'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.144'.
	self
		assert: tmp_S0X2ZJRmkX7 canvas clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:5.145'.
	self
		assert: tmp_S0X2ZJRmkX7 clearBackground class
		equals: True
		description: 'testDraggingOnDraggable_amp:5.146'.
	self
		assert: tmp_S0X2ZJRmkX7 clearBackground
		equals: true
		description: 'testDraggingOnDraggable_amp:5.147'.
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestAmpTest >> testDraggingOnNotDraggable_amp [
	<madeBySmallAmp>
	| tmp_GKKF0TJxYr2 |
	tmp_GKKF0TJxYr2 := view canvas.
	self
		assert: view class
		equals: RSView
		description: 'testDraggingOnNotDraggable_amp:1.1'.
	self
		assert: view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.2'.
	self
		assert: view numberOfEdges
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.3'.
	self
		assert: view announcer class
		equals: Announcer
		description: 'testDraggingOnNotDraggable_amp:1.4'.
	self
		assert: view edges class
		equals: TSGroup
		description: 'testDraggingOnNotDraggable_amp:1.5'.
	self
		assert: view edges size
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.6'.
	self
		assert: view canvas class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:1.7'.
	self
		assert: view canvas showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.8'.
	self
		assert: view canvas showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.9'.
	self
		assert: view canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.10'.
	self
		assert: view canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.11'.
	self
		assert: view canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:1.12'.
	self
		assert: view canvas morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:1.13'.
	self
		assert: view canvas isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.14'.
	self
		assert: view canvas isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.15'.
	self
		assert: view canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.16'.
	self
		assert: view canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:1.17'.
	self
		assert: view canvas clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.18'.
	self
		assert: view canvas clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.19'.
	self
		assert: view elements class
		equals: TSGroup
		description: 'testDraggingOnNotDraggable_amp:1.20'.
	self
		assert: view elements size
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:1.21'.
	self
		assert: tmp_GKKF0TJxYr2 class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:1.1'.
	self
		assert: tmp_GKKF0TJxYr2 fixedShapes class
		equals: TSGroup
		description: 'testDraggingOnNotDraggable_amp:1.2'.
	self
		assert: tmp_GKKF0TJxYr2 fixedShapes size
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.3'.
	self
		assert: tmp_GKKF0TJxYr2 showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.4'.
	self
		assert: tmp_GKKF0TJxYr2 showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.5'.
	self
		assert: tmp_GKKF0TJxYr2 color class
		equals: Color
		description: 'testDraggingOnNotDraggable_amp:1.6'.
	self
		assert: tmp_GKKF0TJxYr2 color alpha class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.7'.
	self
		assert: tmp_GKKF0TJxYr2 color alpha
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:1.8'.
	self
		assert: tmp_GKKF0TJxYr2 color red class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.9'.
	self
		assert: tmp_GKKF0TJxYr2 color red
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:1.10'.
	self
		assert: tmp_GKKF0TJxYr2 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.11'.
	self
		assert: tmp_GKKF0TJxYr2 color hsvSaturation
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:1.12'.
	self
		assert: tmp_GKKF0TJxYr2 color brightness class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.13'.
	self
		assert: tmp_GKKF0TJxYr2 color brightness
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:1.14'.
	self
		assert: tmp_GKKF0TJxYr2 color hue class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.15'.
	self
		assert: tmp_GKKF0TJxYr2 color hue
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:1.16'.
	self
		assert: tmp_GKKF0TJxYr2 color green class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.17'.
	self
		assert: tmp_GKKF0TJxYr2 color green
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:1.18'.
	self
		assert: tmp_GKKF0TJxYr2 color chroma class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.19'.
	self
		assert: tmp_GKKF0TJxYr2 color chroma
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:1.20'.
	self
		assert: tmp_GKKF0TJxYr2 color lightness class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.21'.
	self
		assert: tmp_GKKF0TJxYr2 color lightness
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:1.22'.
	self
		assert: tmp_GKKF0TJxYr2 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.23'.
	self
		assert: tmp_GKKF0TJxYr2 color hslSaturation
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:1.24'.
	self
		assert: tmp_GKKF0TJxYr2 color saturation class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.25'.
	self
		assert: tmp_GKKF0TJxYr2 color saturation
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:1.26'.
	self
		assert: tmp_GKKF0TJxYr2 color luminance class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.27'.
	self
		assert: tmp_GKKF0TJxYr2 color luminance
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:1.28'.
	self
		assert: tmp_GKKF0TJxYr2 color blue class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.29'.
	self
		assert: tmp_GKKF0TJxYr2 color blue
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:1.30'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.31'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.32'.
	self
		assert: tmp_GKKF0TJxYr2 morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:1.33'.
	self
		assert: tmp_GKKF0TJxYr2 morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:1.34'.
	self
		assert: tmp_GKKF0TJxYr2 extent class
		equals: Point
		description: 'testDraggingOnNotDraggable_amp:1.35'.
	self
		assert: tmp_GKKF0TJxYr2 extent isZero class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.36'.
	self
		assert: tmp_GKKF0TJxYr2 extent isZero
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.37'.
	self
		assert: tmp_GKKF0TJxYr2 extent y class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.38'.
	self
		assert: tmp_GKKF0TJxYr2 extent y
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:1.39'.
	self
		assert: tmp_GKKF0TJxYr2 extent isFloatPoint class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.40'.
	self
		assert: tmp_GKKF0TJxYr2 extent isFloatPoint
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.41'.
	self
		assert: tmp_GKKF0TJxYr2 extent isIntegerPoint class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.42'.
	self
		assert: tmp_GKKF0TJxYr2 extent isIntegerPoint
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.43'.
	self
		assert: tmp_GKKF0TJxYr2 extent x class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.44'.
	self
		assert: tmp_GKKF0TJxYr2 extent x
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:1.45'.
	self
		assert: tmp_GKKF0TJxYr2 extent isPoint class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.46'.
	self
		assert: tmp_GKKF0TJxYr2 extent isPoint
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.47'.
	self
		assert: tmp_GKKF0TJxYr2 parent class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:1.48'.
	self
		assert: tmp_GKKF0TJxYr2 parent showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.49'.
	self
		assert: tmp_GKKF0TJxYr2 parent showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.50'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.51'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.52'.
	self
		assert: tmp_GKKF0TJxYr2 parent morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:1.53'.
	self
		assert: tmp_GKKF0TJxYr2 parent morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:1.54'.
	self
		assert: tmp_GKKF0TJxYr2 parent isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.55'.
	self
		assert: tmp_GKKF0TJxYr2 parent isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.56'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.57'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:1.58'.
	self
		assert: tmp_GKKF0TJxYr2 parent clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.59'.
	self
		assert: tmp_GKKF0TJxYr2 parent clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.60'.
	self
		assert: tmp_GKKF0TJxYr2 shapes class
		equals: TSGroup
		description: 'testDraggingOnNotDraggable_amp:1.61'.
	self
		assert: tmp_GKKF0TJxYr2 shapes size
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:1.62'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingOnNotDraggable_amp:1.63'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.64'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingOnNotDraggable_amp:1.65'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.66'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.67'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.68'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingOnNotDraggable_amp:1.69'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.70'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isTall
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.71'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.72'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingOnNotDraggable_amp:1.73'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.74'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingOnNotDraggable_amp:1.75'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.76'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingOnNotDraggable_amp:1.77'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.78'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isZero
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.79'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.80'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isWide
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.81'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.82'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingOnNotDraggable_amp:1.83'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.84'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.85'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:1.86'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingOnNotDraggable_amp:1.87'.
	self
		assert: tmp_GKKF0TJxYr2 view class
		equals: RSView
		description: 'testDraggingOnNotDraggable_amp:1.88'.
	self
		assert: tmp_GKKF0TJxYr2 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.89'.
	self
		assert: tmp_GKKF0TJxYr2 view numberOfEdges
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.90'.
	self
		assert: tmp_GKKF0TJxYr2 isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.91'.
	self
		assert: tmp_GKKF0TJxYr2 isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.92'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle class
		equals: Rectangle
		description: 'testDraggingOnNotDraggable_amp:1.93'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.94'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle top
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.95'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.96'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.97'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.98'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle area
		equals: 250000
		description: 'testDraggingOnNotDraggable_amp:1.99'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isTall class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.100'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isTall
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.101'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.102'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle left
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.103'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.104'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle width
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:1.105'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.106'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle right
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:1.107'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isZero class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.108'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isZero
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.109'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isWide class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.110'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isWide
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.111'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.112'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle bottom
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:1.113'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.114'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isRectangle
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.115'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.116'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle height
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:1.117'.
	self
		assert: tmp_GKKF0TJxYr2 topParent class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:1.118'.
	self
		assert: tmp_GKKF0TJxYr2 topParent showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.119'.
	self
		assert: tmp_GKKF0TJxYr2 topParent showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.120'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.121'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.122'.
	self
		assert: tmp_GKKF0TJxYr2 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:1.123'.
	self
		assert: tmp_GKKF0TJxYr2 topParent morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:1.124'.
	self
		assert: tmp_GKKF0TJxYr2 topParent isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.125'.
	self
		assert: tmp_GKKF0TJxYr2 topParent isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.126'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.127'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:1.128'.
	self
		assert: tmp_GKKF0TJxYr2 topParent clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.129'.
	self
		assert: tmp_GKKF0TJxYr2 topParent clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.130'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.131'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:1.132'.
	self
		assert: tmp_GKKF0TJxYr2 canvas class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:1.133'.
	self
		assert: tmp_GKKF0TJxYr2 canvas showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.134'.
	self
		assert: tmp_GKKF0TJxYr2 canvas showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.135'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.136'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:1.137'.
	self
		assert: tmp_GKKF0TJxYr2 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:1.138'.
	self
		assert: tmp_GKKF0TJxYr2 canvas morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:1.139'.
	self
		assert: tmp_GKKF0TJxYr2 canvas isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:1.140'.
	self
		assert: tmp_GKKF0TJxYr2 canvas isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:1.141'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:1.142'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:1.143'.
	self
		assert: tmp_GKKF0TJxYr2 canvas clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.144'.
	self
		assert: tmp_GKKF0TJxYr2 canvas clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.145'.
	self
		assert: tmp_GKKF0TJxYr2 clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:1.146'.
	self
		assert: tmp_GKKF0TJxYr2 clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:1.147'.
	tmp_GKKF0TJxYr2 announce: (TSMouseDragging step: 10 @ 5).
	self
		assert: tmp_GKKF0TJxYr2 class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:2.1'.
	self
		assert: tmp_GKKF0TJxYr2 fixedShapes class
		equals: TSGroup
		description: 'testDraggingOnNotDraggable_amp:2.2'.
	self
		assert: tmp_GKKF0TJxYr2 fixedShapes size
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.3'.
	self
		assert: tmp_GKKF0TJxYr2 showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.4'.
	self
		assert: tmp_GKKF0TJxYr2 showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.5'.
	self
		assert: tmp_GKKF0TJxYr2 color class
		equals: Color
		description: 'testDraggingOnNotDraggable_amp:2.6'.
	self
		assert: tmp_GKKF0TJxYr2 color alpha class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.7'.
	self
		assert: tmp_GKKF0TJxYr2 color alpha
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:2.8'.
	self
		assert: tmp_GKKF0TJxYr2 color red class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.9'.
	self
		assert: tmp_GKKF0TJxYr2 color red
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:2.10'.
	self
		assert: tmp_GKKF0TJxYr2 color hsvSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.11'.
	self
		assert: tmp_GKKF0TJxYr2 color hsvSaturation
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:2.12'.
	self
		assert: tmp_GKKF0TJxYr2 color brightness class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.13'.
	self
		assert: tmp_GKKF0TJxYr2 color brightness
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:2.14'.
	self
		assert: tmp_GKKF0TJxYr2 color hue class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.15'.
	self
		assert: tmp_GKKF0TJxYr2 color hue
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:2.16'.
	self
		assert: tmp_GKKF0TJxYr2 color green class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.17'.
	self
		assert: tmp_GKKF0TJxYr2 color green
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:2.18'.
	self
		assert: tmp_GKKF0TJxYr2 color chroma class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.19'.
	self
		assert: tmp_GKKF0TJxYr2 color chroma
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:2.20'.
	self
		assert: tmp_GKKF0TJxYr2 color lightness class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.21'.
	self
		assert: tmp_GKKF0TJxYr2 color lightness
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:2.22'.
	self
		assert: tmp_GKKF0TJxYr2 color hslSaturation class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.23'.
	self
		assert: tmp_GKKF0TJxYr2 color hslSaturation
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:2.24'.
	self
		assert: tmp_GKKF0TJxYr2 color saturation class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.25'.
	self
		assert: tmp_GKKF0TJxYr2 color saturation
		equals: 0.0
		description: 'testDraggingOnNotDraggable_amp:2.26'.
	self
		assert: tmp_GKKF0TJxYr2 color luminance class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.27'.
	self
		assert: tmp_GKKF0TJxYr2 color luminance
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:2.28'.
	self
		assert: tmp_GKKF0TJxYr2 color blue class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.29'.
	self
		assert: tmp_GKKF0TJxYr2 color blue
		equals: 1.0
		description: 'testDraggingOnNotDraggable_amp:2.30'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.31'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.32'.
	self
		assert: tmp_GKKF0TJxYr2 morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:2.33'.
	self
		assert: tmp_GKKF0TJxYr2 morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:2.34'.
	self
		assert: tmp_GKKF0TJxYr2 extent class
		equals: Point
		description: 'testDraggingOnNotDraggable_amp:2.35'.
	self
		assert: tmp_GKKF0TJxYr2 extent isZero class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.36'.
	self
		assert: tmp_GKKF0TJxYr2 extent isZero
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.37'.
	self
		assert: tmp_GKKF0TJxYr2 extent y class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.38'.
	self
		assert: tmp_GKKF0TJxYr2 extent y
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:2.39'.
	self
		assert: tmp_GKKF0TJxYr2 extent isFloatPoint class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.40'.
	self
		assert: tmp_GKKF0TJxYr2 extent isFloatPoint
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.41'.
	self
		assert: tmp_GKKF0TJxYr2 extent isIntegerPoint class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.42'.
	self
		assert: tmp_GKKF0TJxYr2 extent isIntegerPoint
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.43'.
	self
		assert: tmp_GKKF0TJxYr2 extent x class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.44'.
	self
		assert: tmp_GKKF0TJxYr2 extent x
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:2.45'.
	self
		assert: tmp_GKKF0TJxYr2 extent isPoint class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.46'.
	self
		assert: tmp_GKKF0TJxYr2 extent isPoint
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.47'.
	self
		assert: tmp_GKKF0TJxYr2 parent class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:2.48'.
	self
		assert: tmp_GKKF0TJxYr2 parent showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.49'.
	self
		assert: tmp_GKKF0TJxYr2 parent showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.50'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.51'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.52'.
	self
		assert: tmp_GKKF0TJxYr2 parent morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:2.53'.
	self
		assert: tmp_GKKF0TJxYr2 parent morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:2.54'.
	self
		assert: tmp_GKKF0TJxYr2 parent isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.55'.
	self
		assert: tmp_GKKF0TJxYr2 parent isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.56'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.57'.
	self
		assert: tmp_GKKF0TJxYr2 parent numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:2.58'.
	self
		assert: tmp_GKKF0TJxYr2 parent clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.59'.
	self
		assert: tmp_GKKF0TJxYr2 parent clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.60'.
	self
		assert: tmp_GKKF0TJxYr2 shapes class
		equals: TSGroup
		description: 'testDraggingOnNotDraggable_amp:2.61'.
	self
		assert: tmp_GKKF0TJxYr2 shapes size
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:2.62'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle class
		equals: Rectangle
		description: 'testDraggingOnNotDraggable_amp:2.63'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle top class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.64'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle top
		equals: -10.0
		description: 'testDraggingOnNotDraggable_amp:2.65'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.66'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.67'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle area class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.68'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle area
		equals: 800.0
		description: 'testDraggingOnNotDraggable_amp:2.69'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isTall class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.70'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isTall
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.71'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle left class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.72'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle left
		equals: -20.0
		description: 'testDraggingOnNotDraggable_amp:2.73'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle width class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.74'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle width
		equals: 40.0
		description: 'testDraggingOnNotDraggable_amp:2.75'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle right class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.76'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle right
		equals: 20.0
		description: 'testDraggingOnNotDraggable_amp:2.77'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isZero class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.78'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isZero
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.79'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isWide class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.80'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isWide
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.81'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle bottom class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.82'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle bottom
		equals: 10.0
		description: 'testDraggingOnNotDraggable_amp:2.83'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isRectangle class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.84'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle isRectangle
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.85'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle height class
		equals: SmallFloat64
		description: 'testDraggingOnNotDraggable_amp:2.86'.
	self
		assert: tmp_GKKF0TJxYr2 encompassingRectangle height
		equals: 20.0
		description: 'testDraggingOnNotDraggable_amp:2.87'.
	self
		assert: tmp_GKKF0TJxYr2 view class
		equals: RSView
		description: 'testDraggingOnNotDraggable_amp:2.88'.
	self
		assert: tmp_GKKF0TJxYr2 view numberOfEdges class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.89'.
	self
		assert: tmp_GKKF0TJxYr2 view numberOfEdges
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.90'.
	self
		assert: tmp_GKKF0TJxYr2 isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.91'.
	self
		assert: tmp_GKKF0TJxYr2 isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.92'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle class
		equals: Rectangle
		description: 'testDraggingOnNotDraggable_amp:2.93'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle top class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.94'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle top
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.95'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle hasPositiveExtent class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.96'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle hasPositiveExtent
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.97'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle area class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.98'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle area
		equals: 250000
		description: 'testDraggingOnNotDraggable_amp:2.99'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isTall class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.100'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isTall
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.101'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle left class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.102'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle left
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.103'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle width class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.104'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle width
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:2.105'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle right class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.106'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle right
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:2.107'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isZero class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.108'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isZero
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.109'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isWide class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.110'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isWide
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.111'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle bottom class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.112'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle bottom
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:2.113'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isRectangle class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.114'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle isRectangle
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.115'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle height class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.116'.
	self
		assert: tmp_GKKF0TJxYr2 basicRectangle height
		equals: 500
		description: 'testDraggingOnNotDraggable_amp:2.117'.
	self
		assert: tmp_GKKF0TJxYr2 topParent class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:2.118'.
	self
		assert: tmp_GKKF0TJxYr2 topParent showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.119'.
	self
		assert: tmp_GKKF0TJxYr2 topParent showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.120'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.121'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.122'.
	self
		assert: tmp_GKKF0TJxYr2 topParent morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:2.123'.
	self
		assert: tmp_GKKF0TJxYr2 topParent morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:2.124'.
	self
		assert: tmp_GKKF0TJxYr2 topParent isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.125'.
	self
		assert: tmp_GKKF0TJxYr2 topParent isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.126'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.127'.
	self
		assert: tmp_GKKF0TJxYr2 topParent numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:2.128'.
	self
		assert: tmp_GKKF0TJxYr2 topParent clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.129'.
	self
		assert: tmp_GKKF0TJxYr2 topParent clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.130'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.131'.
	self
		assert: tmp_GKKF0TJxYr2 numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:2.132'.
	self
		assert: tmp_GKKF0TJxYr2 canvas class
		equals: TSCanvas
		description: 'testDraggingOnNotDraggable_amp:2.133'.
	self
		assert: tmp_GKKF0TJxYr2 canvas showRectangles class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.134'.
	self
		assert: tmp_GKKF0TJxYr2 canvas showRectangles
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.135'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.136'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfFixedShapes
		equals: 0
		description: 'testDraggingOnNotDraggable_amp:2.137'.
	self
		assert: tmp_GKKF0TJxYr2 canvas morph class
		equals: UndefinedObject
		description: 'testDraggingOnNotDraggable_amp:2.138'.
	self
		assert: tmp_GKKF0TJxYr2 canvas morph
		equals: nil
		description: 'testDraggingOnNotDraggable_amp:2.139'.
	self
		assert: tmp_GKKF0TJxYr2 canvas isShape class
		equals: False
		description: 'testDraggingOnNotDraggable_amp:2.140'.
	self
		assert: tmp_GKKF0TJxYr2 canvas isShape
		equals: false
		description: 'testDraggingOnNotDraggable_amp:2.141'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfShapes class
		equals: SmallInteger
		description: 'testDraggingOnNotDraggable_amp:2.142'.
	self
		assert: tmp_GKKF0TJxYr2 canvas numberOfShapes
		equals: 1
		description: 'testDraggingOnNotDraggable_amp:2.143'.
	self
		assert: tmp_GKKF0TJxYr2 canvas clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.144'.
	self
		assert: tmp_GKKF0TJxYr2 canvas clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.145'.
	self
		assert: tmp_GKKF0TJxYr2 clearBackground class
		equals: True
		description: 'testDraggingOnNotDraggable_amp:2.146'.
	self
		assert: tmp_GKKF0TJxYr2 clearBackground
		equals: true
		description: 'testDraggingOnNotDraggable_amp:2.147'
]
