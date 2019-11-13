Class {
	#name : #TSGroupTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSGroupTestMinAmpTest >> testAddShape_amp [
	<madeBySmallAmp>
	| g tmp_fgnehuAhAL1 |
	g := TSGroup new.
	tmp_fgnehuAhAL1 := g add: TSBox new.
	self assert: g class equals: TSGroup.
	self assert: tmp_fgnehuAhAL1 class equals: TSBox
]
