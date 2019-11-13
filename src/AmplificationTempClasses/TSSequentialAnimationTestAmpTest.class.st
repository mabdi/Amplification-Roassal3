Class {
	#name : #TSSequentialAnimationTestAmpTest,
	#superclass : #TSAnimationTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> testAddingAnimations_amp [
	<madeBySmallAmp>
	| animation |
	animation := TSSequentialAnimation new.
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testAddingAnimations_amp:1.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testAddingAnimations_amp:1.2'.
	self
		assert: animation animations size
		equals: 0
		description: 'testAddingAnimations_amp:1.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testAddingAnimations_amp:1.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testAddingAnimations_amp:1.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testAddingAnimations_amp:1.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testAddingAnimations_amp:1.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.11'.
	self
		assert: animation duration totalSeconds
		equals: 0
		description: 'testAddingAnimations_amp:1.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testAddingAnimations_amp:1.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testAddingAnimations_amp:1.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testAddingAnimations_amp:1.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testAddingAnimations_amp:1.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testAddingAnimations_amp:1.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:1.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testAddingAnimations_amp:1.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testAddingAnimations_amp:1.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testAddingAnimations_amp:1.24'.
	self
		assert: animation duration isZero class
		equals: True
		description: 'testAddingAnimations_amp:1.25'.
	self
		assert: animation duration isZero
		equals: true
		description: 'testAddingAnimations_amp:1.26'.
	animation add: (TSTransitionAnimation new duration: 1 second).
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testAddingAnimations_amp:2.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testAddingAnimations_amp:2.2'.
	self
		assert: animation animations size
		equals: 1
		description: 'testAddingAnimations_amp:2.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testAddingAnimations_amp:2.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.5'.
	self
		assert: animation duration seconds
		equals: 1
		description: 'testAddingAnimations_amp:2.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testAddingAnimations_amp:2.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testAddingAnimations_amp:2.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.11'.
	self
		assert: animation duration totalSeconds
		equals: 1
		description: 'testAddingAnimations_amp:2.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testAddingAnimations_amp:2.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testAddingAnimations_amp:2.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testAddingAnimations_amp:2.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testAddingAnimations_amp:2.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testAddingAnimations_amp:2.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:2.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testAddingAnimations_amp:2.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testAddingAnimations_amp:2.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testAddingAnimations_amp:2.24'.
	self
		assert: animation duration isZero class
		equals: False
		description: 'testAddingAnimations_amp:2.25'.
	self
		assert: animation duration isZero
		equals: false
		description: 'testAddingAnimations_amp:2.26'.
	canvas addAnimation: animation.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testAddingAnimations_amp:3.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testAddingAnimations_amp:3.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testAddingAnimations_amp:3.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testAddingAnimations_amp:3.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testAddingAnimations_amp:3.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testAddingAnimations_amp:3.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testAddingAnimations_amp:3.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testAddingAnimations_amp:3.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testAddingAnimations_amp:3.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testAddingAnimations_amp:3.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testAddingAnimations_amp:3.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testAddingAnimations_amp:3.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testAddingAnimations_amp:3.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testAddingAnimations_amp:3.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testAddingAnimations_amp:3.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testAddingAnimations_amp:3.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testAddingAnimations_amp:3.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testAddingAnimations_amp:3.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testAddingAnimations_amp:3.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testAddingAnimations_amp:3.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testAddingAnimations_amp:3.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testAddingAnimations_amp:3.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testAddingAnimations_amp:3.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testAddingAnimations_amp:3.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testAddingAnimations_amp:3.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testAddingAnimations_amp:3.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testAddingAnimations_amp:3.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testAddingAnimations_amp:3.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testAddingAnimations_amp:3.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testAddingAnimations_amp:3.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testAddingAnimations_amp:3.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testAddingAnimations_amp:3.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testAddingAnimations_amp:3.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testAddingAnimations_amp:3.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testAddingAnimations_amp:3.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testAddingAnimations_amp:3.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testAddingAnimations_amp:3.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testAddingAnimations_amp:3.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testAddingAnimations_amp:3.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testAddingAnimations_amp:3.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testAddingAnimations_amp:3.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testAddingAnimations_amp:3.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testAddingAnimations_amp:3.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testAddingAnimations_amp:3.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testAddingAnimations_amp:3.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testAddingAnimations_amp:3.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testAddingAnimations_amp:3.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testAddingAnimations_amp:3.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testAddingAnimations_amp:3.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testAddingAnimations_amp:3.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testAddingAnimations_amp:3.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testAddingAnimations_amp:3.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testAddingAnimations_amp:3.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testAddingAnimations_amp:3.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testAddingAnimations_amp:3.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testAddingAnimations_amp:3.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testAddingAnimations_amp:3.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testAddingAnimations_amp:3.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testAddingAnimations_amp:3.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testAddingAnimations_amp:3.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testAddingAnimations_amp:3.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testAddingAnimations_amp:3.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testAddingAnimations_amp:3.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testAddingAnimations_amp:3.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testAddingAnimations_amp:3.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testAddingAnimations_amp:3.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testAddingAnimations_amp:3.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testAddingAnimations_amp:3.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testAddingAnimations_amp:3.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testAddingAnimations_amp:3.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testAddingAnimations_amp:3.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testAddingAnimations_amp:3.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testAddingAnimations_amp:3.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testAddingAnimations_amp:3.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testAddingAnimations_amp:3.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testAddingAnimations_amp:3.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testAddingAnimations_amp:3.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testAddingAnimations_amp:3.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testAddingAnimations_amp:3.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testAddingAnimations_amp:3.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testAddingAnimations_amp:3.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testAddingAnimations_amp:3.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testAddingAnimations_amp:3.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testAddingAnimations_amp:3.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testAddingAnimations_amp:3.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testAddingAnimations_amp:3.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testAddingAnimations_amp:3.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testAddingAnimations_amp:3.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testAddingAnimations_amp:3.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testAddingAnimations_amp:3.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testAddingAnimations_amp:3.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testAddingAnimations_amp:3.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testAddingAnimations_amp:3.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testAddingAnimations_amp:3.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testAddingAnimations_amp:3.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testAddingAnimations_amp:3.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testAddingAnimations_amp:3.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testAddingAnimations_amp:3.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testAddingAnimations_amp:3.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testAddingAnimations_amp:3.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testAddingAnimations_amp:3.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testAddingAnimations_amp:3.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testAddingAnimations_amp:3.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testAddingAnimations_amp:3.152'.
	canvas addAnimation: animation
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> testBasicCanvas_amp [
	<madeBySmallAmp>
	| animation |
	animation := TSSequentialAnimation new.
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testBasicCanvas_amp:1.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testBasicCanvas_amp:1.2'.
	self
		assert: animation animations size
		equals: 0
		description: 'testBasicCanvas_amp:1.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testBasicCanvas_amp:1.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testBasicCanvas_amp:1.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testBasicCanvas_amp:1.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testBasicCanvas_amp:1.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.11'.
	self
		assert: animation duration totalSeconds
		equals: 0
		description: 'testBasicCanvas_amp:1.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testBasicCanvas_amp:1.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testBasicCanvas_amp:1.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testBasicCanvas_amp:1.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testBasicCanvas_amp:1.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testBasicCanvas_amp:1.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:1.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testBasicCanvas_amp:1.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testBasicCanvas_amp:1.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testBasicCanvas_amp:1.24'.
	self
		assert: animation duration isZero class
		equals: True
		description: 'testBasicCanvas_amp:1.25'.
	self
		assert: animation duration isZero
		equals: true
		description: 'testBasicCanvas_amp:1.26'.
	canvas addAnimation: animation.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testBasicCanvas_amp:2.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testBasicCanvas_amp:2.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testBasicCanvas_amp:2.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testBasicCanvas_amp:2.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testBasicCanvas_amp:2.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testBasicCanvas_amp:2.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testBasicCanvas_amp:2.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testBasicCanvas_amp:2.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testBasicCanvas_amp:2.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testBasicCanvas_amp:2.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testBasicCanvas_amp:2.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testBasicCanvas_amp:2.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testBasicCanvas_amp:2.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testBasicCanvas_amp:2.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testBasicCanvas_amp:2.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testBasicCanvas_amp:2.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testBasicCanvas_amp:2.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testBasicCanvas_amp:2.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testBasicCanvas_amp:2.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testBasicCanvas_amp:2.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testBasicCanvas_amp:2.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testBasicCanvas_amp:2.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testBasicCanvas_amp:2.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testBasicCanvas_amp:2.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testBasicCanvas_amp:2.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testBasicCanvas_amp:2.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testBasicCanvas_amp:2.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testBasicCanvas_amp:2.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testBasicCanvas_amp:2.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testBasicCanvas_amp:2.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testBasicCanvas_amp:2.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testBasicCanvas_amp:2.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testBasicCanvas_amp:2.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testBasicCanvas_amp:2.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testBasicCanvas_amp:2.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testBasicCanvas_amp:2.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testBasicCanvas_amp:2.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testBasicCanvas_amp:2.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testBasicCanvas_amp:2.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testBasicCanvas_amp:2.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testBasicCanvas_amp:2.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testBasicCanvas_amp:2.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testBasicCanvas_amp:2.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testBasicCanvas_amp:2.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testBasicCanvas_amp:2.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testBasicCanvas_amp:2.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testBasicCanvas_amp:2.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testBasicCanvas_amp:2.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testBasicCanvas_amp:2.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testBasicCanvas_amp:2.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testBasicCanvas_amp:2.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testBasicCanvas_amp:2.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testBasicCanvas_amp:2.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testBasicCanvas_amp:2.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testBasicCanvas_amp:2.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testBasicCanvas_amp:2.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testBasicCanvas_amp:2.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testBasicCanvas_amp:2.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testBasicCanvas_amp:2.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testBasicCanvas_amp:2.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testBasicCanvas_amp:2.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testBasicCanvas_amp:2.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testBasicCanvas_amp:2.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testBasicCanvas_amp:2.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testBasicCanvas_amp:2.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testBasicCanvas_amp:2.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testBasicCanvas_amp:2.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testBasicCanvas_amp:2.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testBasicCanvas_amp:2.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testBasicCanvas_amp:2.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testBasicCanvas_amp:2.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testBasicCanvas_amp:2.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testBasicCanvas_amp:2.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testBasicCanvas_amp:2.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testBasicCanvas_amp:2.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testBasicCanvas_amp:2.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testBasicCanvas_amp:2.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testBasicCanvas_amp:2.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testBasicCanvas_amp:2.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testBasicCanvas_amp:2.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testBasicCanvas_amp:2.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testBasicCanvas_amp:2.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testBasicCanvas_amp:2.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testBasicCanvas_amp:2.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testBasicCanvas_amp:2.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testBasicCanvas_amp:2.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testBasicCanvas_amp:2.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testBasicCanvas_amp:2.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testBasicCanvas_amp:2.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testBasicCanvas_amp:2.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testBasicCanvas_amp:2.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testBasicCanvas_amp:2.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testBasicCanvas_amp:2.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testBasicCanvas_amp:2.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testBasicCanvas_amp:2.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testBasicCanvas_amp:2.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testBasicCanvas_amp:2.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testBasicCanvas_amp:2.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testBasicCanvas_amp:2.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testBasicCanvas_amp:2.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testBasicCanvas_amp:2.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testBasicCanvas_amp:2.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testBasicCanvas_amp:2.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testBasicCanvas_amp:2.152'
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> testBasic_amp [
	<madeBySmallAmp>
	self basicAnimation: TSSequentialAnimation new
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> testDelay_amp [
	<madeBySmallAmp>
	| animation tmp_dYjX8gOXCl4 |
	animation := TSSequentialAnimation new delay: 100 milliSeconds.
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testDelay_amp:1.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testDelay_amp:1.2'.
	self
		assert: animation animations size
		equals: 0
		description: 'testDelay_amp:1.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testDelay_amp:1.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testDelay_amp:1.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testDelay_amp:1.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testDelay_amp:1.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testDelay_amp:1.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testDelay_amp:1.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testDelay_amp:1.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testDelay_amp:1.11'.
	self
		assert: animation duration totalSeconds
		equals: 0
		description: 'testDelay_amp:1.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testDelay_amp:1.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testDelay_amp:1.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testDelay_amp:1.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testDelay_amp:1.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testDelay_amp:1.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testDelay_amp:1.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testDelay_amp:1.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testDelay_amp:1.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testDelay_amp:1.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testDelay_amp:1.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testDelay_amp:1.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testDelay_amp:1.24'.
	self
		assert: animation duration isZero class
		equals: True
		description: 'testDelay_amp:1.25'.
	self
		assert: animation duration isZero
		equals: true
		description: 'testDelay_amp:1.26'.
	animation start.
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testDelay_amp:2.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testDelay_amp:2.2'.
	self
		assert: animation animations size
		equals: 0
		description: 'testDelay_amp:2.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testDelay_amp:2.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testDelay_amp:2.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testDelay_amp:2.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testDelay_amp:2.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testDelay_amp:2.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testDelay_amp:2.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testDelay_amp:2.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testDelay_amp:2.11'.
	self
		assert: animation duration totalSeconds
		equals: 0
		description: 'testDelay_amp:2.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testDelay_amp:2.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testDelay_amp:2.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testDelay_amp:2.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testDelay_amp:2.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testDelay_amp:2.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testDelay_amp:2.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testDelay_amp:2.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testDelay_amp:2.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testDelay_amp:2.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testDelay_amp:2.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testDelay_amp:2.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testDelay_amp:2.24'.
	self
		assert: animation duration isZero class
		equals: True
		description: 'testDelay_amp:2.25'.
	self
		assert: animation duration isZero
		equals: true
		description: 'testDelay_amp:2.26'.
	tmp_dYjX8gOXCl4 := Delay forMilliseconds: 101.
	self
		assert: tmp_dYjX8gOXCl4 class
		equals: Delay
		description: 'testDelay_amp:3.1'.
	tmp_dYjX8gOXCl4 wait.
	self
		assert: tmp_dYjX8gOXCl4 class
		equals: Delay
		description: 'testDelay_amp:4.1'
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> testStepEvent_10 [
	<madeBySmallAmp>
	| value loop animation |
	canvas := TSCanvas new.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testStepEvent_10:1.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testStepEvent_10:1.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testStepEvent_10:1.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testStepEvent_10:1.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testStepEvent_10:1.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testStepEvent_10:1.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testStepEvent_10:1.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testStepEvent_10:1.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testStepEvent_10:1.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testStepEvent_10:1.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testStepEvent_10:1.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testStepEvent_10:1.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testStepEvent_10:1.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testStepEvent_10:1.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testStepEvent_10:1.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testStepEvent_10:1.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testStepEvent_10:1.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testStepEvent_10:1.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testStepEvent_10:1.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:1.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testStepEvent_10:1.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testStepEvent_10:1.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testStepEvent_10:1.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testStepEvent_10:1.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testStepEvent_10:1.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testStepEvent_10:1.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testStepEvent_10:1.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testStepEvent_10:1.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testStepEvent_10:1.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testStepEvent_10:1.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testStepEvent_10:1.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testStepEvent_10:1.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testStepEvent_10:1.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testStepEvent_10:1.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testStepEvent_10:1.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testStepEvent_10:1.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testStepEvent_10:1.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:1.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testStepEvent_10:1.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testStepEvent_10:1.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testStepEvent_10:1.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testStepEvent_10:1.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testStepEvent_10:1.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testStepEvent_10:1.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testStepEvent_10:1.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testStepEvent_10:1.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testStepEvent_10:1.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testStepEvent_10:1.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_10:1.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testStepEvent_10:1.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_10:1.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_10:1.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_10:1.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testStepEvent_10:1.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testStepEvent_10:1.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testStepEvent_10:1.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_10:1.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testStepEvent_10:1.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_10:1.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testStepEvent_10:1.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_10:1.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testStepEvent_10:1.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testStepEvent_10:1.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testStepEvent_10:1.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testStepEvent_10:1.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testStepEvent_10:1.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_10:1.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testStepEvent_10:1.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testStepEvent_10:1.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testStepEvent_10:1.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_10:1.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testStepEvent_10:1.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testStepEvent_10:1.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testStepEvent_10:1.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testStepEvent_10:1.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testStepEvent_10:1.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_10:1.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testStepEvent_10:1.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_10:1.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_10:1.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_10:1.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testStepEvent_10:1.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testStepEvent_10:1.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testStepEvent_10:1.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_10:1.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testStepEvent_10:1.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_10:1.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testStepEvent_10:1.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_10:1.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testStepEvent_10:1.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testStepEvent_10:1.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testStepEvent_10:1.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testStepEvent_10:1.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testStepEvent_10:1.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_10:1.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testStepEvent_10:1.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testStepEvent_10:1.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testStepEvent_10:1.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_10:1.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testStepEvent_10:1.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testStepEvent_10:1.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testStepEvent_10:1.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testStepEvent_10:1.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:1.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testStepEvent_10:1.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testStepEvent_10:1.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testStepEvent_10:1.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testStepEvent_10:1.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testStepEvent_10:1.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testStepEvent_10:1.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testStepEvent_10:1.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_10:1.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testStepEvent_10:1.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testStepEvent_10:1.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testStepEvent_10:1.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:1.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testStepEvent_10:1.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_10:1.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testStepEvent_10:1.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testStepEvent_10:1.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testStepEvent_10:1.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:1.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_10:1.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testStepEvent_10:1.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testStepEvent_10:1.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testStepEvent_10:1.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testStepEvent_10:1.152'.
	value := nil.
	loop := 0.
	animation := TSSequentialAnimation new
		loops: 6;
		add:
			(TSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: TSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testStepEvent_10:4.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testStepEvent_10:4.2'.
	self
		assert: animation animations size
		equals: 1
		description: 'testStepEvent_10:4.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testStepEvent_10:4.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testStepEvent_10:4.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testStepEvent_10:4.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testStepEvent_10:4.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testStepEvent_10:4.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testStepEvent_10:4.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testStepEvent_10:4.10'.
	self
		assert: animation duration totalSeconds class
		equals: Fraction
		description: 'testStepEvent_10:4.11'.
	self
		assert: animation duration totalSeconds asString
		equals: '(1/10)'
		description: 'testStepEvent_10:4.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testStepEvent_10:4.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testStepEvent_10:4.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testStepEvent_10:4.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testStepEvent_10:4.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testStepEvent_10:4.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 100
		description: 'testStepEvent_10:4.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testStepEvent_10:4.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testStepEvent_10:4.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testStepEvent_10:4.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testStepEvent_10:4.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testStepEvent_10:4.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testStepEvent_10:4.24'.
	self
		assert: animation duration isZero class
		equals: False
		description: 'testStepEvent_10:4.25'.
	self
		assert: animation duration isZero
		equals: false
		description: 'testStepEvent_10:4.26'.
	canvas addAnimation: animation.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testStepEvent_10:5.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testStepEvent_10:5.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testStepEvent_10:5.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testStepEvent_10:5.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testStepEvent_10:5.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testStepEvent_10:5.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testStepEvent_10:5.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testStepEvent_10:5.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testStepEvent_10:5.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testStepEvent_10:5.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testStepEvent_10:5.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testStepEvent_10:5.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testStepEvent_10:5.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testStepEvent_10:5.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testStepEvent_10:5.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testStepEvent_10:5.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testStepEvent_10:5.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testStepEvent_10:5.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testStepEvent_10:5.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:5.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testStepEvent_10:5.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testStepEvent_10:5.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testStepEvent_10:5.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testStepEvent_10:5.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testStepEvent_10:5.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testStepEvent_10:5.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testStepEvent_10:5.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testStepEvent_10:5.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testStepEvent_10:5.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testStepEvent_10:5.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testStepEvent_10:5.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testStepEvent_10:5.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testStepEvent_10:5.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testStepEvent_10:5.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testStepEvent_10:5.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testStepEvent_10:5.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testStepEvent_10:5.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:5.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testStepEvent_10:5.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testStepEvent_10:5.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testStepEvent_10:5.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testStepEvent_10:5.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testStepEvent_10:5.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testStepEvent_10:5.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testStepEvent_10:5.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testStepEvent_10:5.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testStepEvent_10:5.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testStepEvent_10:5.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_10:5.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testStepEvent_10:5.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_10:5.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_10:5.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_10:5.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testStepEvent_10:5.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testStepEvent_10:5.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testStepEvent_10:5.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_10:5.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testStepEvent_10:5.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_10:5.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testStepEvent_10:5.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_10:5.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testStepEvent_10:5.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testStepEvent_10:5.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testStepEvent_10:5.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testStepEvent_10:5.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testStepEvent_10:5.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_10:5.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testStepEvent_10:5.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testStepEvent_10:5.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testStepEvent_10:5.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_10:5.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testStepEvent_10:5.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testStepEvent_10:5.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testStepEvent_10:5.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testStepEvent_10:5.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testStepEvent_10:5.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_10:5.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testStepEvent_10:5.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_10:5.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_10:5.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_10:5.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testStepEvent_10:5.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testStepEvent_10:5.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testStepEvent_10:5.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_10:5.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testStepEvent_10:5.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_10:5.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testStepEvent_10:5.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_10:5.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testStepEvent_10:5.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testStepEvent_10:5.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testStepEvent_10:5.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testStepEvent_10:5.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testStepEvent_10:5.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_10:5.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testStepEvent_10:5.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testStepEvent_10:5.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testStepEvent_10:5.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_10:5.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testStepEvent_10:5.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testStepEvent_10:5.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testStepEvent_10:5.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testStepEvent_10:5.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:5.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testStepEvent_10:5.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testStepEvent_10:5.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testStepEvent_10:5.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testStepEvent_10:5.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testStepEvent_10:5.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testStepEvent_10:5.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testStepEvent_10:5.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_10:5.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testStepEvent_10:5.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testStepEvent_10:5.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testStepEvent_10:5.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_10:5.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testStepEvent_10:5.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_10:5.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testStepEvent_10:5.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testStepEvent_10:5.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testStepEvent_10:5.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_10:5.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_10:5.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testStepEvent_10:5.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testStepEvent_10:5.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testStepEvent_10:5.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testStepEvent_10:5.152'.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
		description: 'testStepEvent_10:6.1'
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> testStepEvent_amp [
	<madeBySmallAmp>
	| value loop animation |
	canvas := TSCanvas new.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testStepEvent_amp:1.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testStepEvent_amp:1.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testStepEvent_amp:1.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testStepEvent_amp:1.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testStepEvent_amp:1.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testStepEvent_amp:1.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testStepEvent_amp:1.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testStepEvent_amp:1.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testStepEvent_amp:1.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testStepEvent_amp:1.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testStepEvent_amp:1.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testStepEvent_amp:1.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testStepEvent_amp:1.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testStepEvent_amp:1.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testStepEvent_amp:1.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testStepEvent_amp:1.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testStepEvent_amp:1.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testStepEvent_amp:1.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testStepEvent_amp:1.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:1.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testStepEvent_amp:1.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testStepEvent_amp:1.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testStepEvent_amp:1.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testStepEvent_amp:1.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testStepEvent_amp:1.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testStepEvent_amp:1.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testStepEvent_amp:1.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testStepEvent_amp:1.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testStepEvent_amp:1.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testStepEvent_amp:1.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testStepEvent_amp:1.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testStepEvent_amp:1.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testStepEvent_amp:1.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testStepEvent_amp:1.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testStepEvent_amp:1.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:1.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testStepEvent_amp:1.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testStepEvent_amp:1.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testStepEvent_amp:1.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testStepEvent_amp:1.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:1.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testStepEvent_amp:1.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testStepEvent_amp:1.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testStepEvent_amp:1.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testStepEvent_amp:1.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testStepEvent_amp:1.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testStepEvent_amp:1.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_amp:1.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_amp:1.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testStepEvent_amp:1.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testStepEvent_amp:1.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testStepEvent_amp:1.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testStepEvent_amp:1.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testStepEvent_amp:1.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testStepEvent_amp:1.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testStepEvent_amp:1.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testStepEvent_amp:1.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testStepEvent_amp:1.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testStepEvent_amp:1.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testStepEvent_amp:1.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testStepEvent_amp:1.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testStepEvent_amp:1.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testStepEvent_amp:1.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testStepEvent_amp:1.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testStepEvent_amp:1.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testStepEvent_amp:1.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testStepEvent_amp:1.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testStepEvent_amp:1.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_amp:1.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_amp:1.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testStepEvent_amp:1.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testStepEvent_amp:1.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testStepEvent_amp:1.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testStepEvent_amp:1.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testStepEvent_amp:1.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testStepEvent_amp:1.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testStepEvent_amp:1.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testStepEvent_amp:1.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testStepEvent_amp:1.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testStepEvent_amp:1.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testStepEvent_amp:1.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testStepEvent_amp:1.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testStepEvent_amp:1.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testStepEvent_amp:1.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testStepEvent_amp:1.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testStepEvent_amp:1.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testStepEvent_amp:1.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:1.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testStepEvent_amp:1.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testStepEvent_amp:1.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testStepEvent_amp:1.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testStepEvent_amp:1.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:1.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testStepEvent_amp:1.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testStepEvent_amp:1.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:1.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testStepEvent_amp:1.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testStepEvent_amp:1.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testStepEvent_amp:1.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:1.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testStepEvent_amp:1.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:1.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testStepEvent_amp:1.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testStepEvent_amp:1.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testStepEvent_amp:1.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:1.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:1.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testStepEvent_amp:1.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testStepEvent_amp:1.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testStepEvent_amp:1.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testStepEvent_amp:1.152'.
	value := nil.
	loop := 0.
	animation := TSSequentialAnimation new
		loops: 3;
		add:
			(TSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: TSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testStepEvent_amp:4.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testStepEvent_amp:4.2'.
	self
		assert: animation animations size
		equals: 1
		description: 'testStepEvent_amp:4.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testStepEvent_amp:4.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testStepEvent_amp:4.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testStepEvent_amp:4.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testStepEvent_amp:4.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testStepEvent_amp:4.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testStepEvent_amp:4.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testStepEvent_amp:4.10'.
	self
		assert: animation duration totalSeconds class
		equals: Fraction
		description: 'testStepEvent_amp:4.11'.
	self
		assert: animation duration totalSeconds asString
		equals: '(1/10)'
		description: 'testStepEvent_amp:4.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testStepEvent_amp:4.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testStepEvent_amp:4.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testStepEvent_amp:4.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testStepEvent_amp:4.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testStepEvent_amp:4.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 100
		description: 'testStepEvent_amp:4.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testStepEvent_amp:4.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testStepEvent_amp:4.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testStepEvent_amp:4.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testStepEvent_amp:4.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testStepEvent_amp:4.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testStepEvent_amp:4.24'.
	self
		assert: animation duration isZero class
		equals: False
		description: 'testStepEvent_amp:4.25'.
	self
		assert: animation duration isZero
		equals: false
		description: 'testStepEvent_amp:4.26'.
	canvas addAnimation: animation.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testStepEvent_amp:5.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testStepEvent_amp:5.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testStepEvent_amp:5.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testStepEvent_amp:5.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testStepEvent_amp:5.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testStepEvent_amp:5.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testStepEvent_amp:5.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testStepEvent_amp:5.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testStepEvent_amp:5.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testStepEvent_amp:5.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testStepEvent_amp:5.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testStepEvent_amp:5.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testStepEvent_amp:5.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testStepEvent_amp:5.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testStepEvent_amp:5.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testStepEvent_amp:5.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testStepEvent_amp:5.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testStepEvent_amp:5.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testStepEvent_amp:5.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:5.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testStepEvent_amp:5.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testStepEvent_amp:5.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testStepEvent_amp:5.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testStepEvent_amp:5.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testStepEvent_amp:5.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testStepEvent_amp:5.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testStepEvent_amp:5.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testStepEvent_amp:5.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testStepEvent_amp:5.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testStepEvent_amp:5.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testStepEvent_amp:5.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testStepEvent_amp:5.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testStepEvent_amp:5.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testStepEvent_amp:5.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testStepEvent_amp:5.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:5.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testStepEvent_amp:5.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testStepEvent_amp:5.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testStepEvent_amp:5.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testStepEvent_amp:5.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:5.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testStepEvent_amp:5.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testStepEvent_amp:5.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testStepEvent_amp:5.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testStepEvent_amp:5.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testStepEvent_amp:5.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testStepEvent_amp:5.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_amp:5.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_amp:5.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testStepEvent_amp:5.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testStepEvent_amp:5.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testStepEvent_amp:5.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testStepEvent_amp:5.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testStepEvent_amp:5.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testStepEvent_amp:5.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testStepEvent_amp:5.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testStepEvent_amp:5.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testStepEvent_amp:5.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testStepEvent_amp:5.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testStepEvent_amp:5.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testStepEvent_amp:5.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testStepEvent_amp:5.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testStepEvent_amp:5.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.90'.
	self
		assert: canvas view
		equals: nil
		description: 'testStepEvent_amp:5.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testStepEvent_amp:5.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testStepEvent_amp:5.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testStepEvent_amp:5.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testStepEvent_amp:5.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testStepEvent_amp:5.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testStepEvent_amp:5.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testStepEvent_amp:5.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testStepEvent_amp:5.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testStepEvent_amp:5.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testStepEvent_amp:5.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testStepEvent_amp:5.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testStepEvent_amp:5.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testStepEvent_amp:5.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testStepEvent_amp:5.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testStepEvent_amp:5.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testStepEvent_amp:5.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testStepEvent_amp:5.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testStepEvent_amp:5.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testStepEvent_amp:5.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testStepEvent_amp:5.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testStepEvent_amp:5.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testStepEvent_amp:5.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testStepEvent_amp:5.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:5.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testStepEvent_amp:5.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testStepEvent_amp:5.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testStepEvent_amp:5.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testStepEvent_amp:5.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:5.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testStepEvent_amp:5.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testStepEvent_amp:5.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:5.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testStepEvent_amp:5.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testStepEvent_amp:5.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testStepEvent_amp:5.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testStepEvent_amp:5.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testStepEvent_amp:5.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testStepEvent_amp:5.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testStepEvent_amp:5.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testStepEvent_amp:5.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testStepEvent_amp:5.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStepEvent_amp:5.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testStepEvent_amp:5.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testStepEvent_amp:5.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testStepEvent_amp:5.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testStepEvent_amp:5.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testStepEvent_amp:5.152'.
	self runAnimation: animation threshold: 500
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestAmpTest >> testStep_amp [
	<madeBySmallAmp>
	| value animation |
	value := 0.
	animation := TSSequentialAnimation new
		add: (TSTransitionAnimation new onStepDo: [ :t | value := value + 1 ]);
		yourself.
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testStep_amp:2.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testStep_amp:2.2'.
	self
		assert: animation animations size
		equals: 1
		description: 'testStep_amp:2.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testStep_amp:2.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testStep_amp:2.5'.
	self
		assert: animation duration seconds
		equals: 2
		description: 'testStep_amp:2.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testStep_amp:2.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testStep_amp:2.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testStep_amp:2.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testStep_amp:2.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testStep_amp:2.11'.
	self
		assert: animation duration totalSeconds
		equals: 2
		description: 'testStep_amp:2.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testStep_amp:2.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testStep_amp:2.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testStep_amp:2.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testStep_amp:2.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testStep_amp:2.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testStep_amp:2.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testStep_amp:2.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testStep_amp:2.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testStep_amp:2.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testStep_amp:2.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testStep_amp:2.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testStep_amp:2.24'.
	self
		assert: animation duration isZero class
		equals: False
		description: 'testStep_amp:2.25'.
	self
		assert: animation duration isZero
		equals: false
		description: 'testStep_amp:2.26'.
	canvas addAnimation: animation.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testStep_amp:3.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testStep_amp:3.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testStep_amp:3.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testStep_amp:3.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testStep_amp:3.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testStep_amp:3.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testStep_amp:3.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testStep_amp:3.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testStep_amp:3.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testStep_amp:3.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testStep_amp:3.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testStep_amp:3.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testStep_amp:3.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testStep_amp:3.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testStep_amp:3.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testStep_amp:3.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testStep_amp:3.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testStep_amp:3.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testStep_amp:3.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testStep_amp:3.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testStep_amp:3.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testStep_amp:3.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testStep_amp:3.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testStep_amp:3.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testStep_amp:3.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testStep_amp:3.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testStep_amp:3.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testStep_amp:3.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testStep_amp:3.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testStep_amp:3.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:3.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testStep_amp:3.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testStep_amp:3.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testStep_amp:3.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testStep_amp:3.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testStep_amp:3.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testStep_amp:3.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testStep_amp:3.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testStep_amp:3.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testStep_amp:3.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testStep_amp:3.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testStep_amp:3.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testStep_amp:3.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testStep_amp:3.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testStep_amp:3.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testStep_amp:3.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testStep_amp:3.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testStep_amp:3.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testStep_amp:3.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:3.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testStep_amp:3.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testStep_amp:3.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testStep_amp:3.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testStep_amp:3.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testStep_amp:3.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testStep_amp:3.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testStep_amp:3.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testStep_amp:3.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testStep_amp:3.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testStep_amp:3.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testStep_amp:3.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testStep_amp:3.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testStep_amp:3.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testStep_amp:3.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testStep_amp:3.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testStep_amp:3.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testStep_amp:3.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testStep_amp:3.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testStep_amp:3.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testStep_amp:3.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testStep_amp:3.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testStep_amp:3.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testStep_amp:3.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testStep_amp:3.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testStep_amp:3.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testStep_amp:3.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testStep_amp:3.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testStep_amp:3.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testStep_amp:3.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testStep_amp:3.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testStep_amp:3.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testStep_amp:3.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testStep_amp:3.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testStep_amp:3.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testStep_amp:3.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testStep_amp:3.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testStep_amp:3.90'.
	self assert: canvas view equals: nil description: 'testStep_amp:3.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testStep_amp:3.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testStep_amp:3.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testStep_amp:3.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testStep_amp:3.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testStep_amp:3.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testStep_amp:3.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testStep_amp:3.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testStep_amp:3.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testStep_amp:3.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testStep_amp:3.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testStep_amp:3.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testStep_amp:3.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testStep_amp:3.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testStep_amp:3.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testStep_amp:3.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testStep_amp:3.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testStep_amp:3.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testStep_amp:3.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testStep_amp:3.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testStep_amp:3.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testStep_amp:3.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testStep_amp:3.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testStep_amp:3.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testStep_amp:3.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testStep_amp:3.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testStep_amp:3.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testStep_amp:3.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testStep_amp:3.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testStep_amp:3.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testStep_amp:3.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:3.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testStep_amp:3.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testStep_amp:3.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testStep_amp:3.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testStep_amp:3.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testStep_amp:3.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testStep_amp:3.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testStep_amp:3.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testStep_amp:3.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testStep_amp:3.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testStep_amp:3.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testStep_amp:3.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testStep_amp:3.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testStep_amp:3.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:3.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testStep_amp:3.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testStep_amp:3.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testStep_amp:3.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testStep_amp:3.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testStep_amp:3.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testStep_amp:3.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:3.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testStep_amp:3.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testStep_amp:3.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testStep_amp:3.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testStep_amp:3.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testStep_amp:3.152'.
	canvas playAnimations.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testStep_amp:4.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testStep_amp:4.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testStep_amp:4.3'.
	self
		assert: canvas showRectangles class
		equals: False
		description: 'testStep_amp:4.4'.
	self
		assert: canvas showRectangles
		equals: false
		description: 'testStep_amp:4.5'.
	self
		assert: canvas color class
		equals: Color
		description: 'testStep_amp:4.6'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testStep_amp:4.7'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testStep_amp:4.8'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testStep_amp:4.9'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testStep_amp:4.10'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testStep_amp:4.11'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testStep_amp:4.12'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testStep_amp:4.13'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testStep_amp:4.14'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testStep_amp:4.15'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testStep_amp:4.16'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testStep_amp:4.17'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testStep_amp:4.18'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testStep_amp:4.19'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testStep_amp:4.20'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testStep_amp:4.21'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testStep_amp:4.22'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testStep_amp:4.23'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testStep_amp:4.24'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testStep_amp:4.25'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testStep_amp:4.26'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testStep_amp:4.27'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testStep_amp:4.28'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testStep_amp:4.29'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testStep_amp:4.30'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.31'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:4.32'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testStep_amp:4.33'.
	self
		assert: canvas morph
		equals: nil
		description: 'testStep_amp:4.34'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testStep_amp:4.35'.
	self
		assert: canvas extent isZero class
		equals: False
		description: 'testStep_amp:4.36'.
	self
		assert: canvas extent isZero
		equals: false
		description: 'testStep_amp:4.37'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testStep_amp:4.38'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testStep_amp:4.39'.
	self
		assert: canvas extent isFloatPoint class
		equals: False
		description: 'testStep_amp:4.40'.
	self
		assert: canvas extent isFloatPoint
		equals: false
		description: 'testStep_amp:4.41'.
	self
		assert: canvas extent isIntegerPoint class
		equals: True
		description: 'testStep_amp:4.42'.
	self
		assert: canvas extent isIntegerPoint
		equals: true
		description: 'testStep_amp:4.43'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testStep_amp:4.44'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testStep_amp:4.45'.
	self
		assert: canvas extent isPoint class
		equals: True
		description: 'testStep_amp:4.46'.
	self
		assert: canvas extent isPoint
		equals: true
		description: 'testStep_amp:4.47'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testStep_amp:4.48'.
	self
		assert: canvas parent showRectangles class
		equals: False
		description: 'testStep_amp:4.49'.
	self
		assert: canvas parent showRectangles
		equals: false
		description: 'testStep_amp:4.50'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.51'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:4.52'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testStep_amp:4.53'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testStep_amp:4.54'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testStep_amp:4.55'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testStep_amp:4.56'.
	self
		assert: canvas parent isShape class
		equals: False
		description: 'testStep_amp:4.57'.
	self
		assert: canvas parent isShape
		equals: false
		description: 'testStep_amp:4.58'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.59'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testStep_amp:4.60'.
	self
		assert: canvas parent clearBackground class
		equals: True
		description: 'testStep_amp:4.61'.
	self
		assert: canvas parent clearBackground
		equals: true
		description: 'testStep_amp:4.62'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testStep_amp:4.63'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testStep_amp:4.64'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testStep_amp:4.65'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testStep_amp:4.66'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testStep_amp:4.67'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent class
		equals: True
		description: 'testStep_amp:4.68'.
	self
		assert: canvas encompassingRectangle hasPositiveExtent
		equals: true
		description: 'testStep_amp:4.69'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testStep_amp:4.70'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testStep_amp:4.71'.
	self
		assert: canvas encompassingRectangle isTall class
		equals: False
		description: 'testStep_amp:4.72'.
	self
		assert: canvas encompassingRectangle isTall
		equals: false
		description: 'testStep_amp:4.73'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testStep_amp:4.74'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testStep_amp:4.75'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testStep_amp:4.76'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testStep_amp:4.77'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testStep_amp:4.78'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testStep_amp:4.79'.
	self
		assert: canvas encompassingRectangle isZero class
		equals: False
		description: 'testStep_amp:4.80'.
	self
		assert: canvas encompassingRectangle isZero
		equals: false
		description: 'testStep_amp:4.81'.
	self
		assert: canvas encompassingRectangle isWide class
		equals: False
		description: 'testStep_amp:4.82'.
	self
		assert: canvas encompassingRectangle isWide
		equals: false
		description: 'testStep_amp:4.83'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testStep_amp:4.84'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testStep_amp:4.85'.
	self
		assert: canvas encompassingRectangle isRectangle class
		equals: True
		description: 'testStep_amp:4.86'.
	self
		assert: canvas encompassingRectangle isRectangle
		equals: true
		description: 'testStep_amp:4.87'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testStep_amp:4.88'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testStep_amp:4.89'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testStep_amp:4.90'.
	self assert: canvas view equals: nil description: 'testStep_amp:4.91'.
	self
		assert: canvas isShape class
		equals: False
		description: 'testStep_amp:4.92'.
	self
		assert: canvas isShape
		equals: false
		description: 'testStep_amp:4.93'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testStep_amp:4.94'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testStep_amp:4.95'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testStep_amp:4.96'.
	self
		assert: canvas basicRectangle hasPositiveExtent class
		equals: True
		description: 'testStep_amp:4.97'.
	self
		assert: canvas basicRectangle hasPositiveExtent
		equals: true
		description: 'testStep_amp:4.98'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testStep_amp:4.99'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testStep_amp:4.100'.
	self
		assert: canvas basicRectangle isTall class
		equals: False
		description: 'testStep_amp:4.101'.
	self
		assert: canvas basicRectangle isTall
		equals: false
		description: 'testStep_amp:4.102'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testStep_amp:4.103'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testStep_amp:4.104'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testStep_amp:4.105'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testStep_amp:4.106'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testStep_amp:4.107'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testStep_amp:4.108'.
	self
		assert: canvas basicRectangle isZero class
		equals: False
		description: 'testStep_amp:4.109'.
	self
		assert: canvas basicRectangle isZero
		equals: false
		description: 'testStep_amp:4.110'.
	self
		assert: canvas basicRectangle isWide class
		equals: False
		description: 'testStep_amp:4.111'.
	self
		assert: canvas basicRectangle isWide
		equals: false
		description: 'testStep_amp:4.112'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testStep_amp:4.113'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testStep_amp:4.114'.
	self
		assert: canvas basicRectangle isRectangle class
		equals: True
		description: 'testStep_amp:4.115'.
	self
		assert: canvas basicRectangle isRectangle
		equals: true
		description: 'testStep_amp:4.116'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testStep_amp:4.117'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testStep_amp:4.118'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testStep_amp:4.119'.
	self
		assert: canvas topParent showRectangles class
		equals: False
		description: 'testStep_amp:4.120'.
	self
		assert: canvas topParent showRectangles
		equals: false
		description: 'testStep_amp:4.121'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.122'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:4.123'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testStep_amp:4.124'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testStep_amp:4.125'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testStep_amp:4.126'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testStep_amp:4.127'.
	self
		assert: canvas topParent isShape class
		equals: False
		description: 'testStep_amp:4.128'.
	self
		assert: canvas topParent isShape
		equals: false
		description: 'testStep_amp:4.129'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.130'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testStep_amp:4.131'.
	self
		assert: canvas topParent clearBackground class
		equals: True
		description: 'testStep_amp:4.132'.
	self
		assert: canvas topParent clearBackground
		equals: true
		description: 'testStep_amp:4.133'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.134'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testStep_amp:4.135'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testStep_amp:4.136'.
	self
		assert: canvas canvas showRectangles class
		equals: False
		description: 'testStep_amp:4.137'.
	self
		assert: canvas canvas showRectangles
		equals: false
		description: 'testStep_amp:4.138'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.139'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testStep_amp:4.140'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testStep_amp:4.141'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testStep_amp:4.142'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testStep_amp:4.143'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testStep_amp:4.144'.
	self
		assert: canvas canvas isShape class
		equals: False
		description: 'testStep_amp:4.145'.
	self
		assert: canvas canvas isShape
		equals: false
		description: 'testStep_amp:4.146'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testStep_amp:4.147'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testStep_amp:4.148'.
	self
		assert: canvas canvas clearBackground class
		equals: True
		description: 'testStep_amp:4.149'.
	self
		assert: canvas canvas clearBackground
		equals: true
		description: 'testStep_amp:4.150'.
	self
		assert: canvas clearBackground class
		equals: True
		description: 'testStep_amp:4.151'.
	self
		assert: canvas clearBackground
		equals: true
		description: 'testStep_amp:4.152'
]
