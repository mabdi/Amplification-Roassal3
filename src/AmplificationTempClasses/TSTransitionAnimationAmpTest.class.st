Class {
	#name : #TSTransitionAnimationAmpTest,
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
TSTransitionAnimationAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> setUp [
	canvas := TSCanvas new.
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> testSequentialAnimationCreation [
	<madeBySmallAmp>
	| animation |
	animation := canvas animationFrom: {}.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation:1.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testSequentialAnimationCreation:1.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testSequentialAnimationCreation:1.3'.
	self
		assert: canvas color class
		equals: Color
		description: 'testSequentialAnimationCreation:1.4'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.5'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testSequentialAnimationCreation:1.6'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.7'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testSequentialAnimationCreation:1.8'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.9'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testSequentialAnimationCreation:1.10'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.11'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testSequentialAnimationCreation:1.12'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.13'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testSequentialAnimationCreation:1.14'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.15'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testSequentialAnimationCreation:1.16'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.17'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testSequentialAnimationCreation:1.18'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.19'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testSequentialAnimationCreation:1.20'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.21'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testSequentialAnimationCreation:1.22'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.23'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testSequentialAnimationCreation:1.24'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.25'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testSequentialAnimationCreation:1.26'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testSequentialAnimationCreation:1.27'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testSequentialAnimationCreation:1.28'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.29'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.30'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.31'.
	self
		assert: canvas morph
		equals: nil
		description: 'testSequentialAnimationCreation:1.32'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testSequentialAnimationCreation:1.33'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.34'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testSequentialAnimationCreation:1.35'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.36'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testSequentialAnimationCreation:1.37'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation:1.38'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.39'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.40'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.41'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testSequentialAnimationCreation:1.42'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.43'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testSequentialAnimationCreation:1.44'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.45'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.46'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testSequentialAnimationCreation:1.47'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testSequentialAnimationCreation:1.48'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testSequentialAnimationCreation:1.49'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.50'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testSequentialAnimationCreation:1.51'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.52'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testSequentialAnimationCreation:1.53'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.54'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testSequentialAnimationCreation:1.55'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.56'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testSequentialAnimationCreation:1.57'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.58'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testSequentialAnimationCreation:1.59'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.60'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testSequentialAnimationCreation:1.61'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.62'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testSequentialAnimationCreation:1.63'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.64'.
	self
		assert: canvas view
		equals: nil
		description: 'testSequentialAnimationCreation:1.65'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testSequentialAnimationCreation:1.66'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.67'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testSequentialAnimationCreation:1.68'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.69'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testSequentialAnimationCreation:1.70'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.71'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testSequentialAnimationCreation:1.72'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.73'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testSequentialAnimationCreation:1.74'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.75'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testSequentialAnimationCreation:1.76'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.77'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testSequentialAnimationCreation:1.78'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.79'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testSequentialAnimationCreation:1.80'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation:1.81'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.82'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.83'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.84'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testSequentialAnimationCreation:1.85'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.86'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testSequentialAnimationCreation:1.87'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.88'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.89'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.90'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.91'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testSequentialAnimationCreation:1.92'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.93'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.94'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.95'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testSequentialAnimationCreation:1.96'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testSequentialAnimationCreation:1.97'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testSequentialAnimationCreation:1.98'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.99'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testSequentialAnimationCreation:1.100'.
	self
		assert: animation class
		equals: TSSequentialAnimation
		description: 'testSequentialAnimationCreation:1.1'.
	self
		assert: animation animations class
		equals: OrderedCollection
		description: 'testSequentialAnimationCreation:1.2'.
	self
		assert: animation animations size
		equals: 0
		description: 'testSequentialAnimationCreation:1.3'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testSequentialAnimationCreation:1.4'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.5'.
	self
		assert: animation duration seconds
		equals: 0
		description: 'testSequentialAnimationCreation:1.6'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.7'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testSequentialAnimationCreation:1.8'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.9'.
	self
		assert: animation duration days
		equals: 0
		description: 'testSequentialAnimationCreation:1.10'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.11'.
	self
		assert: animation duration totalSeconds
		equals: 0
		description: 'testSequentialAnimationCreation:1.12'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testSequentialAnimationCreation:1.13'.
	self
		assert: animation duration negative
		equals: false
		description: 'testSequentialAnimationCreation:1.14'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.15'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testSequentialAnimationCreation:1.16'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.17'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testSequentialAnimationCreation:1.18'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.19'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testSequentialAnimationCreation:1.20'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testSequentialAnimationCreation:1.21'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testSequentialAnimationCreation:1.22'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testSequentialAnimationCreation:1.23'.
	self
		assert: animation duration positive
		equals: true
		description: 'testSequentialAnimationCreation:1.24'
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationAmpTest >> testTransitionAnimationCreation [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation.
	self
		assert: canvas class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation:1.1'.
	self
		assert: canvas fixedShapes class
		equals: TSGroup
		description: 'testTransitionAnimationCreation:1.2'.
	self
		assert: canvas fixedShapes size
		equals: 0
		description: 'testTransitionAnimationCreation:1.3'.
	self
		assert: canvas color class
		equals: Color
		description: 'testTransitionAnimationCreation:1.4'.
	self
		assert: canvas color alpha class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.5'.
	self
		assert: canvas color alpha
		equals: 1.0
		description: 'testTransitionAnimationCreation:1.6'.
	self
		assert: canvas color red class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.7'.
	self
		assert: canvas color red
		equals: 1.0
		description: 'testTransitionAnimationCreation:1.8'.
	self
		assert: canvas color hsvSaturation class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.9'.
	self
		assert: canvas color hsvSaturation
		equals: 0.0
		description: 'testTransitionAnimationCreation:1.10'.
	self
		assert: canvas color brightness class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.11'.
	self
		assert: canvas color brightness
		equals: 1.0
		description: 'testTransitionAnimationCreation:1.12'.
	self
		assert: canvas color hue class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.13'.
	self
		assert: canvas color hue
		equals: 0.0
		description: 'testTransitionAnimationCreation:1.14'.
	self
		assert: canvas color green class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.15'.
	self
		assert: canvas color green
		equals: 1.0
		description: 'testTransitionAnimationCreation:1.16'.
	self
		assert: canvas color chroma class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.17'.
	self
		assert: canvas color chroma
		equals: 0.0
		description: 'testTransitionAnimationCreation:1.18'.
	self
		assert: canvas color lightness class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.19'.
	self
		assert: canvas color lightness
		equals: 1.0
		description: 'testTransitionAnimationCreation:1.20'.
	self
		assert: canvas color hslSaturation class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.21'.
	self
		assert: canvas color hslSaturation
		equals: 0.0
		description: 'testTransitionAnimationCreation:1.22'.
	self
		assert: canvas color saturation class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.23'.
	self
		assert: canvas color saturation
		equals: 0.0
		description: 'testTransitionAnimationCreation:1.24'.
	self
		assert: canvas color luminance class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.25'.
	self
		assert: canvas color luminance
		equals: 1.0
		description: 'testTransitionAnimationCreation:1.26'.
	self
		assert: canvas color blue class
		equals: SmallFloat64
		description: 'testTransitionAnimationCreation:1.27'.
	self
		assert: canvas color blue
		equals: 1.0
		description: 'testTransitionAnimationCreation:1.28'.
	self
		assert: canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.29'.
	self
		assert: canvas numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.30'.
	self
		assert: canvas morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.31'.
	self
		assert: canvas morph
		equals: nil
		description: 'testTransitionAnimationCreation:1.32'.
	self
		assert: canvas extent class
		equals: Point
		description: 'testTransitionAnimationCreation:1.33'.
	self
		assert: canvas extent x class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.34'.
	self
		assert: canvas extent x
		equals: 500
		description: 'testTransitionAnimationCreation:1.35'.
	self
		assert: canvas extent y class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.36'.
	self
		assert: canvas extent y
		equals: 500
		description: 'testTransitionAnimationCreation:1.37'.
	self
		assert: canvas parent class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation:1.38'.
	self
		assert: canvas parent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.39'.
	self
		assert: canvas parent numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.40'.
	self
		assert: canvas parent morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.41'.
	self
		assert: canvas parent morph
		equals: nil
		description: 'testTransitionAnimationCreation:1.42'.
	self
		assert: canvas parent view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.43'.
	self
		assert: canvas parent view
		equals: nil
		description: 'testTransitionAnimationCreation:1.44'.
	self
		assert: canvas parent numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.45'.
	self
		assert: canvas parent numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.46'.
	self
		assert: canvas shapes class
		equals: TSGroup
		description: 'testTransitionAnimationCreation:1.47'.
	self
		assert: canvas shapes size
		equals: 0
		description: 'testTransitionAnimationCreation:1.48'.
	self
		assert: canvas encompassingRectangle class
		equals: Rectangle
		description: 'testTransitionAnimationCreation:1.49'.
	self
		assert: canvas encompassingRectangle top class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.50'.
	self
		assert: canvas encompassingRectangle top
		equals: 0
		description: 'testTransitionAnimationCreation:1.51'.
	self
		assert: canvas encompassingRectangle area class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.52'.
	self
		assert: canvas encompassingRectangle area
		equals: 1
		description: 'testTransitionAnimationCreation:1.53'.
	self
		assert: canvas encompassingRectangle left class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.54'.
	self
		assert: canvas encompassingRectangle left
		equals: 0
		description: 'testTransitionAnimationCreation:1.55'.
	self
		assert: canvas encompassingRectangle width class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.56'.
	self
		assert: canvas encompassingRectangle width
		equals: 1
		description: 'testTransitionAnimationCreation:1.57'.
	self
		assert: canvas encompassingRectangle right class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.58'.
	self
		assert: canvas encompassingRectangle right
		equals: 1
		description: 'testTransitionAnimationCreation:1.59'.
	self
		assert: canvas encompassingRectangle bottom class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.60'.
	self
		assert: canvas encompassingRectangle bottom
		equals: 1
		description: 'testTransitionAnimationCreation:1.61'.
	self
		assert: canvas encompassingRectangle height class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.62'.
	self
		assert: canvas encompassingRectangle height
		equals: 1
		description: 'testTransitionAnimationCreation:1.63'.
	self
		assert: canvas view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.64'.
	self
		assert: canvas view
		equals: nil
		description: 'testTransitionAnimationCreation:1.65'.
	self
		assert: canvas basicRectangle class
		equals: Rectangle
		description: 'testTransitionAnimationCreation:1.66'.
	self
		assert: canvas basicRectangle top class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.67'.
	self
		assert: canvas basicRectangle top
		equals: 0
		description: 'testTransitionAnimationCreation:1.68'.
	self
		assert: canvas basicRectangle area class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.69'.
	self
		assert: canvas basicRectangle area
		equals: 250000
		description: 'testTransitionAnimationCreation:1.70'.
	self
		assert: canvas basicRectangle left class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.71'.
	self
		assert: canvas basicRectangle left
		equals: 0
		description: 'testTransitionAnimationCreation:1.72'.
	self
		assert: canvas basicRectangle width class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.73'.
	self
		assert: canvas basicRectangle width
		equals: 500
		description: 'testTransitionAnimationCreation:1.74'.
	self
		assert: canvas basicRectangle right class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.75'.
	self
		assert: canvas basicRectangle right
		equals: 500
		description: 'testTransitionAnimationCreation:1.76'.
	self
		assert: canvas basicRectangle bottom class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.77'.
	self
		assert: canvas basicRectangle bottom
		equals: 500
		description: 'testTransitionAnimationCreation:1.78'.
	self
		assert: canvas basicRectangle height class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.79'.
	self
		assert: canvas basicRectangle height
		equals: 500
		description: 'testTransitionAnimationCreation:1.80'.
	self
		assert: canvas topParent class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation:1.81'.
	self
		assert: canvas topParent numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.82'.
	self
		assert: canvas topParent numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.83'.
	self
		assert: canvas topParent morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.84'.
	self
		assert: canvas topParent morph
		equals: nil
		description: 'testTransitionAnimationCreation:1.85'.
	self
		assert: canvas topParent view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.86'.
	self
		assert: canvas topParent view
		equals: nil
		description: 'testTransitionAnimationCreation:1.87'.
	self
		assert: canvas topParent numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.88'.
	self
		assert: canvas topParent numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.89'.
	self
		assert: canvas numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.90'.
	self
		assert: canvas numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.91'.
	self
		assert: canvas canvas class
		equals: TSCanvas
		description: 'testTransitionAnimationCreation:1.92'.
	self
		assert: canvas canvas numberOfFixedShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.93'.
	self
		assert: canvas canvas numberOfFixedShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.94'.
	self
		assert: canvas canvas morph class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.95'.
	self
		assert: canvas canvas morph
		equals: nil
		description: 'testTransitionAnimationCreation:1.96'.
	self
		assert: canvas canvas view class
		equals: UndefinedObject
		description: 'testTransitionAnimationCreation:1.97'.
	self
		assert: canvas canvas view
		equals: nil
		description: 'testTransitionAnimationCreation:1.98'.
	self
		assert: canvas canvas numberOfShapes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.99'.
	self
		assert: canvas canvas numberOfShapes
		equals: 0
		description: 'testTransitionAnimationCreation:1.100'.
	self
		assert: animation class
		equals: TSTransitionAnimation
		description: 'testTransitionAnimationCreation:1.1'.
	self
		assert: animation duration class
		equals: Duration
		description: 'testTransitionAnimationCreation:1.2'.
	self
		assert: animation duration seconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.3'.
	self
		assert: animation duration seconds
		equals: 2
		description: 'testTransitionAnimationCreation:1.4'.
	self
		assert: animation duration hours class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.5'.
	self
		assert: animation duration hours
		equals: 0
		description: 'testTransitionAnimationCreation:1.6'.
	self
		assert: animation duration days class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.7'.
	self
		assert: animation duration days
		equals: 0
		description: 'testTransitionAnimationCreation:1.8'.
	self
		assert: animation duration totalSeconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.9'.
	self
		assert: animation duration totalSeconds
		equals: 2
		description: 'testTransitionAnimationCreation:1.10'.
	self
		assert: animation duration negative class
		equals: False
		description: 'testTransitionAnimationCreation:1.11'.
	self
		assert: animation duration negative
		equals: false
		description: 'testTransitionAnimationCreation:1.12'.
	self
		assert: animation duration wholeMicroseconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.13'.
	self
		assert: animation duration wholeMicroseconds
		equals: 0
		description: 'testTransitionAnimationCreation:1.14'.
	self
		assert: animation duration wholeMilliseconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.15'.
	self
		assert: animation duration wholeMilliseconds
		equals: 0
		description: 'testTransitionAnimationCreation:1.16'.
	self
		assert: animation duration minutes class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.17'.
	self
		assert: animation duration minutes
		equals: 0
		description: 'testTransitionAnimationCreation:1.18'.
	self
		assert: animation duration wholeNanoseconds class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.19'.
	self
		assert: animation duration wholeNanoseconds
		equals: 0
		description: 'testTransitionAnimationCreation:1.20'.
	self
		assert: animation duration positive class
		equals: True
		description: 'testTransitionAnimationCreation:1.21'.
	self
		assert: animation duration positive
		equals: true
		description: 'testTransitionAnimationCreation:1.22'.
	self
		assert: animation scale class
		equals: TSScaleLinear
		description: 'testTransitionAnimationCreation:1.23'.
	self
		assert: animation to class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.24'.
	self
		assert: animation to
		equals: 1
		description: 'testTransitionAnimationCreation:1.25'.
	self
		assert: animation from class
		equals: SmallInteger
		description: 'testTransitionAnimationCreation:1.26'.
	self
		assert: animation from
		equals: 0
		description: 'testTransitionAnimationCreation:1.27'.
	self
		assert: animation easing class
		equals: TSLinearInterpolator
		description: 'testTransitionAnimationCreation:1.28'
]
