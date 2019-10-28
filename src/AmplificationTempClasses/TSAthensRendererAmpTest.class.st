Class {
	#name : #TSAthensRendererAmpTest,
	#superclass : #TSTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSAthensRendererAmpTest >> testArcCorner [
	<madeBySmallAmp>
	| renderer |
	renderer := TSAthensRenderer new.
	self
		assert: renderer class
		equals: TSAthensRenderer
		description: 'testArcCorner:1.1'.
	self
		assert: renderer builder class
		equals: UndefinedObject
		description: 'testArcCorner:1.2'.
	self
		assert: renderer builder
		equals: nil
		description: 'testArcCorner:1.3'
]
