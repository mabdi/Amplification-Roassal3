Class {
	#name : #RSAlignmentTestAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'align'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> setUp [
	super setUp.
	align := RSAlignment new.
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> testFromBottom_amp [
	<madeBySmallAmp>
	| es tmp_qZdiMuccNN4 tmp_DOUDDqSP6J6 |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	self
		assert: (RSShapeBuilder box size: #yourself) class
		equals: RSShapeBuilder
		description: 'testFromBottom_amp:1.1'.
	self
		assert: (RSShapeBuilder box size: #yourself) shapeClass class
		equals: TSBox class
		description: 'testFromBottom_amp:1.2'.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromBottom_amp:1.1'.
	self assert: es size equals: 10 description: 'testFromBottom_amp:1.2'.
	align elements: es.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromBottom_amp:2.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromBottom_amp:2.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromBottom_amp:2.3'.
	tmp_qZdiMuccNN4 := TSHorizontalLineLayout on: es.
	self
		assert: tmp_qZdiMuccNN4 class
		equals: TSGroup
		description: 'testFromBottom_amp:3.1'.
	self
		assert: tmp_qZdiMuccNN4 size
		equals: 10
		description: 'testFromBottom_amp:3.2'.
	tmp_DOUDDqSP6J6 := es second.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromBottom_amp:4.1'.
	self assert: es size equals: 10 description: 'testFromBottom_amp:4.2'.
	self
		assert: tmp_DOUDDqSP6J6 class
		equals: RSElement
		description: 'testFromBottom_amp:4.1'.
	self
		assert: tmp_DOUDDqSP6J6 hasChildren class
		equals: False
		description: 'testFromBottom_amp:4.2'.
	self
		assert: tmp_DOUDDqSP6J6 hasChildren
		equals: false
		description: 'testFromBottom_amp:4.3'.
	align bottom.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromBottom_amp:5.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromBottom_amp:5.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromBottom_amp:5.3'.
	align bottom
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> testFromLeft_amp [
	<madeBySmallAmp>
	| es tmp_6mRNP5Ruuy4 tmp_BD6JWRsVqG6 |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	self
		assert: (RSShapeBuilder box size: #yourself) class
		equals: RSShapeBuilder
		description: 'testFromLeft_amp:1.1'.
	self
		assert: (RSShapeBuilder box size: #yourself) shapeClass class
		equals: TSBox class
		description: 'testFromLeft_amp:1.2'.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromLeft_amp:1.1'.
	self assert: es size equals: 10 description: 'testFromLeft_amp:1.2'.
	align elements: es.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromLeft_amp:2.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromLeft_amp:2.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromLeft_amp:2.3'.
	tmp_6mRNP5Ruuy4 := TSVerticalLineLayout on: es.
	self
		assert: tmp_6mRNP5Ruuy4 class
		equals: TSGroup
		description: 'testFromLeft_amp:3.1'.
	self
		assert: tmp_6mRNP5Ruuy4 size
		equals: 10
		description: 'testFromLeft_amp:3.2'.
	tmp_BD6JWRsVqG6 := es second.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromLeft_amp:4.1'.
	self assert: es size equals: 10 description: 'testFromLeft_amp:4.2'.
	self
		assert: tmp_BD6JWRsVqG6 class
		equals: RSElement
		description: 'testFromLeft_amp:4.1'.
	self
		assert: tmp_BD6JWRsVqG6 hasChildren class
		equals: False
		description: 'testFromLeft_amp:4.2'.
	self
		assert: tmp_BD6JWRsVqG6 hasChildren
		equals: false
		description: 'testFromLeft_amp:4.3'.
	align left.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromLeft_amp:5.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromLeft_amp:5.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromLeft_amp:5.3'.
	align left
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> testFromRight_amp [
	<madeBySmallAmp>
	| es tmp_lH53I3NGWc4 tmp_tdRXqseJtE6 |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	self
		assert: (RSShapeBuilder box size: #yourself) class
		equals: RSShapeBuilder
		description: 'testFromRight_amp:1.1'.
	self
		assert: (RSShapeBuilder box size: #yourself) shapeClass class
		equals: TSBox class
		description: 'testFromRight_amp:1.2'.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromRight_amp:1.1'.
	self assert: es size equals: 10 description: 'testFromRight_amp:1.2'.
	align elements: es.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromRight_amp:2.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromRight_amp:2.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromRight_amp:2.3'.
	tmp_lH53I3NGWc4 := TSVerticalLineLayout on: es.
	self
		assert: tmp_lH53I3NGWc4 class
		equals: TSGroup
		description: 'testFromRight_amp:3.1'.
	self
		assert: tmp_lH53I3NGWc4 size
		equals: 10
		description: 'testFromRight_amp:3.2'.
	tmp_tdRXqseJtE6 := es second.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromRight_amp:4.1'.
	self assert: es size equals: 10 description: 'testFromRight_amp:4.2'.
	self
		assert: tmp_tdRXqseJtE6 class
		equals: RSElement
		description: 'testFromRight_amp:4.1'.
	self
		assert: tmp_tdRXqseJtE6 hasChildren class
		equals: False
		description: 'testFromRight_amp:4.2'.
	self
		assert: tmp_tdRXqseJtE6 hasChildren
		equals: false
		description: 'testFromRight_amp:4.3'.
	align right.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromRight_amp:5.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromRight_amp:5.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromRight_amp:5.3'.
	align right
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> testFromTop_amp [
	<madeBySmallAmp>
	| es tmp_yY5XMwi6eV4 tmp_czFJL03eED6 |
	es := (RSShapeBuilder box size: #yourself)
		elementsOn: (10 to: 100 by: 10).
	self
		assert: (RSShapeBuilder box size: #yourself) class
		equals: RSShapeBuilder
		description: 'testFromTop_amp:1.1'.
	self
		assert: (RSShapeBuilder box size: #yourself) shapeClass class
		equals: TSBox class
		description: 'testFromTop_amp:1.2'.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromTop_amp:1.1'.
	self assert: es size equals: 10 description: 'testFromTop_amp:1.2'.
	align elements: es.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromTop_amp:2.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromTop_amp:2.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromTop_amp:2.3'.
	tmp_yY5XMwi6eV4 := TSHorizontalLineLayout on: es.
	self
		assert: tmp_yY5XMwi6eV4 class
		equals: TSGroup
		description: 'testFromTop_amp:3.1'.
	self
		assert: tmp_yY5XMwi6eV4 size
		equals: 10
		description: 'testFromTop_amp:3.2'.
	tmp_czFJL03eED6 := es second.
	self
		assert: es class
		equals: TSGroup
		description: 'testFromTop_amp:4.1'.
	self assert: es size equals: 10 description: 'testFromTop_amp:4.2'.
	self
		assert: tmp_czFJL03eED6 class
		equals: RSElement
		description: 'testFromTop_amp:4.1'.
	self
		assert: tmp_czFJL03eED6 hasChildren class
		equals: False
		description: 'testFromTop_amp:4.2'.
	self
		assert: tmp_czFJL03eED6 hasChildren
		equals: false
		description: 'testFromTop_amp:4.3'.
	align top.
	self
		assert: align class
		equals: RSAlignment
		description: 'testFromTop_amp:5.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testFromTop_amp:5.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testFromTop_amp:5.3'.
	align top
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> testHasElement_amp [
	<madeBySmallAmp>
	align elements: (Array with: RSElement new).
	self
		assert: align class
		equals: RSAlignment
		description: 'testHasElement_amp:1.1'.
	self
		assert: align hasElement class
		equals: True
		description: 'testHasElement_amp:1.2'.
	self
		assert: align hasElement
		equals: true
		description: 'testHasElement_amp:1.3'.
	align elements: #().
	self
		assert: align class
		equals: RSAlignment
		description: 'testHasElement_amp:2.1'.
	self
		assert: align hasElement class
		equals: False
		description: 'testHasElement_amp:2.2'.
	self
		assert: align hasElement
		equals: false
		description: 'testHasElement_amp:2.3'
]

{ #category : #'as yet unclassified' }
RSAlignmentTestAmpTest >> testNoErrorOnDefault_amp [
	<madeBySmallAmp>
	| tmp_30sSpiAGGG3 tmp_KaPEYCHAwT5 tmp_YkzhJw3KrF7 tmp_XdOacLsIy48 |
	tmp_30sSpiAGGG3 := RSAlignment new.
	self
		assert: tmp_30sSpiAGGG3 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:1.1'.
	self
		assert: tmp_30sSpiAGGG3 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:1.2'.
	self
		assert: tmp_30sSpiAGGG3 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:1.3'.
	tmp_30sSpiAGGG3 left.
	self
		assert: tmp_30sSpiAGGG3 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:2.1'.
	self
		assert: tmp_30sSpiAGGG3 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:2.2'.
	self
		assert: tmp_30sSpiAGGG3 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:2.3'.
	tmp_KaPEYCHAwT5 := RSAlignment new.
	self
		assert: tmp_KaPEYCHAwT5 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:3.1'.
	self
		assert: tmp_KaPEYCHAwT5 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:3.2'.
	self
		assert: tmp_KaPEYCHAwT5 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:3.3'.
	tmp_KaPEYCHAwT5 right.
	self
		assert: tmp_KaPEYCHAwT5 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:4.1'.
	self
		assert: tmp_KaPEYCHAwT5 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:4.2'.
	self
		assert: tmp_KaPEYCHAwT5 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:4.3'.
	tmp_YkzhJw3KrF7 := RSAlignment new.
	self
		assert: tmp_YkzhJw3KrF7 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:5.1'.
	self
		assert: tmp_YkzhJw3KrF7 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:5.2'.
	self
		assert: tmp_YkzhJw3KrF7 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:5.3'.
	tmp_YkzhJw3KrF7 top.
	self
		assert: tmp_YkzhJw3KrF7 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:6.1'.
	self
		assert: tmp_YkzhJw3KrF7 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:6.2'.
	self
		assert: tmp_YkzhJw3KrF7 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:6.3'.
	tmp_XdOacLsIy48 := RSAlignment new.
	self
		assert: tmp_XdOacLsIy48 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:7.1'.
	self
		assert: tmp_XdOacLsIy48 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:7.2'.
	self
		assert: tmp_XdOacLsIy48 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:7.3'.
	tmp_XdOacLsIy48 bottom.
	self
		assert: tmp_XdOacLsIy48 class
		equals: RSAlignment
		description: 'testNoErrorOnDefault_amp:8.1'.
	self
		assert: tmp_XdOacLsIy48 hasElement class
		equals: False
		description: 'testNoErrorOnDefault_amp:8.2'.
	self
		assert: tmp_XdOacLsIy48 hasElement
		equals: false
		description: 'testNoErrorOnDefault_amp:8.3'
]
