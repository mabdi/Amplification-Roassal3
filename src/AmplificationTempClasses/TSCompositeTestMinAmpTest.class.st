Class {
	#name : #TSCompositeTestMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCompositeTestMinAmpTest >> testPaddingOkay_amp [
	"No error should be raised"

	<madeBySmallAmp>
	| tmp_vGn3HMoc9Z3 tmp_ZLBsfcyftr4 tmp_X5GUtd6lvA7 tmp_536N40p0nH8 tmp_n1ZSZeABfk11 tmp_cyhOEIjup812 |
	tmp_vGn3HMoc9Z3 := TSComposite new.
	self assert: tmp_vGn3HMoc9Z3 shapes class equals: TSGroup.
	tmp_X5GUtd6lvA7 := TSComposite new.
	tmp_n1ZSZeABfk11 := TSComposite new.
	tmp_n1ZSZeABfk11 shapes: TSGroup new.
	tmp_cyhOEIjup812 := TSComposite new.
	tmp_cyhOEIjup812 padding: 5.
	tmp_536N40p0nH8 := TSComposite new.
	tmp_536N40p0nH8 padding: 5.
	tmp_ZLBsfcyftr4 := TSComposite new.
	tmp_ZLBsfcyftr4 padding: 5.
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
