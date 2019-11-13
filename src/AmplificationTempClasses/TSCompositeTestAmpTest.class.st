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
	| tmp_nYuFETSDtH3 tmp_ms8PU69c2Q4 tmp_UiSbjzBQl67 tmp_dZ4TleXttf8 tmp_HtqxKcLAM811 tmp_ckJtycLE3D12 |
	tmp_nYuFETSDtH3 := TSComposite new.
	self
		assert: tmp_nYuFETSDtH3 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:1.1'.
	self
		assert: tmp_nYuFETSDtH3 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:1.2'.
	self
		assert: tmp_nYuFETSDtH3 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:1.3'.
	tmp_UiSbjzBQl67 := TSComposite new.
	self
		assert: tmp_UiSbjzBQl67 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:2.1'.
	self
		assert: tmp_UiSbjzBQl67 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:2.2'.
	self
		assert: tmp_UiSbjzBQl67 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:2.3'.
	tmp_HtqxKcLAM811 := TSComposite new.
	self
		assert: tmp_HtqxKcLAM811 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:3.1'.
	self
		assert: tmp_HtqxKcLAM811 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:3.2'.
	self
		assert: tmp_HtqxKcLAM811 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:3.3'.
	tmp_HtqxKcLAM811 shapes: TSGroup new.
	self
		assert: tmp_HtqxKcLAM811 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:4.1'.
	self
		assert: tmp_HtqxKcLAM811 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:4.2'.
	self
		assert: tmp_HtqxKcLAM811 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:4.3'.
	tmp_ckJtycLE3D12 := TSComposite new.
	self
		assert: tmp_ckJtycLE3D12 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:5.1'.
	self
		assert: tmp_ckJtycLE3D12 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:5.2'.
	self
		assert: tmp_ckJtycLE3D12 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:5.3'.
	tmp_ckJtycLE3D12 padding: 5.
	self
		assert: tmp_ckJtycLE3D12 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:6.1'.
	self
		assert: tmp_ckJtycLE3D12 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:6.2'.
	self
		assert: tmp_ckJtycLE3D12 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:6.3'.
	tmp_dZ4TleXttf8 := TSComposite new.
	self
		assert: tmp_dZ4TleXttf8 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:7.1'.
	self
		assert: tmp_dZ4TleXttf8 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:7.2'.
	self
		assert: tmp_dZ4TleXttf8 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:7.3'.
	tmp_dZ4TleXttf8 padding: 5.
	self
		assert: tmp_dZ4TleXttf8 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:8.1'.
	self
		assert: tmp_dZ4TleXttf8 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:8.2'.
	self
		assert: tmp_dZ4TleXttf8 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:8.3'.
	tmp_ms8PU69c2Q4 := TSComposite new.
	self
		assert: tmp_ms8PU69c2Q4 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:9.1'.
	self
		assert: tmp_ms8PU69c2Q4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:9.2'.
	self
		assert: tmp_ms8PU69c2Q4 shapes size
		equals: 0
		description: 'testPaddingOkay_amp:9.3'.
	tmp_ms8PU69c2Q4 padding: 5.
	self
		assert: tmp_ms8PU69c2Q4 class
		equals: TSComposite
		description: 'testPaddingOkay_amp:10.1'.
	self
		assert: tmp_ms8PU69c2Q4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay_amp:10.2'.
	self
		assert: tmp_ms8PU69c2Q4 shapes size
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
