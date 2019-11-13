Class {
	#name : #RSShapeBuilderTestAmpTest,
	#superclass : #TSTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> testColor_amp [
	<madeBySmallAmp>
	| sb |
	sb := RSShapeBuilder box.
	self
		assert: sb class
		equals: RSShapeBuilder
		description: 'testColor_amp:1.1'.
	self
		assert: sb shapeClass class
		equals: TSBox class
		description: 'testColor_amp:1.2'.
	sb color: Color blue.
	self
		assert: sb class
		equals: RSShapeBuilder
		description: 'testColor_amp:2.1'.
	self
		assert: sb shapeClass class
		equals: TSBox class
		description: 'testColor_amp:2.2'
]

{ #category : #'as yet unclassified' }
RSShapeBuilderTestAmpTest >> testMultilineLabel_amp [
	<madeBySmallAmp>
	| shape label child |
	shape := RSShapeBuilder multiline
		fontSize: 30;
		bold.
	self
		assert: shape class
		equals: RSShapeBuilder
		description: 'testMultilineLabel_amp:1.1'.
	self
		assert: shape shapeClass class
		equals: TSLabel class
		description: 'testMultilineLabel_amp:1.2'.
	label := shape elementOn: 'foo'.
	self
		assert: shape class
		equals: RSShapeBuilder
		description: 'testMultilineLabel_amp:2.1'.
	self
		assert: shape shapeClass class
		equals: TSLabel class
		description: 'testMultilineLabel_amp:2.2'.
	self
		assert: label class
		equals: RSElement
		description: 'testMultilineLabel_amp:2.1'.
	self
		assert: label hasChildren class
		equals: False
		description: 'testMultilineLabel_amp:2.2'.
	self
		assert: label hasChildren
		equals: false
		description: 'testMultilineLabel_amp:2.3'.
	child := label shape shapes first.
	self
		assert: label shape shapes class
		equals: TSGroup
		description: 'testMultilineLabel_amp:3.1'.
	self
		assert: label shape shapes size
		equals: 1
		description: 'testMultilineLabel_amp:3.2'.
	self
		assert: child class
		equals: TSLabel
		description: 'testMultilineLabel_amp:3.1'.
	self
		assert: child text class
		equals: ByteString
		description: 'testMultilineLabel_amp:3.2'.
	self
		assert: child text
		equals: 'foo'
		description: 'testMultilineLabel_amp:3.3'.
	self
		assert: child descent class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.4'.
	self
		assert: child descent
		equals: 11
		description: 'testMultilineLabel_amp:3.5'.
	self
		assert: child textHeight class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.6'.
	self
		assert: child textHeight
		equals: 51
		description: 'testMultilineLabel_amp:3.7'.
	self
		assert: child font class
		equals: LogicalFont
		description: 'testMultilineLabel_amp:3.8'.
	self
		assert: child font isRegular class
		equals: False
		description: 'testMultilineLabel_amp:3.9'.
	self
		assert: child font isRegular
		equals: false
		description: 'testMultilineLabel_amp:3.10'.
	self
		assert: child font weightValue class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.11'.
	self
		assert: child font weightValue
		equals: 700
		description: 'testMultilineLabel_amp:3.12'.
	self
		assert: child font familyName class
		equals: ByteString
		description: 'testMultilineLabel_amp:3.13'.
	self
		assert: child font familyName
		equals: 'Source Sans Pro'
		description: 'testMultilineLabel_amp:3.14'.
	self
		assert: child font stretchValue class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.15'.
	self
		assert: child font stretchValue
		equals: 5
		description: 'testMultilineLabel_amp:3.16'.
	self
		assert: child font isBold class
		equals: True
		description: 'testMultilineLabel_amp:3.17'.
	self
		assert: child font isBold
		equals: true
		description: 'testMultilineLabel_amp:3.18'.
	self
		assert: child font isBoldOrBolder class
		equals: True
		description: 'testMultilineLabel_amp:3.19'.
	self
		assert: child font isBoldOrBolder
		equals: true
		description: 'testMultilineLabel_amp:3.20'.
	self
		assert: child font slantValue class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.21'.
	self
		assert: child font slantValue
		equals: 0
		description: 'testMultilineLabel_amp:3.22'.
	self
		assert: child font isItalicOrOblique class
		equals: False
		description: 'testMultilineLabel_amp:3.23'.
	self
		assert: child font isItalicOrOblique
		equals: false
		description: 'testMultilineLabel_amp:3.24'.
	self
		assert: child font isItalic class
		equals: False
		description: 'testMultilineLabel_amp:3.25'.
	self
		assert: child font isItalic
		equals: false
		description: 'testMultilineLabel_amp:3.26'.
	self
		assert: child font lineGrid class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.27'.
	self
		assert: child font lineGrid
		equals: 51
		description: 'testMultilineLabel_amp:3.28'.
	self
		assert: child font pointSize class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.29'.
	self
		assert: child font pointSize
		equals: 30
		description: 'testMultilineLabel_amp:3.30'.
	self
		assert: child font maxAscii class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.31'.
	self
		assert: child font maxAscii
		equals: 1152921504606846975
		description: 'testMultilineLabel_amp:3.32'.
	self
		assert: child font fallbackFamilyNames class
		equals: UndefinedObject
		description: 'testMultilineLabel_amp:3.33'.
	self
		assert: child font fallbackFamilyNames
		equals: nil
		description: 'testMultilineLabel_amp:3.34'.
	self
		assert: child textWidth class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.35'.
	self
		assert: child textWidth
		equals: 60
		description: 'testMultilineLabel_amp:3.36'.
	self
		assert: child isStruckOut class
		equals: False
		description: 'testMultilineLabel_amp:3.37'.
	self
		assert: child isStruckOut
		equals: false
		description: 'testMultilineLabel_amp:3.38'.
	self
		assert: child fontName class
		equals: ByteString
		description: 'testMultilineLabel_amp:3.39'.
	self
		assert: child fontName
		equals: 'Source Sans Pro'
		description: 'testMultilineLabel_amp:3.40'.
	self
		assert: child isBold class
		equals: True
		description: 'testMultilineLabel_amp:3.41'.
	self
		assert: child isBold
		equals: true
		description: 'testMultilineLabel_amp:3.42'.
	self
		assert: child isNormal class
		equals: False
		description: 'testMultilineLabel_amp:3.43'.
	self
		assert: child isNormal
		equals: false
		description: 'testMultilineLabel_amp:3.44'.
	self
		assert: child isItalic class
		equals: False
		description: 'testMultilineLabel_amp:3.45'.
	self
		assert: child isItalic
		equals: false
		description: 'testMultilineLabel_amp:3.46'.
	self
		assert: child fontSize class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.47'.
	self
		assert: child fontSize
		equals: 30
		description: 'testMultilineLabel_amp:3.48'.
	self
		assert: child emphasis class
		equals: TextEmphasis
		description: 'testMultilineLabel_amp:3.49'.
	self
		assert: child emphasis set class
		equals: True
		description: 'testMultilineLabel_amp:3.50'.
	self
		assert: child emphasis set
		equals: true
		description: 'testMultilineLabel_amp:3.51'.
	self
		assert: child emphasis emphasisCode class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.52'.
	self
		assert: child emphasis emphasisCode
		equals: 1
		description: 'testMultilineLabel_amp:3.53'.
	self
		assert: child emphasis value class
		equals: SmallInteger
		description: 'testMultilineLabel_amp:3.54'.
	self
		assert: child emphasis value
		equals: 1
		description: 'testMultilineLabel_amp:3.55'.
	self
		assert: child emphasis dominatedByCmd0 class
		equals: True
		description: 'testMultilineLabel_amp:3.56'.
	self
		assert: child emphasis dominatedByCmd0
		equals: true
		description: 'testMultilineLabel_amp:3.57'.
	self
		assert: child isUnderlined class
		equals: False
		description: 'testMultilineLabel_amp:3.58'.
	self
		assert: child isUnderlined
		equals: false
		description: 'testMultilineLabel_amp:3.59'
]
