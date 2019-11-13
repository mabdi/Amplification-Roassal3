Class {
	#name : #TSSequentialAnimationTestMinAddAmpTest,
	#superclass : #TSAnimationTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAddAmpTest >> testAddingAnimations [
	<madeBySmallAmp>
	| animation |
	animation := TSSequentialAnimation new.
	animation
		add: (TSTransitionAnimation new duration: 1 second);
		add: (TSTransitionAnimation new duration: 2 seconds).
	canvas addAnimation: animation.
	self assert: animation isRunning.
	self assert: animation duration equals: 3 seconds
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAddAmpTest >> testAddingAnimations_amp [
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
TSSequentialAnimationTestMinAddAmpTest >> testBasic [
	<madeBySmallAmp>
	self basicAnimation: TSSequentialAnimation new
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAddAmpTest >> testBasicCanvas [
	<madeBySmallAmp>
	| animation |
	self assert: canvas animations size equals: 0.
	animation := TSSequentialAnimation new.
	canvas addAnimation: animation.
	self assert: canvas animations size equals: 1.
	self assert: animation isRunning.
	self assert: animation duration equals: 0 asDuration
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAddAmpTest >> testDelay [
	<madeBySmallAmp>
	| animation |
	animation := TSSequentialAnimation new delay: 100 milliSeconds.
	animation start.
	self deny: animation isDelayDone.
	(Delay forMilliseconds: 101) wait.
	self assert: animation isDelayDone
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAddAmpTest >> testStep [
	<madeBySmallAmp>
	| value animation |
	value := 0.
	animation := TSSequentialAnimation new
		add: (TSTransitionAnimation new onStepDo: [ :t | value := value + 1 ]);
		yourself.
	canvas addAnimation: animation.
	self assert: value equals: 0.
	canvas playAnimations.
	self assert: value equals: 1
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAddAmpTest >> testStepEvent [
	<madeBySmallAmp>
	| value loop animation |
	canvas := TSCanvas new.
	value := nil.
	loop := 0.
	animation := TSSequentialAnimation new
		loops: 3;
		add:
			(TSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: TSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self assert: value isNil.
	self assert: loop equals: 0.
	self assert: animation endTime isNil.
	self runAnimation: animation threshold: 500.
	self deny: value isNil.
	self assert: loop equals: 3.
	self deny: animation endTime isNil.
	self deny: animation isRunning
]

{ #category : #'as yet unclassified' }
TSSequentialAnimationTestMinAddAmpTest >> testStepEvent_10 [
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
