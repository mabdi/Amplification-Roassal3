Class {
	#name : #RSShapeBuilderTestMinAddAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSShapeBuilderTestMinAddAmpTest >> testColor [
	<madeBySmallAmp>
	| sb |
	sb := RSShapeBuilder box.
	sb color: Color blue.
	self assert: sb element color equals: Color blue
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestMinAddAmpTest >> testColor_amp [
	<madeBySmallAmp>
	| sb |
	sb := RSShapeBuilder box.
	self assert: sb class equals: RSShapeBuilder.
	self assert: sb shapeClass class equals: TSBox class.
	sb color: Color blue
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestMinAddAmpTest >> testMultilineLabel [
	<madeBySmallAmp>
	| shape label child |
	shape := RSShapeBuilder multiline
		fontSize: 30;
		bold.
	label := shape elementOn: 'foo'.
	self assert: label shape class equals: TSComposite.
	self assert: label shape shapes size equals: 1.
	child := label shape shapes first
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestMinAddAmpTest >> testMultilineLabel_amp [
	<madeBySmallAmp>
	| shape label child |
	shape := RSShapeBuilder multiline
		fontSize: 30;
		bold.
	label := shape elementOn: 'foo'.
	self assert: shape class equals: RSShapeBuilder.
	self assert: label class equals: RSElement.
	child := label shape shapes first
]
