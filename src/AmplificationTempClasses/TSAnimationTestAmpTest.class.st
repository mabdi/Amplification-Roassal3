Class {
	#name : #TSAnimationTestAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'canvas'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> setUp [
	canvas := TSCanvas new.
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> testSequentialAnimationCreation_amp [
	<madeBySmallAmp>
	| animation |
	animation := canvas animationFrom: {}.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation_amp:1.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testSequentialAnimationCreation_amp:1.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testSequentialAnimationCreation_amp:1.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testSequentialAnimationCreation_amp:1.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testSequentialAnimationCreation_amp:1.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testSequentialAnimationCreation_amp:1.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testSequentialAnimationCreation_amp:1.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testSequentialAnimationCreation_amp:1.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testSequentialAnimationCreation_amp:1.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testSequentialAnimationCreation_amp:1.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testSequentialAnimationCreation_amp:1.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testSequentialAnimationCreation_amp:1.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testSequentialAnimationCreation_amp:1.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testSequentialAnimationCreation_amp:1.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation_amp:1.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testSequentialAnimationCreation_amp:1.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testSequentialAnimationCreation_amp:1.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testSequentialAnimationCreation_amp:1.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testSequentialAnimationCreation_amp:1.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation_amp:1.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testSequentialAnimationCreation_amp:1.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testSequentialAnimationCreation_amp:1.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testSequentialAnimationCreation_amp:1.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testSequentialAnimationCreation_amp:1.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testSequentialAnimationCreation_amp:1.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testSequentialAnimationCreation_amp:1.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testSequentialAnimationCreation_amp:1.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testSequentialAnimationCreation_amp:1.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testSequentialAnimationCreation_amp:1.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testSequentialAnimationCreation_amp:1.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testSequentialAnimationCreation_amp:1.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testSequentialAnimationCreation_amp:1.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testSequentialAnimationCreation_amp:1.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation_amp:1.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation_amp:1.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation_amp:1.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testSequentialAnimationCreation_amp:1.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.152'.
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testSequentialAnimationCreation_amp:1.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testSequentialAnimationCreation_amp:1.2'.
	self
		assert: animation animations size
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testSequentialAnimationCreation_amp:1.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.11'.
	self
		assert: animation duration totalSeconds
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testSequentialAnimationCreation_amp:1.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testSequentialAnimationCreation_amp:1.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation_amp:1.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testSequentialAnimationCreation_amp:1.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.24'.
	self
		assert: animation duration isZero class
		equals: True
		description: 'testSequentialAnimationCreation_amp:1.25'.
	self
		assert: animation duration isZero
		equals: true
		description: 'testSequentialAnimationCreation_amp:1.26'
]

{ #category : #'as yet unclassified' }
TSAnimationTestAmpTest >> testTransitionAnimationCreation_amp [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation_amp:1.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testTransitionAnimationCreation_amp:1.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testTransitionAnimationCreation_amp:1.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testTransitionAnimationCreation_amp:1.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testTransitionAnimationCreation_amp:1.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testTransitionAnimationCreation_amp:1.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testTransitionAnimationCreation_amp:1.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testTransitionAnimationCreation_amp:1.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testTransitionAnimationCreation_amp:1.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testTransitionAnimationCreation_amp:1.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testTransitionAnimationCreation_amp:1.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testTransitionAnimationCreation_amp:1.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testTransitionAnimationCreation_amp:1.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testTransitionAnimationCreation_amp:1.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation_amp:1.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testTransitionAnimationCreation_amp:1.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testTransitionAnimationCreation_amp:1.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testTransitionAnimationCreation_amp:1.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testTransitionAnimationCreation_amp:1.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation_amp:1.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testTransitionAnimationCreation_amp:1.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testTransitionAnimationCreation_amp:1.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testTransitionAnimationCreation_amp:1.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testTransitionAnimationCreation_amp:1.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testTransitionAnimationCreation_amp:1.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testTransitionAnimationCreation_amp:1.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testTransitionAnimationCreation_amp:1.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testTransitionAnimationCreation_amp:1.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testTransitionAnimationCreation_amp:1.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testTransitionAnimationCreation_amp:1.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testTransitionAnimationCreation_amp:1.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testTransitionAnimationCreation_amp:1.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testTransitionAnimationCreation_amp:1.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation_amp:1.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation_amp:1.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation_amp:1.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testTransitionAnimationCreation_amp:1.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.152'.
	self
		assert: animation class
		equals: TSTransitionAnimation
		description: 'testTransitionAnimationCreation_amp:1.1'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testTransitionAnimationCreation_amp:1.2'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.3'.
	self
		assert: animation duration seconds
		equals: 2
		description: 'testTransitionAnimationCreation_amp:1.4'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.5'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.6'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.7'.
	self
		assert: animation duration days
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.8'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.9'.
	self
		assert: animation duration totalSeconds
		equals: 2
		description: 'testTransitionAnimationCreation_amp:1.10'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.11'.
	self
		assert: animation duration negative
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.12'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.13'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.14'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.15'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.16'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.17'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.18'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.19'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.20'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testTransitionAnimationCreation_amp:1.21'.
	self
		assert: animation duration positive
		equals: true
		description: 'testTransitionAnimationCreation_amp:1.22'.
	self
		assert: animation duration isZero class
		equals: False
		description: 'testTransitionAnimationCreation_amp:1.23'.
	self
		assert: animation duration isZero
		equals: false
		description: 'testTransitionAnimationCreation_amp:1.24'.
	self
		assert: animation scale class
		equals: TSScaleLinear
		description: 'testTransitionAnimationCreation_amp:1.25'.
	self
		assert: animation to class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.26'.
	self
		assert: animation to
		equals: 1
		description: 'testTransitionAnimationCreation_amp:1.27'.
	self
		assert: animation from class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation_amp:1.28'.
	self
		assert: animation from
		equals: 0
		description: 'testTransitionAnimationCreation_amp:1.29'.
	self
		assert: animation easing class
		equals: TSLinearInterpolator
		description: 'testTransitionAnimationCreation_amp:1.30'
]
