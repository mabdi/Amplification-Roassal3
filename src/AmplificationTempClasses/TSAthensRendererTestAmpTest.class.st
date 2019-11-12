Class {
	#name : #TSAthensRendererTestAmpTest,
	#superclass : #TSTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSAthensRendererTestAmpTest >> testArcCorner [
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
