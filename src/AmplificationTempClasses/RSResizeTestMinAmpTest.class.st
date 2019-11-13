Class {
	#name : #RSResizeTestMinAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'elements',
		'resize'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
RSResizeTestMinAmpTest >> setUp [
	super setUp.
	elements := (RSShapeBuilder box height: #yourself; width: [ :o | o + 1 ]) elementsOn: (1 to: 3).
	resize := RSResize new.
	resize elements: elements.
]
