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
TSCompositeTestAmpTest >> testPaddingOkay [
	"No error should be raised"

	<madeBySmallAmp>
	| tmp_9zA4zBBaxz3 tmp_HVVdZgqAOg4 tmp_4cRNY1edpn7 tmp_TKNoqyDHMf8 tmp_gVsh3jmeIF11 tmp_dy1ow3Csju12 |
	tmp_9zA4zBBaxz3 := TSComposite new.
	self
		assert: tmp_9zA4zBBaxz3 class
		equals: TSComposite
		description: 'testPaddingOkay:1.1'.
	self
		assert: tmp_9zA4zBBaxz3 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:1.2'.
	self
		assert: tmp_9zA4zBBaxz3 shapes size
		equals: 0
		description: 'testPaddingOkay:1.3'.
	tmp_4cRNY1edpn7 := TSComposite new.
	self
		assert: tmp_4cRNY1edpn7 class
		equals: TSComposite
		description: 'testPaddingOkay:2.1'.
	self
		assert: tmp_4cRNY1edpn7 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:2.2'.
	self
		assert: tmp_4cRNY1edpn7 shapes size
		equals: 0
		description: 'testPaddingOkay:2.3'.
	tmp_gVsh3jmeIF11 := TSComposite new.
	self
		assert: tmp_gVsh3jmeIF11 class
		equals: TSComposite
		description: 'testPaddingOkay:3.1'.
	self
		assert: tmp_gVsh3jmeIF11 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:3.2'.
	self
		assert: tmp_gVsh3jmeIF11 shapes size
		equals: 0
		description: 'testPaddingOkay:3.3'.
	tmp_gVsh3jmeIF11 shapes: TSGroup new.
	self
		assert: tmp_gVsh3jmeIF11 class
		equals: TSComposite
		description: 'testPaddingOkay:4.1'.
	self
		assert: tmp_gVsh3jmeIF11 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:4.2'.
	self
		assert: tmp_gVsh3jmeIF11 shapes size
		equals: 0
		description: 'testPaddingOkay:4.3'.
	tmp_dy1ow3Csju12 := TSComposite new.
	self
		assert: tmp_dy1ow3Csju12 class
		equals: TSComposite
		description: 'testPaddingOkay:5.1'.
	self
		assert: tmp_dy1ow3Csju12 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:5.2'.
	self
		assert: tmp_dy1ow3Csju12 shapes size
		equals: 0
		description: 'testPaddingOkay:5.3'.
	tmp_dy1ow3Csju12 padding: 5.
	self
		assert: tmp_dy1ow3Csju12 class
		equals: TSComposite
		description: 'testPaddingOkay:6.1'.
	self
		assert: tmp_dy1ow3Csju12 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:6.2'.
	self
		assert: tmp_dy1ow3Csju12 shapes size
		equals: 0
		description: 'testPaddingOkay:6.3'.
	tmp_TKNoqyDHMf8 := TSComposite new.
	self
		assert: tmp_TKNoqyDHMf8 class
		equals: TSComposite
		description: 'testPaddingOkay:7.1'.
	self
		assert: tmp_TKNoqyDHMf8 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:7.2'.
	self
		assert: tmp_TKNoqyDHMf8 shapes size
		equals: 0
		description: 'testPaddingOkay:7.3'.
	tmp_TKNoqyDHMf8 padding: 5.
	self
		assert: tmp_TKNoqyDHMf8 class
		equals: TSComposite
		description: 'testPaddingOkay:8.1'.
	self
		assert: tmp_TKNoqyDHMf8 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:8.2'.
	self
		assert: tmp_TKNoqyDHMf8 shapes size
		equals: 0
		description: 'testPaddingOkay:8.3'.
	tmp_HVVdZgqAOg4 := TSComposite new.
	self
		assert: tmp_HVVdZgqAOg4 class
		equals: TSComposite
		description: 'testPaddingOkay:9.1'.
	self
		assert: tmp_HVVdZgqAOg4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:9.2'.
	self
		assert: tmp_HVVdZgqAOg4 shapes size
		equals: 0
		description: 'testPaddingOkay:9.3'.
	tmp_HVVdZgqAOg4 padding: 5.
	self
		assert: tmp_HVVdZgqAOg4 class
		equals: TSComposite
		description: 'testPaddingOkay:10.1'.
	self
		assert: tmp_HVVdZgqAOg4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:10.2'.
	self
		assert: tmp_HVVdZgqAOg4 shapes size
		equals: 0
		description: 'testPaddingOkay:10.3'.
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
