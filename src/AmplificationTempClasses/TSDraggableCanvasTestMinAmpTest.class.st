Class {
	#name : #TSDraggableCanvasTestMinAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAmpTest >> setUp [
	view := RSView new.
	view add: (RSShapeBuilder ellipse width: 40; height: 20) element.
	
]
