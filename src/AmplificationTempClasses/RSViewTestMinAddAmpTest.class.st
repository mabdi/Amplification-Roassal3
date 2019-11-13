Class {
	#name : #RSViewTestMinAddAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSViewTestMinAddAmpTest >> setUp [
	super setUp.
	view := RSView new.
]

{ #category : #'as yet unclassified' }
RSViewTestMinAddAmpTest >> testElementFromModel [
	<madeBySmallAmp>
	| els |
	els := RSShapeBuilder box elementsOn: (1 to: 3).
	view addAll: els.
	self assert: (view elementFromModel: 1) == els first.
	self assert: (view elementFromModel: 2) == els second.
	self assert: (view elementFromModel: 3) == els third
]

{ #category : #'as yet unclassified' }
RSViewTestMinAddAmpTest >> testElementFromModel_amp [
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
