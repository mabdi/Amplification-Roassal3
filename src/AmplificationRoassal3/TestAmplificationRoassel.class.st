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
	ASTHelper uniqueInstance clearTempClasses.
	runs := super amplifyAll.
	Transcript show: (super createMdTable: runs).
	self visualizeAmplification2: runs
]

{ #category : #tests }
TestAmplificationRoassel >> testTargtsMapping [
	"generatedBy: `AmplificationHelper getStringPairsForPackagePrefix: 'Roassal.*'`"

	| list |
	list := OrderedCollection new.
	list add: TSAnimationTest -> TSAnimation.
	list add: TSSequentialAnimationTest -> TSSequentialAnimation.
	"list add: TSTransitionAnimationTest -> TSTransitionAnimation."
	"list add: TSExamplesTest->nil."
	"list add: RSForceBasedLayoutTest->nil."
	list add: TSAthensRendererTest -> TSAthensRenderer.
	"list add: TSBoundingTest->nil."
	"list add: TSLinesTest->nil."
	list add: TSGroupTest -> TSGroup.
	"list add: TSTest->nil."
	list add: TSCanvasTest -> TSCanvas.
	list add: TSLabelTest -> TSLabel.
	list add: TSCompositeTest -> TSComposite.
	"list add: RoassalSpecTest->nil."
	"list add: TSControlsViewTest->nil."
	list add: TSDraggableCanvasTest -> TSDraggableCanvas.
	list add: TSPopupTest -> TSPopup.
	"list add: TSNormalizerTest->nil."
	list add: RSAlignmentTest -> RSAlignment.
	list add: RSResizeTest -> RSResize.
	"list add: RSLabelGeneratorTest -> RSLabelGenerator."	"Crashes"
	"list add: RSMenuActivableTest->nil."
	list add: RSShapeBuilderTest -> RSShapeBuilder.
	list add: RSEdgeBuilderTest -> RSEdgeBuilder.
	"list add: RSGroupTest->nil."
	"list add: RSRoassalTest->nil."
	list add: RSViewTest -> RSView.
	"list add: RSCompositeElementTest->nil."
	list add: RSEdgeTest -> RSEdge.
	list add: RSUMLClassBuilderTest -> RSUMLClassBuilder.
	^ list
]

{ #category : #tests }
TestAmplificationRoassel >> testTargtsMappingx [
	"generatedBy: `AmplificationHelper getStringPairsForPackagePrefix: 'Roassal.*'`"

	| list |
	list := OrderedCollection new.
	list add: TSAnimationTest -> TSAnimation.
	list add: TSSequentialAnimationTest -> TSSequentialAnimation.
	"list add: TSTransitionAnimationTest -> TSTransitionAnimation."
	"list add: TSExamplesTest->nil."
	"list add: RSForceBasedLayoutTest->nil."
	list add: TSAthensRendererTest -> TSAthensRenderer.
	"list add: TSBoundingTest->nil."
	"list add: TSLinesTest->nil."
	list add: TSGroupTest -> TSGroup.
	"list add: TSTest->nil."
	list add: TSCanvasTest -> TSCanvas.
	list add: TSLabelTest -> TSLabel.
	list add: TSCompositeTest -> TSComposite.
	"list add: RoassalSpecTest->nil."
	"list add: TSControlsViewTest->nil."
	list add: TSDraggableCanvasTest -> TSDraggableCanvas.
	list add: TSPopupTest -> TSPopup.
	"list add: TSNormalizerTest->nil."
	list add: RSAlignmentTest -> RSAlignment.
	list add: RSResizeTest -> RSResize.
	"list add: RSLabelGeneratorTest -> RSLabelGenerator."	"Crashes"
	"list add: RSMenuActivableTest->nil."
	list add: RSShapeBuilderTest -> RSShapeBuilder.
	list add: RSEdgeBuilderTest -> RSEdgeBuilder.
	"list add: RSGroupTest->nil."
	"list add: RSRoassalTest->nil."
	list add: RSViewTest -> RSView.
	"list add: RSCompositeElementTest->nil."
	list add: RSEdgeTest -> RSEdge.
	list add: RSUMLClassBuilderTest -> RSUMLClassBuilder.
	^ list
]
