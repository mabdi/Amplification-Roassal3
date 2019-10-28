Class {
	#name : #TSTransitionAnimationMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'canvas'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSTransitionAnimationMinAmpTest >> setUp [
	canvas := TSCanvas new.
]

{ #category : #'as yet unclassified' }
TSTransitionAnimationMinAmpTest >> testTransitionAnimationCreation [
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
