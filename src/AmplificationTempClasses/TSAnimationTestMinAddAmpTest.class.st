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
