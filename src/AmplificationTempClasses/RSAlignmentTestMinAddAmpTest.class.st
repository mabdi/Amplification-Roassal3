Class {
	#name : #RSAlignmentTestMinAddAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'align'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> setUp [
	super setUp.
	align := RSAlignment new.
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> testFromBottom [
	<madeBySmallAmp>
	| es |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	align elements: es.
	TSHorizontalLineLayout on: es.
	es second translateBy: 0 @ 150.
	self
		assert: (es collect: [ :e | e encompassingRectangle bottom ]) asArray
		equals: #(10.0 170.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0).
	self assert: align bottomMostElement equals: es second.
	align bottom.
	self
		assert: (es collect: [ :e | e encompassingRectangle bottom ]) asArray
		equals: #(170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0)
	"	
	RSView new addAll: es; yourself.
	"
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> testFromBottom_amp [
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
RSAlignmentTestMinAddAmpTest >> testFromLeft [
	<madeBySmallAmp>
	| es |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	align elements: es.
	TSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	self
		assert: (es collect: [ :e | e encompassingRectangle left ]) asArray
		equals: #(0.0 -150.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align leftMostElement equals: es second.
	align left.
	self
		assert: (es collect: [ :e | e encompassingRectangle left ]) asArray
		equals:
			#(-150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0)
	"	
	RSView new addAll: es; inspect.
	"
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> testFromRight [
	<madeBySmallAmp>
	| es |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	align elements: es.
	TSVerticalLineLayout on: es.
	es second translateBy: 150 @ 0.
	self
		assert: (es collect: [ :e | e encompassingRectangle right ]) asArray
		equals: #(10.0 170.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0).
	self assert: align rightMostElement equals: es second.
	align right.
	self
		assert: (es collect: [ :e | e encompassingRectangle right ]) asArray
		equals: #(170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0)
	"	
	RTView new addAll: es; inspect.
	"
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> testFromTop [
	<madeBySmallAmp>
	| es |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	align elements: es.
	TSHorizontalLineLayout on: es.
	es second translateBy: 0 @ -50.
	self
		assert: (es collect: [ :e | e encompassingRectangle top ]) asArray
		equals: #(0.0 -50.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align topMostElement equals: es second.
	align top.
	self
		assert: (es collect: [ :e | e encompassingRectangle top ]) asArray
		equals: #(-50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0)
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> testHasElement [
	<madeBySmallAmp>
	self deny: align hasElement.
	align elements: (Array with: RSElement new).
	self assert: align hasElement.
	align elements: #().
	self deny: align hasElement
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> testHasElement_amp [
	<madeBySmallAmp>
	align elements: (Array with: RSElement new).
	align elements: #().
	self assert: align hasElement class equals: False
]

{ #category : #'as yet unclassified' }
RSAlignmentTestMinAddAmpTest >> testNoErrorOnDefault [
	<madeBySmallAmp>
	RSAlignment new
		left;
		right;
		top;
		bottom
]
