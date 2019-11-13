Class {
	#name : #TSPopupTestAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view',
		'elements'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> setUp [
	super setUp.
	view := RSView new.
	elements := RSShapeBuilder box elementsOn: #(1 2).
	view addAll: elements
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> testNoPopup_amp [
	<madeBySmallAmp>
	| tmp_H1Mj5IkvD01 tmp_AUjFlaQ3PS2 |
	tmp_AUjFlaQ3PS2 := elements first.
	self
		assert: elements class
		equals: TSGroup
		description: 'testNoPopup_amp:1.1'.
	self
		assert: elements size
		equals: 2
		description: 'testNoPopup_amp:1.2'.
	self
		assert: tmp_AUjFlaQ3PS2 class
		equals: RSElement
		description: 'testNoPopup_amp:1.1'.
	self
		assert: tmp_AUjFlaQ3PS2 hasChildren class
		equals: False
		description: 'testNoPopup_amp:1.2'.
	self
		assert: tmp_AUjFlaQ3PS2 hasChildren
		equals: false
		description: 'testNoPopup_amp:1.3'.
	tmp_H1Mj5IkvD01 := tmp_AUjFlaQ3PS2 announce: TSMouseEnter.
	self
		assert: tmp_AUjFlaQ3PS2 class
		equals: RSElement
		description: 'testNoPopup_amp:2.1'.
	self
		assert: tmp_AUjFlaQ3PS2 hasChildren class
		equals: False
		description: 'testNoPopup_amp:2.2'.
	self
		assert: tmp_AUjFlaQ3PS2 hasChildren
		equals: false
		description: 'testNoPopup_amp:2.3'.
	self
		assert: tmp_H1Mj5IkvD01 class
		equals: TSBox
		description: 'testNoPopup_amp:2.1'.
	self
		assert: tmp_H1Mj5IkvD01 cornerRadius class
		equals: UndefinedObject
		description: 'testNoPopup_amp:2.2'.
	self
		assert: tmp_H1Mj5IkvD01 cornerRadius
		equals: nil
		description: 'testNoPopup_amp:2.3'.
	self
		assert: tmp_H1Mj5IkvD01 hasCornerRadius class
		equals: False
		description: 'testNoPopup_amp:2.4'.
	self
		assert: tmp_H1Mj5IkvD01 hasCornerRadius
		equals: false
		description: 'testNoPopup_amp:2.5'
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> testPopupOnElementNotAddedToAView_amp [
	<madeBySmallAmp>
	| el tmp_yfnGOet92s2 tmp_NvTxBIQjwn3 |
	el := RSShapeBuilder box element.
	self
		assert: el class
		equals: RSElement
		description: 'testPopupOnElementNotAddedToAView_amp:1.1'.
	self
		assert: el hasChildren class
		equals: False
		description: 'testPopupOnElementNotAddedToAView_amp:1.2'.
	self
		assert: el hasChildren
		equals: false
		description: 'testPopupOnElementNotAddedToAView_amp:1.3'.
	tmp_yfnGOet92s2 := el @ TSPopup.
	self
		assert: el class
		equals: RSElement
		description: 'testPopupOnElementNotAddedToAView_amp:2.1'.
	self
		assert: el hasChildren class
		equals: False
		description: 'testPopupOnElementNotAddedToAView_amp:2.2'.
	self
		assert: el hasChildren
		equals: false
		description: 'testPopupOnElementNotAddedToAView_amp:2.3'.
	self
		assert: tmp_yfnGOet92s2 class
		equals: TSBox
		description: 'testPopupOnElementNotAddedToAView_amp:2.1'.
	self
		assert: tmp_yfnGOet92s2 cornerRadius class
		equals: UndefinedObject
		description: 'testPopupOnElementNotAddedToAView_amp:2.2'.
	self
		assert: tmp_yfnGOet92s2 cornerRadius
		equals: nil
		description: 'testPopupOnElementNotAddedToAView_amp:2.3'.
	self
		assert: tmp_yfnGOet92s2 hasCornerRadius class
		equals: False
		description: 'testPopupOnElementNotAddedToAView_amp:2.4'.
	self
		assert: tmp_yfnGOet92s2 hasCornerRadius
		equals: false
		description: 'testPopupOnElementNotAddedToAView_amp:2.5'.
	tmp_NvTxBIQjwn3 := el announce: TSMouseEnter.
	"Should not produce an error"
	self
		assert: el class
		equals: RSElement
		description: 'testPopupOnElementNotAddedToAView_amp:3.1'.
	self
		assert: el hasChildren class
		equals: False
		description: 'testPopupOnElementNotAddedToAView_amp:3.2'.
	self
		assert: el hasChildren
		equals: false
		description: 'testPopupOnElementNotAddedToAView_amp:3.3'.
	self
		assert: tmp_NvTxBIQjwn3 class
		equals: TSBox
		description: 'testPopupOnElementNotAddedToAView_amp:3.1'.
	self
		assert: tmp_NvTxBIQjwn3 cornerRadius class
		equals: UndefinedObject
		description: 'testPopupOnElementNotAddedToAView_amp:3.2'.
	self
		assert: tmp_NvTxBIQjwn3 cornerRadius
		equals: nil
		description: 'testPopupOnElementNotAddedToAView_amp:3.3'.
	self
		assert: tmp_NvTxBIQjwn3 hasCornerRadius class
		equals: False
		description: 'testPopupOnElementNotAddedToAView_amp:3.4'.
	self
		assert: tmp_NvTxBIQjwn3 hasCornerRadius
		equals: false
		description: 'testPopupOnElementNotAddedToAView_amp:3.5'
]

{ #category : #'as yet unclassified' }
TSPopupTestAmpTest >> testWithPopup_amp [
	<madeBySmallAmp>
	| tmp_13Vs4QaKxc2 tmp_ayloVJpsam3 |
	elements @ TSPopup.
	self
		assert: elements class
		equals: TSGroup
		description: 'testWithPopup_amp:1.1'.
	self
		assert: elements size
		equals: 2
		description: 'testWithPopup_amp:1.2'.
	tmp_ayloVJpsam3 := elements first.
	self
		assert: elements class
		equals: TSGroup
		description: 'testWithPopup_amp:2.1'.
	self
		assert: elements size
		equals: 2
		description: 'testWithPopup_amp:2.2'.
	self
		assert: tmp_ayloVJpsam3 class
		equals: RSElement
		description: 'testWithPopup_amp:2.1'.
	self
		assert: tmp_ayloVJpsam3 hasChildren class
		equals: False
		description: 'testWithPopup_amp:2.2'.
	self
		assert: tmp_ayloVJpsam3 hasChildren
		equals: false
		description: 'testWithPopup_amp:2.3'.
	tmp_13Vs4QaKxc2 := tmp_ayloVJpsam3 announce: TSMouseMove.
	self
		assert: tmp_ayloVJpsam3 class
		equals: RSElement
		description: 'testWithPopup_amp:3.1'.
	self
		assert: tmp_ayloVJpsam3 hasChildren class
		equals: False
		description: 'testWithPopup_amp:3.2'.
	self
		assert: tmp_ayloVJpsam3 hasChildren
		equals: false
		description: 'testWithPopup_amp:3.3'.
	self
		assert: tmp_13Vs4QaKxc2 class
		equals: TSBox
		description: 'testWithPopup_amp:3.1'.
	self
		assert: tmp_13Vs4QaKxc2 cornerRadius class
		equals: UndefinedObject
		description: 'testWithPopup_amp:3.2'.
	self
		assert: tmp_13Vs4QaKxc2 cornerRadius
		equals: nil
		description: 'testWithPopup_amp:3.3'.
	self
		assert: tmp_13Vs4QaKxc2 hasCornerRadius class
		equals: False
		description: 'testWithPopup_amp:3.4'.
	self
		assert: tmp_13Vs4QaKxc2 hasCornerRadius
		equals: false
		description: 'testWithPopup_amp:3.5'
]
