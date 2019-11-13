Class {
	#name : #TSPopupTestMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view',
		'elements'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSPopupTestMinAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: #(1 2).
	view addAll: elements
]
