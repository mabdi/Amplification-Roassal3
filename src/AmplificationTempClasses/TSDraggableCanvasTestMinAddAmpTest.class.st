Class {
	#name : #TSDraggableCanvasTestMinAddAmpTest,
	#superclass : #TSTest,
	#instVars : [
		'view'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAddAmpTest >> setUp [
	view := RSView new.
	view add: (RSShapeBuilder ellipse width: 40; height: 20) element.
	
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAddAmpTest >> testDefault [
	<madeBySmallAmp>
	self assert: view canvas camera position equals: 0 @ 0
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAddAmpTest >> testDraggingModeLeft [
	<madeBySmallAmp>
	view @ TSDraggableCanvas left.
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	self assert: (view canvas camera position closeTo: 0 @ 0).
	view removeInteractionIfPresent: TSDraggableCanvas.
	view @ TSDraggableCanvas left.
	view canvas announce: (TSMouseDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	self assert: (view canvas camera position closeTo: 0 @ 0).
	view canvas announce: (TSMouseLeftDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	self assert: (view canvas camera position closeTo: -10 @ -5)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAddAmpTest >> testDraggingModeMiddle [
	<madeBySmallAmp>
	view @ TSDraggableCanvas middle.
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	self assert: (view canvas camera position closeTo: 0 @ 0).
	view removeInteractionIfPresent: TSDraggableCanvas.
	view @ TSDraggableCanvas middle.
	view canvas announce: (TSMouseDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	self assert: (view canvas camera position closeTo: 0 @ 0).
	view canvas
		announce: (TSMouseMiddleDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	self assert: (view canvas camera position closeTo: -10 @ -5)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAddAmpTest >> testDraggingModeRight [
	<madeBySmallAmp>
	view @ TSDraggableCanvas right.
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	self assert: (view canvas camera position closeTo: 0 @ 0).
	view removeInteractionIfPresent: TSDraggableCanvas.
	view @ TSDraggableCanvas right.
	view canvas announce: (TSMouseDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	self assert: (view canvas camera position closeTo: 0 @ 0).
	view canvas announce: (TSMouseRightDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	self assert: (view canvas camera position closeTo: -10 @ -5)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAddAmpTest >> testDraggingOnDraggable [
	<madeBySmallAmp>
	view @ TSDraggableCanvas.
	view canvas announce: (TSMouseDragStart new canvas: view canvas).
	view canvas
		announce:
			(TSMouseDragging new
				step: 10 @ 5;
				canvas: view canvas).
	view canvas announce: (TSMouseDragEnd new canvas: view canvas).
	self assert: (view canvas camera position closeTo: -10 @ -5)
]

{ #category : #'as yet unclassified' }
TSDraggableCanvasTestMinAddAmpTest >> testDraggingOnNotDraggable [
	<madeBySmallAmp>
	view canvas announce: (TSMouseDragging step: 10 @ 5).
	self assert: view canvas camera position = (0 @ 0)
]
