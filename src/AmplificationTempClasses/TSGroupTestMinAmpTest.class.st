Class {
	#name : #TSGroupTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSGroupTestMinAmpTest >> testAddShape [
	<madeBySmallAmp>
	| g tmp_IaHDgFpPZS1 |
	g := TSGroup new.
	tmp_IaHDgFpPZS1 := g add: TSBox new.
	self assert: g class equals: TSGroup.
	self assert: tmp_IaHDgFpPZS1 class equals: TSBox
]
