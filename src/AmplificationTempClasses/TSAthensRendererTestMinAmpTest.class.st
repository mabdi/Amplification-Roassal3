Class {
	#name : #TSAthensRendererTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSAthensRendererTestMinAmpTest >> testArcCorner_amp [
	<madeBySmallAmp>
	| renderer |
	renderer := TSAthensRenderer new.
	self assert: renderer builder class equals: UndefinedObject
]
