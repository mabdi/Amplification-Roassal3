Class {
	#name : #TestAmplificationRoassel,
	#superclass : #AmplificationHelper,
	#category : #'Amplification-Roassal3'
}

{ #category : #'as yet unclassified' }
TestAmplificationRoassel >> amplifyAll [
	<script: 'self new amplifyAll'>
	^ super amplifyAll
]

{ #category : #'as yet unclassified' }
TestAmplificationRoassel >> amplifySample [
	<script: 'self new amplifySample'>
	| runs amps |
	ASTHelper uniqueInstance clearTempClasses.
	amps := OrderedCollection with: RSViewTest -> RSView with:  TSLinesTest -> TSCanvas..
	runs := self amplifyAll: amps.
	self visualizeAmplification2: runs
]

{ #category : #tests }
TestAmplificationRoassel >> testTargtsMapping [
	| list |
	list := OrderedCollection new.
	"**** Roassal3-Scripting tests ***"
	list add: RSViewTest -> RSView.
	list add: RSShapeBuilderTest -> RSShapeBuilder.
	"list add: RSRoassalTest -> ??."
	"list add: RSMenuActivableTest -> ??."
	"list add: RSGroupTest -> ??."
	list add: RSEdgeTest -> RSEdge.
	list add: RSEdgeBuilderTest -> RSEdgeBuilder.
	"list add: RSCompositeElementTest -> ??."

	"**** Roassal3-Animation tests ****"
	list add: TSSequentialAnimationTest -> TSSequentialAnimation.
	list add: TSTransitionAnimationTest -> TSTransitionAnimation.
	list add: TSAnimationTest -> TSTransitionAnimation.
	
	"***** Roassal3 tests ****"
	list add: TSLinesTest -> TSCanvas.
	list add: TSLabelTest -> TSCanvas.
	list add: TSBoundingTest -> TSCanvas.
	list add: TSCanvasTest -> TSCanvas.
	list add: TSGroupTest -> TSGroup.
	list add: TSCompositeTest -> TSComposite.
	list add: TSAthensRendererTest -> TSAthensRenderer.
	^ list
]
