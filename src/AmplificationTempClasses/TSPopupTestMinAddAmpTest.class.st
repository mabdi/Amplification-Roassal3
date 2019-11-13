Class {
	#name : #TSPopupTestMinAddAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view',
		'elements'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSPopupTestMinAddAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: #(1 2).
	view addAll: elements
]

{ #category : #'as yet unclassified' }
TSPopupTestMinAddAmpTest >> testNoPopup [
	<madeBySmallAmp>
	elements first announce: TSMouseEnter.
	self assert: view numberOfShapes equals: elements size
]

{ #category : #'as yet unclassified' }
TSPopupTestMinAddAmpTest >> testPopupOnElementNotAddedToAView [
	<madeBySmallAmp>
	| el |
	el := RSShapeBuilder box element.
	el @ TSPopup.
	el announce: TSMouseEnter
	"Should not produce an error"
]

{ #category : #'as yet unclassified' }
TSPopupTestMinAddAmpTest >> testWithPopup [
	<madeBySmallAmp>
	elements @ TSPopup.
	self assert: view fixedShapes size equals: 0.
	elements first announce: TSMouseMove.
	self assert: view numberOfShapes equals: elements size.
	self assert: view fixedShapes size equals: 1
]
