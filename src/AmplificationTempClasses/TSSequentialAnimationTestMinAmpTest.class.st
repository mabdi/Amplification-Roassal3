Class {
	#name : #TSSequentialAnimationTestMinAmpTest,
	#superclass : #TSAnimationTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAmpTest >> testAddingAnimations_amp [
	<madeBySmallAmp>
	| animation |
	animation := TSSequentialAnimation new.
	self assert: animation animations class equals: OrderedCollection.
	self assert: animation duration class equals: Duration.
	animation add: (TSTransitionAnimation new duration: 1 second).
	self assert: animation duration seconds equals: 1.
	canvas addAnimation: animation.
	canvas addAnimation: animation
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAmpTest >> testStepEvent_10 [
	<madeBySmallAmp>
	| value loop animation |
	canvas := TSCanvas new.
	value := nil.
	loop := 0.
	animation := TSSequentialAnimation new
		loops: 6;
		add:
			(TSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: TSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]
