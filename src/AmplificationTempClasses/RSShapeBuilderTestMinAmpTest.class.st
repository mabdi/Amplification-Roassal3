Class {
	#name : #RSShapeBuilderTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSShapeBuilderTestMinAmpTest >> testColor_amp [
	<madeBySmallAmp>
	| sb |
	sb := RSShapeBuilder box.
	self assert: sb class equals: RSShapeBuilder.
	self assert: sb shapeClass class equals: TSBox class.
	sb color: Color blue
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestMinAmpTest >> testMultilineLabel_amp [
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
