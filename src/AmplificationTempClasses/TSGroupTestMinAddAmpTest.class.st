Class {
	#name : #TSGroupTestMinAddAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSGroupTestMinAddAmpTest >> testAddShape [
	<madeBySmallAmp>
	| g |
	g := TSGroup new.
	g add: TSBox new
]

{ #category : #'as yet unclassified' }
TSGroupTestMinAddAmpTest >> testAddShape_amp [
	<madeBySmallAmp>
	| g tmp_WZZlnWM6Gi1 |
	g := TSGroup new.
	tmp_WZZlnWM6Gi1 := g add: TSBox new.
	self assert: g class equals: TSGroup.
	self assert: tmp_WZZlnWM6Gi1 class equals: TSBox
]

{ #category : #'as yet unclassified' }
TSGroupTestMinAddAmpTest >> testAsGroup [
	<madeBySmallAmp>
	| t |
	t := #(1 2 3) asGroup.
	self assert: t asArray equals: #(1 2 3).
	self assert: t class equals: TSGroup
]

{ #category : #'as yet unclassified' }
TSGroupTestMinAddAmpTest >> testDrawGroup [
	<madeBySmallAmp>
	| g c com |
	c := TSCanvas new.
	g := TSGroup new.
	g add: TSBox new.
	com := TSComposite new shapes: g.
	c addShape: com.
	self assert: c numberOfShapes equals: 1.
	c createMorph drawOnMockCanvas
]
