Class {
	#name : #RSViewTestMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSViewTestMinAmpTest >> setUp [
	super setUp.
	view := RSView new.
]

{ #category : #'as yet unclassified' }
RSViewTestMinAmpTest >> testElementFromModel [
	<madeBySmallAmp>
	| els |
	els := RSShapeBuilder box elementsOn: (1 to: 3).
	view addAll: els.
	self assert: view numberOfEdges class equals: SmallInteger.
	self assert: view announcer class equals: Announcer.
	self assert: view canvas class equals: TSCanvas.
	self assert: view canvas numberOfShapes equals: 3.
	self assert: view elements class equals: TSGroup
]
