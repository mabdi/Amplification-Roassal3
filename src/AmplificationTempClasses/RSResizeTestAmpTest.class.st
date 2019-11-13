Class {
	#name : #RSResizeTestAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'elements',
		'resize'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> setUp [
	super setUp.
	elements := (RSShapeBuilder box height: #yourself; width: [ :o | o + 1 ]) elementsOn: (1 to: 3).
	resize := RSResize new.
	resize elements: elements.
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testBiggestElement_amp [
	<madeBySmallAmp>
	resize useBiggestElement.
	self
		assert: resize class
		equals: RSResize
		description: 'testBiggestElement_amp:1.1'
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testBiggestExtent_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testHighestElement_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testSameHeight_amp [
	<madeBySmallAmp>
	resize fixedElement: elements second.
	self
		assert: resize class
		equals: RSResize
		description: 'testSameHeight_amp:1.1'.
	resize sameHeight.
	self
		assert: resize class
		equals: RSResize
		description: 'testSameHeight_amp:2.1'
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testSameSizeWithoutFixedElement_amp [
	<madeBySmallAmp>
	resize sameSize.
	self
		assert: resize class
		equals: RSResize
		description: 'testSameSizeWithoutFixedElement_amp:1.1'
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testSameSize_amp [
	<madeBySmallAmp>
	resize fixedElement: elements second.
	self
		assert: resize class
		equals: RSResize
		description: 'testSameSize_amp:1.1'.
	resize sameSize.
	self
		assert: resize class
		equals: RSResize
		description: 'testSameSize_amp:2.1'
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testSameWidth_amp [
	<madeBySmallAmp>
	resize fixedElement: elements second.
	self
		assert: resize class
		equals: RSResize
		description: 'testSameWidth_amp:1.1'.
	resize sameWidth.
	self
		assert: resize class
		equals: RSResize
		description: 'testSameWidth_amp:2.1'
]

{ #category : #'as yet unclassified' }
RSResizeTestAmpTest >> testWidestElement_amp [
	<madeBySmallAmp>
	
]
