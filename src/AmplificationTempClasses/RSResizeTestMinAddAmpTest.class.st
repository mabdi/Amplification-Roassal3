Class {
	#name : #RSResizeTestMinAddAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'elements',
		'resize'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> setUp [
	super setUp.
	elements := (RSShapeBuilder box height: #yourself; width: [ :o | o + 1 ]) elementsOn: (1 to: 3).
	resize := RSResize new.
	resize elements: elements.
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testBiggestElement [
	<madeBySmallAmp>
	self assert: resize biggestElement equals: elements last.
	resize useBiggestElement.
	self assert: resize fixedElement equals: elements last
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testBiggestExtent [
	<madeBySmallAmp>
	self assert: resize biggestExtent equals: 4 @ 3
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testHighestElement [
	<madeBySmallAmp>
	self assert: resize highestElement equals: elements last
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testSameHeight [
	<madeBySmallAmp>
	resize fixedElement: elements second.
	resize sameHeight.
	self
		assert: (elements collect: #extent) sorted asArray
		equals: (Array with: 2.0 @ 2.0 with: 3.0 @ 2.0 with: 4.0 @ 2.0)
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testSameSize [
	<madeBySmallAmp>
	resize fixedElement: elements second.
	resize sameSize.
	self
		assert: (elements collect: #extent) asSet asArray
		equals: (Array with: 3.0 @ 2.0)
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testSameSizeWithoutFixedElement [
	<madeBySmallAmp>
	resize sameSize.
	self
		assert: (elements collect: #extent) asSet asArray
		equals: (Array with: 4.0 @ 3.0)
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testSameWidth [
	<madeBySmallAmp>
	resize fixedElement: elements second.
	resize sameWidth.
	self
		assert: (elements collect: #extent) sorted asArray
		equals: (Array with: 3.0 @ 1.0 with: 3.0 @ 2.0 with: 3.0 @ 3.0)
]

{ #category : #'as yet unclassified' }
RSResizeTestMinAddAmpTest >> testWidestElement [
	<madeBySmallAmp>
	self assert: resize widestElement equals: elements last
]
