Class {
	#name : #RSUMLClassBuilderTestMinAddAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestMinAddAmpTest >> testBasic [
	<madeBySmallAmp>
	| builder classes |
	classes := TSAttachPoint withAllSubclasses.
	builder := RSUMLClassBuilder new.
	builder classes: classes.
	builder build.
	self assert: builder elements size equals: classes size
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestMinAddAmpTest >> testBasic_amp [
	<madeBySmallAmp>
	| builder classes tmp_3gV5NPq5qP2 |
	classes := TSAttachPoint withAllSubclasses.
	builder := RSUMLClassBuilder new.
	self assert: builder classes class equals: UndefinedObject.
	builder classes: classes.
	tmp_3gV5NPq5qP2 := builder build
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTestMinAddAmpTest >> testJustClassName [
	<madeBySmallAmp>
	| builder element |
	builder := RSUMLClassBuilder new.
	builder classes: {TSMouseMove}.
	builder build.
	element := builder elements first.
	self assert: element children size equals: 2.
	self assert: element shapes first class equals: TSBox.
	self assert: element shapes second class equals: TSLabel.
	builder := RSUMLClassBuilder new.
	builder classes: {TSMouseMove}.
	builder renderer: RSTorchUMLClassRenderer new.
	builder build.
	element := builder elements first.
	self assert: element children size equals: 3.
	self assert: element shapes first class equals: TSBox.
	self assert: element shapes second class equals: TSLabel.
	self assert: element shapes third class equals: TSBox
]
