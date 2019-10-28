Class {
	#name : #RSEdgeMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'el1',
		'el2',
		'edge'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSEdgeMinAmpTest >> setUp [
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
RSEdgeMinAmpTest >> testAddingEdgeAndGroup [
	<madeBySmallAmp>
	| v g tmp_BYCnQaQ24t1 tmp_hByHefENmc2 |
	v := RSView new.
	g := TSGroup new.
	tmp_hByHefENmc2 := g add: el1.
	v addAll: g.
	tmp_BYCnQaQ24t1 := g add: edge.
	self assert: g size equals: 2.
	self
		assert: tmp_BYCnQaQ24t1 attachPoint class
		equals: TSCenteredAttachPoint.
	self assert: tmp_BYCnQaQ24t1 from class equals: RSElement.
	self assert: tmp_BYCnQaQ24t1 to class equals: RSElement.
	self
		assert: tmp_BYCnQaQ24t1 controlPoints class
		equals: UndefinedObject.
	v addAll: g
]
