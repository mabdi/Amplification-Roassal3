Class {
	#name : #TSCompositeTestMinAddAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCompositeTestMinAddAmpTest >> testPaddingOkay [
	"No error should be raised"

	<madeBySmallAmp>
	TSComposite new
		shapes:
			(TSGroup new
				add: TSBox new;
				yourself);
		padding: 5.
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

{ #category : #'as yet unclassified' }
TSCompositeTestMinAddAmpTest >> testPaddingOkay_amp [
	"No error should be raised"

	<madeBySmallAmp>
	| tmp_nYuFETSDtH3 tmp_ms8PU69c2Q4 tmp_UiSbjzBQl67 tmp_dZ4TleXttf8 tmp_HtqxKcLAM811 tmp_ckJtycLE3D12 |
	tmp_nYuFETSDtH3 := TSComposite new.
	self assert: tmp_nYuFETSDtH3 shapes class equals: TSGroup.
	tmp_UiSbjzBQl67 := TSComposite new.
	tmp_HtqxKcLAM811 := TSComposite new.
	tmp_HtqxKcLAM811 shapes: TSGroup new.
	tmp_ckJtycLE3D12 := TSComposite new.
	tmp_ckJtycLE3D12 padding: 5.
	tmp_dZ4TleXttf8 := TSComposite new.
	tmp_dZ4TleXttf8 padding: 5.
	tmp_ms8PU69c2Q4 := TSComposite new.
	tmp_ms8PU69c2Q4 padding: 5.
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
