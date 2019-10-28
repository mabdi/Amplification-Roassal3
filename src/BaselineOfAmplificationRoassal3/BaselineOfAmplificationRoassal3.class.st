Class {
	#name : #BaselineOfAmplificationRoassal3,
	#superclass : #BaselineOf,
	#category : #BaselineOfAmplificationRoassal3
}

{ #category : #baselines }
BaselineOfAmplificationRoassal3 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'AmplificationRoassal3'
				with: [ spec requires: #('Amplification' 'Roassal3') ].
			spec package: 'AmplificationTempClasses' with: [ spec requires: #('AmplificationRoassal3') ].
			spec
				baseline: 'Amplification'
				with: [ spec repository: 'github://mabdi/small-amp/src' ].
			spec
				baseline: 'Roassal3'
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ] ]
]
