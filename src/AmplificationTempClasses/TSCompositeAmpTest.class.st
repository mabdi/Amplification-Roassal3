Class {
	#name : #TSCompositeAmpTest,
	#superclass : #TSTest,
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCompositeAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
TSCompositeAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSCompositeAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
TSCompositeAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
TSCompositeAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
TSCompositeAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
TSCompositeAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
TSCompositeAmpTest >> testPaddingOkay [
	"No error should be raised"

	<madeBySmallAmp>
	| tmp_UiX2PLhcCW3 tmp_KKvUMrNwAo4 tmp_R8OB6uI7Vf7 tmp_JylbyJzvx58 tmp_f2TLK72vsY11 tmp_svJNcWahpK12 |
	tmp_UiX2PLhcCW3 := TSComposite new.
	self
		assert: tmp_UiX2PLhcCW3 class
		equals: TSComposite
		description: 'testPaddingOkay:1.1'.
	self
		assert: tmp_UiX2PLhcCW3 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:1.2'.
	self
		assert: tmp_UiX2PLhcCW3 shapes size
		equals: 0
		description: 'testPaddingOkay:1.3'.
	tmp_R8OB6uI7Vf7 := TSComposite new.
	self
		assert: tmp_R8OB6uI7Vf7 class
		equals: TSComposite
		description: 'testPaddingOkay:2.1'.
	self
		assert: tmp_R8OB6uI7Vf7 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:2.2'.
	self
		assert: tmp_R8OB6uI7Vf7 shapes size
		equals: 0
		description: 'testPaddingOkay:2.3'.
	tmp_f2TLK72vsY11 := TSComposite new.
	self
		assert: tmp_f2TLK72vsY11 class
		equals: TSComposite
		description: 'testPaddingOkay:3.1'.
	self
		assert: tmp_f2TLK72vsY11 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:3.2'.
	self
		assert: tmp_f2TLK72vsY11 shapes size
		equals: 0
		description: 'testPaddingOkay:3.3'.
	tmp_f2TLK72vsY11 shapes: TSGroup new.
	self
		assert: tmp_f2TLK72vsY11 class
		equals: TSComposite
		description: 'testPaddingOkay:4.1'.
	self
		assert: tmp_f2TLK72vsY11 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:4.2'.
	self
		assert: tmp_f2TLK72vsY11 shapes size
		equals: 0
		description: 'testPaddingOkay:4.3'.
	tmp_svJNcWahpK12 := TSComposite new.
	self
		assert: tmp_svJNcWahpK12 class
		equals: TSComposite
		description: 'testPaddingOkay:5.1'.
	self
		assert: tmp_svJNcWahpK12 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:5.2'.
	self
		assert: tmp_svJNcWahpK12 shapes size
		equals: 0
		description: 'testPaddingOkay:5.3'.
	tmp_svJNcWahpK12 padding: 5.
	self
		assert: tmp_svJNcWahpK12 class
		equals: TSComposite
		description: 'testPaddingOkay:6.1'.
	self
		assert: tmp_svJNcWahpK12 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:6.2'.
	self
		assert: tmp_svJNcWahpK12 shapes size
		equals: 0
		description: 'testPaddingOkay:6.3'.
	tmp_JylbyJzvx58 := TSComposite new.
	self
		assert: tmp_JylbyJzvx58 class
		equals: TSComposite
		description: 'testPaddingOkay:7.1'.
	self
		assert: tmp_JylbyJzvx58 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:7.2'.
	self
		assert: tmp_JylbyJzvx58 shapes size
		equals: 0
		description: 'testPaddingOkay:7.3'.
	tmp_JylbyJzvx58 padding: 5.
	self
		assert: tmp_JylbyJzvx58 class
		equals: TSComposite
		description: 'testPaddingOkay:8.1'.
	self
		assert: tmp_JylbyJzvx58 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:8.2'.
	self
		assert: tmp_JylbyJzvx58 shapes size
		equals: 0
		description: 'testPaddingOkay:8.3'.
	tmp_KKvUMrNwAo4 := TSComposite new.
	self
		assert: tmp_KKvUMrNwAo4 class
		equals: TSComposite
		description: 'testPaddingOkay:9.1'.
	self
		assert: tmp_KKvUMrNwAo4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:9.2'.
	self
		assert: tmp_KKvUMrNwAo4 shapes size
		equals: 0
		description: 'testPaddingOkay:9.3'.
	tmp_KKvUMrNwAo4 padding: 5.
	self
		assert: tmp_KKvUMrNwAo4 class
		equals: TSComposite
		description: 'testPaddingOkay:10.1'.
	self
		assert: tmp_KKvUMrNwAo4 shapes class
		equals: TSGroup
		description: 'testPaddingOkay:10.2'.
	self
		assert: tmp_KKvUMrNwAo4 shapes size
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
