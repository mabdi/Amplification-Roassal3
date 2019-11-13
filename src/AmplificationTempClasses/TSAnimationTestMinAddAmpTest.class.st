Class {
	#name : #TSAnimationTestMinAddAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'canvas'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSAnimationTestMinAddAmpTest >> setUp [
	canvas := TSCanvas new.
]

{ #category : #'as yet unclassified' }
TSAnimationTestMinAddAmpTest >> testSequentialAnimationCreation [
	<madeBySmallAmp>
	| animation |
	self assert: canvas animations size equals: 0.
	animation := canvas animationFrom: {}.
	self assert: canvas animations size equals: 1.
	self assert: animation class equals: TSSequentialAnimation
]

{ #category : #'as yet unclassified' }
TSAnimationTestMinAddAmpTest >> testTransitionAnimationCreation [
	<madeBySmallAmp>
	| animation |
	self assert: canvas animations size equals: 0.
	animation := canvas newAnimation.
	self assert: canvas animations size equals: 1.
	self assert: animation class equals: TSTransitionAnimation
]

{ #category : #'as yet unclassified' }
TSAnimationTestMinAddAmpTest >> testTransitionAnimationCreation_amp [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation.
	self assert: canvas fixedShapes class equals: TSGroup.
	self assert: canvas color saturation class equals: SmallFloat64.
	self assert: canvas color saturation equals: 0.0.
	self assert: canvas color luminance equals: 1.0.
	self assert: canvas color blue equals: 1.0.
	self assert: animation duration class equals: Duration.
	self assert: animation scale class equals: TSScaleLinear.
	self assert: animation to class equals: SmallInteger.
	self assert: animation from class equals: SmallInteger.
	self assert: animation easing class equals: TSLinearInterpolator
]
