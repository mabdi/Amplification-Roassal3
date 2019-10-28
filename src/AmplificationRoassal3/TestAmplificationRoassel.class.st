Class {
	#name : #TestAmplificationRoassel,
	#superclass : #AmplificationHelper,
	#category : #AmplificationRoassal3
}

{ #category : #'as yet unclassified' }
TestAmplificationRoassel >> amplifyAll [
	<script: 'self new amplifyAll'>
	^ super amplifyAll
]

{ #category : #'as yet unclassified' }
TestAmplificationRoassel >> amplifyAndVisualize [
	<script: 'self new amplifyAndVisualize'>
	| runs |
	runs := super amplifyAll.
	self visualizeAmplification2: runs
]

{ #category : #tests }
TestAmplificationRoassel >> testTargtsMapping [
	| list |
	list := OrderedCollection new.
	"**** Roassal3-Scripting tests ***"
	list add: RSViewTest -> RSView.
	"list add: RSShapeBuilderTest -> RSShapeBuilder."	"TODO Flanky test"
	"list add: RSRoassalTest -> ??."
	"list add: RSMenuActivableTest -> ??."
	"list add: RSGroupTest -> ??."
	list add: RSEdgeTest -> RSEdge.
	list add: RSEdgeBuilderTest -> RSEdgeBuilder.	"Mutalk Error -> TODO check it"
	"list add: RSCompositeElementTest -> ??."

	"**** Roassal3-Animation tests ****"
	"list add: TSSequentialAnimationTest -> TSSequentialAnimation."	"TODO timeout related"
	"list add: TSTransitionAnimationTest -> TSTransitionAnimation."	"TODO timeout related"
	list add: TSAnimationTest -> TSTransitionAnimation.

	"***** Roassal3 tests ****"
	"list add: TSLinesTest -> TSCanvas."	"TODO Flanky test"
	"list add: TSLabelTest -> TSCanvas."	"TODO Flanky test"
	"list add: TSBoundingTest -> TSCanvas."	"TODO Flanky test"
	"list add: TSCanvasTest -> TSCanvas."	"TODO Flanky test"
	"list add: TSGroupTest -> TSGroup."	"TODO Flanky test"
	list add: TSCompositeTest -> TSComposite.
	list add: TSAthensRendererTest -> TSAthensRenderer.
	^ list
]