Class {
	#name : #TSCompositeTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCompositeTestMinAmpTest >> testPaddingOkay [
	"No error should be raised"

	<madeBySmallAmp>
	| tmp_9zA4zBBaxz3 tmp_HVVdZgqAOg4 tmp_4cRNY1edpn7 tmp_TKNoqyDHMf8 tmp_gVsh3jmeIF11 tmp_dy1ow3Csju12 |
	tmp_9zA4zBBaxz3 := TSComposite new.
	self assert: tmp_9zA4zBBaxz3 shapes class equals: TSGroup.
	tmp_4cRNY1edpn7 := TSComposite new.
	tmp_gVsh3jmeIF11 := TSComposite new.
	tmp_gVsh3jmeIF11 shapes: TSGroup new.
	tmp_dy1ow3Csju12 := TSComposite new.
	tmp_dy1ow3Csju12 padding: 5.
	tmp_TKNoqyDHMf8 := TSComposite new.
	tmp_TKNoqyDHMf8 padding: 5.
	tmp_HVVdZgqAOg4 := TSComposite new.
	tmp_HVVdZgqAOg4 padding: 5.
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
