Class {
	#name : #RSAlignmentTestMinAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'align'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAmpTest >> setUp [
	super setUp.
	align := RSAlignment new.
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAmpTest >> testFromBottom_amp [
	<madeBySmallAmp>
	| es tmp_qZdiMuccNN4 tmp_DOUDDqSP6J6 |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	align elements: es.
	self assert: align hasElement class equals: True.
	tmp_qZdiMuccNN4 := TSHorizontalLineLayout on: es.
	tmp_DOUDDqSP6J6 := es second.
	align bottom.
	align bottom
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAmpTest >> testHasElement_amp [
	<madeBySmallAmp>
	align elements: (Array with: RSElement new).
	align elements: #().
	self assert: align hasElement class equals: False
]
