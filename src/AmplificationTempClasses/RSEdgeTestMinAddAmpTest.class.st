Class {
	#name : #RSEdgeTestMinAddAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'el1',
		'el2',
		'edge'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeTestMinAddAmpTest >> setUp [
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
RSEdgeTestMinAddAmpTest >> testAddingEdgeAndGroup [
	<madeBySmallAmp>
	| v g |
	v := RSView new.
	g := TSGroup new.
	g
		add: el1;
		add: el2;
		add: edge.
	v addAll: g.
	self assert: edge shape notNil.
	self assert: edge shape color notNil
]

{ #category : #'as yet unclassified' }
RSEdgeTestMinAddAmpTest >> testAddingEdgeAndGroup_amp [
	<madeBySmallAmp>
	| v g tmp_caRzCHuRpY1 tmp_bgzU7XkwId2 |
	v := RSView new.
	g := TSGroup new.
	tmp_bgzU7XkwId2 := g add: el1.
	v addAll: g.
	tmp_caRzCHuRpY1 := g add: edge.
	self assert: g size equals: 2.
	self assert: tmp_caRzCHuRpY1 isEdge class equals: True.
	self
		assert: tmp_caRzCHuRpY1 controlPoints class
		equals: UndefinedObject.
	self assert: tmp_caRzCHuRpY1 to class equals: RSElement.
	self assert: tmp_caRzCHuRpY1 from class equals: RSElement.
	self
		assert: tmp_caRzCHuRpY1 attachPoint class
		equals: TSCenteredAttachPoint.
	v addAll: g
]
