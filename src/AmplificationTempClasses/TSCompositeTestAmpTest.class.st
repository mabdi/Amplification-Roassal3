Class {
	#name : #TSCompositeTestAmpTest,
	#superclass : #TSTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSCompositeTestAmpTest >> testPaddingOkay_amp [
	"No error should be raised"

	<madeBySmallAmp>
	| tmp_vGn3HMoc9Z3 tmp_ZLBsfcyftr4 tmp_X5GUtd6lvA7 tmp_536N40p0nH8 tmp_n1ZSZeABfk11 tmp_cyhOEIjup812 |
	tmp_vGn3HMoc9Z3 := TSComposite new.
	self
		assert: tmp_vGn3HMoc9Z3 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:1.1'.
	self
		assert: tmp_vGn3HMoc9Z3 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:1.2'.
	self
		assert: tmp_vGn3HMoc9Z3 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:1.3'.
	tmp_X5GUtd6lvA7 := TSComposite new.
	self
		assert: tmp_X5GUtd6lvA7 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:2.1'.
	self
		assert: tmp_X5GUtd6lvA7 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:2.2'.
	self
		assert: tmp_X5GUtd6lvA7 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:2.3'.
	tmp_n1ZSZeABfk11 := TSComposite new.
	self
		assert: tmp_n1ZSZeABfk11 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:3.1'.
	self
		assert: tmp_n1ZSZeABfk11 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:3.2'.
	self
		assert: tmp_n1ZSZeABfk11 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:3.3'.
	tmp_n1ZSZeABfk11 shapes: TSGroup new.
	self
		assert: tmp_n1ZSZeABfk11 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:4.1'.
	self
		assert: tmp_n1ZSZeABfk11 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:4.2'.
	self
		assert: tmp_n1ZSZeABfk11 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:4.3'.
	tmp_cyhOEIjup812 := TSComposite new.
	self
		assert: tmp_cyhOEIjup812 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:5.1'.
	self
		assert: tmp_cyhOEIjup812 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:5.2'.
	self
		assert: tmp_cyhOEIjup812 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:5.3'.
	tmp_cyhOEIjup812 padding: 5.
	self
		assert: tmp_cyhOEIjup812 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:6.1'.
	self
		assert: tmp_cyhOEIjup812 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:6.2'.
	self
		assert: tmp_cyhOEIjup812 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:6.3'.
	tmp_536N40p0nH8 := TSComposite new.
	self
		assert: tmp_536N40p0nH8 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:7.1'.
	self
		assert: tmp_536N40p0nH8 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:7.2'.
	self
		assert: tmp_536N40p0nH8 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:7.3'.
	tmp_536N40p0nH8 padding: 5.
	self
		assert: tmp_536N40p0nH8 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:8.1'.
	self
		assert: tmp_536N40p0nH8 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:8.2'.
	self
		assert: tmp_536N40p0nH8 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:8.3'.
	tmp_ZLBsfcyftr4 := TSComposite new.
	self
		assert: tmp_ZLBsfcyftr4 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:9.1'.
	self
		assert: tmp_ZLBsfcyftr4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:9.2'.
	self
		assert: tmp_ZLBsfcyftr4 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:9.3'.
	tmp_ZLBsfcyftr4 padding: 5.
	self
		assert: tmp_ZLBsfcyftr4 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:10.1'.
	self
		assert: tmp_ZLBsfcyftr4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:10.2'.
	self
		assert: tmp_ZLBsfcyftr4 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:10.3'.
	TSComposite new
		shapes:
			(TSGroup new
				add: TSBox new;
				add: TSBox new;
				yourself);
		padding: 5.
	TSComposite new
		shapes: TSGroup new;
		padding: 5
]
