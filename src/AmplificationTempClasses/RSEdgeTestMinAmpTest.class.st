Class {
	#name : #RSEdgeTestMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'el1',
		'el2',
		'edge'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeTestMinAmpTest >> setUp [
	super setUp.
	el1 := RSShapeBuilder box element.
	el2 := RSShapeBuilder box element.
	el1 translateTo: 20 @ 20.
	el2 translateTo: 60 @ 80.
	edge := RSEdge new
		attachPoint: TSCenteredAttachPoint new;
		shape: TSLine new;
		from: el1;
		to: el2;
		yourself. 

]

{ #category : #'as yet unclassified' }
RSEdgeTestMinAmpTest >> testAddingEdgeAndGroup [
	<madeBySmallAmp>
	| v g tmp_xsZh1uiVsU1 tmp_y83sHP6jYa2 |
	v := RSView new.
	g := TSGroup new.
	tmp_y83sHP6jYa2 := g add: el1.
	v addAll: g.
	tmp_xsZh1uiVsU1 := g add: edge.
	self assert: g size equals: 2.
	self assert: tmp_xsZh1uiVsU1 isEdge class equals: True.
	self
		assert: tmp_xsZh1uiVsU1 controlPoints class
		equals: UndefinedObject.
	self assert: tmp_xsZh1uiVsU1 to class equals: RSElement.
	self assert: tmp_xsZh1uiVsU1 from class equals: RSElement.
	self
		assert: tmp_xsZh1uiVsU1 attachPoint class
		equals: TSCenteredAttachPoint.
	v addAll: g
]
