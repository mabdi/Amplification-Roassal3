Class {
	#name : #TSGroupTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSGroupTestMinAmpTest >> testAddShape_amp [
	<madeBySmallAmp>
	| g tmp_WZZlnWM6Gi1 |
	g := TSGroup new.
	tmp_WZZlnWM6Gi1 := g add: TSBox new.
	self assert: g class equals: TSGroup.
	self assert: tmp_WZZlnWM6Gi1 class equals: TSBox
]
