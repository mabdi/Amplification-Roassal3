Class {
	#name : #TSCompositeMinAmpTest,
	#superclass : #TSTest,
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSCompositeMinAmpTest >> testPaddingOkay [
	"No error should be raised"

	<madeBySmallAmp>
	| tmp_UiX2PLhcCW3 tmp_KKvUMrNwAo4 tmp_R8OB6uI7Vf7 tmp_JylbyJzvx58 tmp_f2TLK72vsY11 tmp_svJNcWahpK12 |
	tmp_UiX2PLhcCW3 := TSComposite new.
	self assert: tmp_UiX2PLhcCW3 shapes class equals: TSGroup.
	tmp_R8OB6uI7Vf7 := TSComposite new.
	tmp_f2TLK72vsY11 := TSComposite new.
	tmp_f2TLK72vsY11 shapes: TSGroup new.
	tmp_svJNcWahpK12 := TSComposite new.
	tmp_svJNcWahpK12 padding: 5.
	tmp_JylbyJzvx58 := TSComposite new.
	tmp_JylbyJzvx58 padding: 5.
	tmp_KKvUMrNwAo4 := TSComposite new.
	tmp_KKvUMrNwAo4 padding: 5.
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
