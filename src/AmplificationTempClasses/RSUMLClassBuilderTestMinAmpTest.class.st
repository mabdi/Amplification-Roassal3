Class {
	#name : #RSUMLClassBuilderTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestMinAmpTest >> testBasic_amp [
	<madeBySmallAmp>
	| builder classes tmp_3gV5NPq5qP2 |
	classes := TSAttachPoint withAllSubclasses.
	builder := RSUMLClassBuilder new.
	self assert: builder classes class equals: UndefinedObject.
	builder classes: classes.
	tmp_3gV5NPq5qP2 := builder build
]
