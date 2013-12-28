'From Cuis 4.2 of 25 July 2013 [latest update: #1910] on 28 December 2013 at 8:43:31.015204 pm'!
'Description Please enter a description for this package'!
!provides: 'Plot-Morph' 1 11!
!classDefinition: #AxesMorph category: #'Plot-Morph'!
PluggableMorph subclass: #AxesMorph
	instanceVariableNames: 'form limitMaxX limitMinX limitMaxY limitMinY title xmax xmid xmin ymax ymid ymin xAxisFormatter yAxisFormatter margin grid drawCotas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot-Morph'!
!classDefinition: 'AxesMorph class' category: #'Plot-Morph'!
AxesMorph class
	instanceVariableNames: ''!

!classDefinition: #PlotMorph category: #'Plot-Morph'!
AxesMorph subclass: #PlotMorph
	instanceVariableNames: 'series cachedMaxPoint cachedMinPoint lens scaledPoints references processMouseDown balloonFormatter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot-Morph'!
!classDefinition: 'PlotMorph class' category: #'Plot-Morph'!
PlotMorph class
	instanceVariableNames: ''!

!classDefinition: #PlotMorphGrid category: #'Plot-Morph'!
Object subclass: #PlotMorphGrid
	instanceVariableNames: 'plot drawAxis drawGrid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot-Morph'!
!classDefinition: 'PlotMorphGrid class' category: #'Plot-Morph'!
PlotMorphGrid class
	instanceVariableNames: ''!

!classDefinition: #PlotSeries category: #'Plot-Morph'!
Object subclass: #PlotSeries
	instanceVariableNames: 'name description color width points drawPoints drawLine drawArea type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot-Morph'!
!classDefinition: 'PlotSeries class' category: #'Plot-Morph'!
PlotSeries class
	instanceVariableNames: ''!

!classDefinition: #PlotPoint category: #'Plot-Morph'!
Point subclass: #PlotPoint
	instanceVariableNames: 'series scaledPoint extra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot-Morph'!
!classDefinition: 'PlotPoint class' category: #'Plot-Morph'!
PlotPoint class
	instanceVariableNames: ''!


!AxesMorph commentStamp: '<historical>' prior: 0!
I am responsible for drawing a pair of axes, a grid, and various labels.  I am not responsible for the display of any data, or for handling user input in any special way.!

!PlotMorph commentStamp: 'gsa 12/22/2013 20:02' prior: 0!
I can draw many series of Points in a XY grid.  See the methods testXXX in the class side.

Samples:

   PlotMorph test.
   PlotMorph test2.
   PlotMorph test4.
   PlotMorph testWithReferences.


Notas Port
- Cambiado por ahi titulo, no use TextStyle o similar, ver porque lo comentarie y deje abajo solo el title "
- cambiado por ahi height por morphHeight.
- cambiado por ahi extent: por morphExtent:

- PlotMorph >> maxPoint 

- Point
scaleFrom: rect1 to: rect2
	"Produce a point stretched according to the stretch from rect1 to rect2"
	^ rect2 topLeft + (((x-rect1 left) * rect2 width // rect1 width)
					@ ((y-rect1 top) * rect2 height // rect1 height))

- PlotMorphGrid drawGridOn:

drawGridOn: aCanvas 

comentarie 2 que no permite storing y hay métodos desconocidos en aCanvas.
!

!PlotMorphGrid commentStamp: '<historical>' prior: 0!
I'm the grid of a PlotMorph!

!PlotSeries commentStamp: '<historical>' prior: 0!
I'm a serie of a PlotMorph!

!PlotPoint commentStamp: '<historical>' prior: 0!
PlotPoint is a point that have more data used to draw in a PlotMorph!

!FormCanvas methodsFor: '*Plot-Morph' stamp: 'gsa 12/23/2013 14:21'!
drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc
	"Generalize for the BalloonCanvas"
	^self drawPolygon: vertices fillStyle: aColor borderWidth: bw borderColor: bc! !

!FormCanvas methodsFor: '*Plot-Morph' stamp: 'gsa 12/23/2013 14:21'!
drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc
	"Fill the given polygon.
	Note: The default implementation does not recognize any enhanced fill styles"
	self drawPolygon: vertices color: aFillStyle borderWidth: bw borderColor: bc! !

!FormCanvas methodsFor: '*Plot-Morph' stamp: 'gsa 12/23/2013 14:03'!
image: aForm at: aPoint rule: combinationRule
	"Note: This protocol is deprecated. Use one of the explicit image drawing messages (#paintImage, #drawImage) instead."
	self image: aForm
		at: aPoint
		sourceRect: aForm boundingBox
		rule: combinationRule.
! !

!FormCanvas methodsFor: '*Plot-Morph' stamp: 'gsa 12/23/2013 14:13'!
image: aForm at: aPoint sourceRect: sourceRect rule: rule 
	"Draw the portion of the given Form defined by sourceRect at the given point using the given BitBlt combination rule."

"ojo origin ver de donde viene y sacarlo como declarado para el método"
	| origin |
	origin := Point x: 0 y: 0.
	port colorMap: (aForm colormapIfNeededFor: form); fillColor: nil.
	port image: aForm at: aPoint + origin sourceRect: sourceRect rule: rule.
	(form depth = 32 and: [aForm depth = 16])
		ifTrue: [port image: nil at: aPoint + origin sourceRect: sourceRect rule: 40 "fixAlpha:with:"].
! !

!FormCanvas methodsFor: '*Plot-Morph' stamp: 'gsa 12/23/2013 14:01'!
line: pt1 to: pt2 color: c

	self line: pt1 to: pt2 width: 1 color: c.
! !

!Morph methodsFor: '*Plot-Morph' stamp: 'gsa 12/22/2013 13:00'!
borderWidth
	^self morphWidth! !

!Morph methodsFor: '*Plot-Morph' stamp: 'gsa 12/22/2013 19:50'!
bounds

" ojo, este es el que da errores al evaluar los test2, test4.
Si devuelvo location da el error de falta de insetBy: en Matrix2x3, si devuelvo location position da el mismo error pero para Point,
ver en Squeak que tipo de objeto devuelve bounds"

	"^ location position"
	^ self morphBoundsInWorld! !

!Morph methodsFor: '*Plot-Morph' stamp: 'gsa 12/22/2013 19:51'!
topLeft

	" original "
	"^ bounds topLeft"
	"^ location position"
	^ 0@0! !

!Point methodsFor: '*Plot-Morph' stamp: 'gsa 12/22/2013 19:55'!
scaleFrom: rect1 to: rect2
	"Produce a point stretched according to the stretch from rect1 to rect2"
	^ rect2 topLeft + (((x-rect1 left) * rect2 width // rect1 width)
					@ ((y-rect1 top) * rect2 height // rect1 height))! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 13:04'!
baseColor
	"Answer the base color to calculate other colors from"
	| baseColor current |

	baseColor := self color.
	current := self.
	[current notNil & (baseColor = Color transparent)]
		whileTrue: [""
			baseColor := current color.
			current := current owner].
	^ baseColor! !

!AxesMorph methodsFor: 'change reporting' stamp: 'jcg 8/30/2003 11:54'!
changed

	super changed.
	form _ nil.! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:50'!
color: aColor 
	
	super color: aColor.
	self updateCotas! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 13:03'!
cotaColor
	| baseColor lighter darker |
	baseColor := self baseColor asNontranslucentColor.
	baseColor = Color white
		ifTrue: [^ Color black].
	""
	lighter := baseColor muchLighter.
	darker := baseColor muchDarker.
	""
	^ (lighter diff: baseColor) > (darker diff: baseColor)
		ifTrue: [lighter]
		ifFalse: [darker]! !

!AxesMorph methodsFor: 'utility' stamp: 'jcg 8/31/2003 12:36'!
dataPointToGridPoint: aPoint
	"Compute the pixel coordinates wrt the grid origin of the given data point."
	| drawBounds |

	drawBounds _ self drawBounds.
	^ (aPoint - self minPoint) * (drawBounds width @ drawBounds height negated).
! !

!AxesMorph methodsFor: 'utility' stamp: 'jcg 8/31/2003 12:38'!
dataPointToWorldPoint: aPoint
	"Compute the pixel coordinates wrt the World origin of the given data point."

	^ (self dataPointToGridPoint: aPoint) + self gridOrigin! !

!AxesMorph methodsFor: 'geometry' stamp: 'gsa 12/22/2013 19:45'!
drawBounds
	"answer the rectangle inside the morph where the plot is drawn"
	^ (0 @ 0 rect: self morphWidth @ self morphHeight - (self borderWidth * 2))
		insetBy: margin! !

!AxesMorph methodsFor: 'drawing' stamp: 'gsa 12/28/2013 20:28'!
drawOn: aCanvas 
	super drawOn: aCanvas.
	aCanvas
		image: self form
		at: self topLeft + self borderWidth
		rule: Form blend
	
	! !

!AxesMorph methodsFor: 'geometry' stamp: 'gsa 12/22/2013 12:31'!
extent: aPoint 
	super
		morphExtent: (aPoint max: self minExtent)! !

!AxesMorph methodsFor: 'naming' stamp: 'jcg 8/30/2003 16:01'!
externalName
	^ super externalName, (title contents isEmpty ifTrue:[''] ifFalse:[' - ', title contents])! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:38'!
form

	form ifNil: [
		Cursor wait showWhile: [
			form _ Form 
						extent: (self bounds insetBy: self borderWidth) extent
						depth: Display depth.
			form fillColor: self color. 
			self updateForm]].
	^ form! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/31/2003 11:07'!
gridOrigin
	"Answer the intersection of the two axes (lower left corner of the grid)"
	| inset |

	inset _ self borderWidth + margin.
	^ self bottomLeft + (inset @ inset negated)! !

!AxesMorph methodsFor: 'utility' stamp: 'jcg 8/31/2003 12:32'!
gridPointToDataPoint: aPoint
	"Compute the coordinates of the data point corresponding to the given grid point (given in pixel coordinates wrt the grid origin)."
	| drawBounds |

	drawBounds _ self drawBounds.
	^ (aPoint x @ aPoint y negated) / (drawBounds extent) + self minPoint
! !

!AxesMorph methodsFor: 'initialization' stamp: 'gsa 12/22/2013 11:56'!
initialize

	super initialize.

	self color: Color gray.
	grid := PlotMorphGrid on: self.

	xAxisFormatter := [:x | x printString].
	yAxisFormatter := [:y | y printString].
	self initializeCotas.
	margin := 15 max: (title morphHeight + 2).
	form := nil.
	"self extent: 1@1."
	"gsa"
	self morphExtent: 1@1.! !

!AxesMorph methodsFor: 'initialization' stamp: 'gsa 12/27/2013 13:05'!
initializeCotas
	drawCotas := true.
	""
	"title := StringMorph contents: '' font: TextStyle defaultFont emphasis: 1."
	
	title := StringMorph contents: ''  font: StrikeFont default emphasis: 1.
	xmax := StringMorph contents: ''.
	xmid := StringMorph contents: ''.
	xmin := StringMorph contents: ''.
	ymax := StringMorph contents: ''.
	ymid := StringMorph contents: ''.
	ymin := StringMorph contents: ''.
	""
	self addMorph: title.
	self addMorph: xmax.
	self addMorph: xmid.
	self addMorph: xmin.
	self addMorph: ymax.
	self addMorph: ymid.
	self addMorph: ymin.
	""
	limitMinX _ 0.
	limitMaxX _ 1.0.
	limitMinY _ 0.
	limitMaxY _ 1.0.! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:49'!
limitMaxX: aNumberOrNil
 	"Set the maximum value along the X axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."

	limitMaxX _ aNumberOrNil.
	self changed.! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:49'!
limitMaxY: aNumberOrNil
 	"Set the maximum value along the X axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."
 
	limitMaxY _ aNumberOrNil.
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:49'!
limitMinX: aNumberOrNil 
 	"Set the maximum value along the X axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."

	limitMinX _ aNumberOrNil. 
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:49'!
limitMinY: aNumberOrNil 
 	"Set the maximum value along the X axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."

	limitMinY _ aNumberOrNil. 
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:50'!
margin: anInteger
	"Set the size of the margin surrounding the grid."
 
	margin _ anInteger.
	self changed! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:32'!
maxPoint
	"Limit values must be non-nil"

	^ limitMaxX @ limitMaxY! !

!AxesMorph methodsFor: 'geometry' stamp: 'jcg 8/30/2003 15:58'!
minExtent
	^ 125 @ 125 + margin ! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:32'!
minPoint
	"Limit values must be non-nil"

	^ limitMinX @ limitMinY! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 13:05'!
referenceColor
	"This name is confusing because it sounds like it has something to do with PlotMorphs 'references' instance variable."

	self deprecatedExplanation: 'use #baseColor instead'.
	^ self baseColor! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:46'!
shouldDrawAxis: aBoolean 

	grid drawAxis: aBoolean.
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:46'!
shouldDrawCotas: aBoolean 
	aBoolean = drawCotas ifTrue: [^self].
	""
	drawCotas := aBoolean.
	title visible: aBoolean.
	xmax visible: aBoolean.
	xmid visible: aBoolean.
	xmin visible: aBoolean.
	ymax visible: aBoolean.
	ymid visible: aBoolean.
	ymin visible: aBoolean.
	""
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:47'!
shouldDrawGrid: aBoolean 

	grid drawGrid: aBoolean.
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:50'!
title:aString

	title contents: aString! !

!AxesMorph methodsFor: 'drawing' stamp: 'gsa 12/27/2013 11:24'!
updateCotas
	
	| cotaColor |
	xmax isNil
		ifTrue: [^ self].
	""
	cotaColor := self cotaColor.
	title color: cotaColor.
	xmax color: cotaColor.
	xmid color: cotaColor.
	xmin color: cotaColor.
	ymax color: cotaColor.
	ymid color: cotaColor.
	ymin color: cotaColor.
	""
	xmax
		contents: (xAxisFormatter value: self maxPoint x).
	xmid
		contents: (xAxisFormatter value: self maxPoint x + self minPoint x / 2).
	xmin
		contents: (xAxisFormatter value: self minPoint x).
	ymax
		contents: (yAxisFormatter value: self maxPoint y).
	ymid
		contents: (yAxisFormatter value: self maxPoint y + self minPoint y / 2).
	ymin
		contents: (yAxisFormatter value: self minPoint y).
	""
	title morphPosition: self topLeft + ((self morphWidth - title morphWidth / 2) rounded @ 0) + (0 @ self borderWidth).
	""
	xmax morphPosition: self topLeft + (self morphWidth - xmax morphWidth @ (self morphHeight - xmax morphHeight)) - (margin @ self borderWidth).
	xmid morphPosition: self topLeft + ((self morphWidth - xmid morphWidth / 2) rounded @ (self morphHeight - xmid morphHeight)) - (0 @ self borderWidth).
	xmin morphPosition: self topLeft + (0 @ (self morphHeight - xmin morphHeight)) + (margin @ 0) - (0 @ self borderWidth).
	""
	ymax morphPosition: self topLeft + ((0 - ymax morphWidth max: 0)
				@ 0) + (self morphWidth @ margin).
	ymid morphPosition: self topLeft + ((15 - ymid morphWidth max: 0)
				@ (self morphHeight - ymid morphHeight / 2) rounded) + (self borderWidth @ 0).
	ymin morphPosition: self topLeft + ((0 - ymin morphWidth max: 0)
				@ (self morphHeight - ymin morphHeight)) - (0 @ margin) + (self borderWidth @ 0)! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:40'!
updateForm

	self updateCotas.
	grid drawOn: form getCanvas.! !

!AxesMorph methodsFor: 'utility' stamp: 'jcg 8/31/2003 12:35'!
worldPointToDataPoint: aPoint
	"Compute the pixel coordinates of the given data point wrt the World origin."

	^ self gridPointToDataPoint: aPoint - self gridOrigin
	! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/29/2003 23:09'!
xAxisFormatter: aFormatterBlock 

	xAxisFormatter _ aFormatterBlock.
	self updateCotas! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/29/2003 23:09'!
yAxisFormatter: aFormatterBlock 

	yAxisFormatter _ aFormatterBlock.
	self updateCotas! !

!PlotMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 16:04'!
balloonFormatter: anObject
	balloonFormatter _ anObject! !

!PlotMorph methodsFor: 'change reporting' stamp: 'jcg 8/30/2003 11:54'!
changed
	
	cachedMaxPoint _ nil.
	cachedMinPoint _ nil.
	super changed! !

!PlotMorph methodsFor: 'accessing' stamp: 'gs 12/2/2001 11:40'!
cleanSeries
	| cleanSeries |
	cleanSeries _ Dictionary new.
	series
		keysAndValuesDo: [:key :serie | cleanSeries
				at: key
				put: (serie points
						collect: [:plotPoint | plotPoint x @ plotPoint y])].
	^ cleanSeries! !

!PlotMorph methodsFor: 'accessing' stamp: 'DGD 6/14/2001 00:53'!
clear
	series do:[:each | each clear].
	self seriesChanged! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:23'!
drawAxis: aBoolean 
	
	" use #shouldDrawAxis: instead this method ".
	self shouldDrawAxis: aBoolean! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:23'!
drawCotas: aBoolean 
	
	" use #shouldDrawCotas: instead this method ".
	self shouldDrawCotas: aBoolean! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:24'!
drawGrid: aBoolean 
	
	" use #shouldDrawGrid: instead this method ".
	self shouldDrawGrid: aBoolean! !

!PlotMorph methodsFor: 'private' stamp: 'DGD 6/28/2001 14:50'!
exploreExtrasAt: nearPoint 
	| extras |
	extras _ (self scaledPoints at: nearPoint)
				collect: [:each | each extra].
	extras _ extras
				select: [:each | each notNil].

extras isEmpty ifFalse:[
	extras explore]! !

!PlotMorph methodsFor: 'private' stamp: 'DGD 6/14/2001 00:04'!
findNearestPointTo: targetPoint 
	| nearestPoint |
	nearestPoint _ nil.
	Cursor wait
				showWhile: [""
					self scaledPoints
						keysDo: [:scaledPoint | ""
							(nearestPoint isNil
									or: [(targetPoint dist: scaledPoint)
											< (targetPoint dist: nearestPoint)])
								ifTrue: [nearestPoint _ scaledPoint]]].
	^ nearestPoint! !

!PlotMorph methodsFor: 'event handling' stamp: 'dgd 10/18/2001 16:53'!
handlesMouseDown: evt 
	^ processMouseDown! !

!PlotMorph methodsFor: 'initialization' stamp: 'gsa 12/22/2013 12:02'!
initialize
	super initialize.

	series := Dictionary new.
	processMouseDown := true.
	lens := nil.
	balloonFormatter := [:aCollection | self textForBalloon: aCollection].
	self morphExtent: 1 @ 1! !

!PlotMorph methodsFor: 'initialization' stamp: 'jcg 8/30/2003 15:52'!
initializeCotas
	"Don't put initial limits on the grid range... default is to compute them from series data."

	super initializeCotas.
	limitMinX _ limitMaxX _ limitMinY _ limitMaxY _ nil.! !

!PlotMorph methodsFor: 'drawing' stamp: 'dgd 11/2/2001 17:31'!
maxPoint
	cachedMaxPoint
		ifNil: [""
			limitMaxX notNil & limitMaxY notNil
				ifTrue: [cachedMaxPoint _ limitMaxY @ limitMaxY]
				ifFalse: [| maxPoints | 
					maxPoints _ series
								collect: [:serie | serie maxPoint]
								thenSelect: [:point | point notNil].
					cachedMaxPoint _ maxPoints isEmpty
								ifTrue: [1 @ 1]
								ifFalse: [maxPoints max].
					limitMaxX notNil
						ifTrue: [cachedMaxPoint _ limitMaxX @ cachedMaxPoint y].
					limitMaxY notNil
						ifTrue: [cachedMaxPoint _ cachedMaxPoint x @ limitMaxY]]].
	^ cachedMaxPoint! !

!PlotMorph methodsFor: 'drawing' stamp: 'dgd 11/2/2001 17:15'!
minPoint
	cachedMinPoint
		ifNil: [""
			limitMinX notNil & limitMinY notNil
				ifTrue: [cachedMinPoint _ limitMinX @ limitMinY]
				ifFalse: [| minPoints | 
					minPoints _ series
								collect: [:serie | serie minPoint]
								thenSelect: [:point | point notNil].
					cachedMinPoint _ minPoints isEmpty
								ifTrue: [0 @ 0]
								ifFalse: [minPoints min].
					limitMinX notNil
						ifTrue: [cachedMinPoint _  limitMinX
										@ cachedMinPoint y].
					limitMinY notNil
						ifTrue: [cachedMinPoint _ cachedMinPoint x
										@ limitMinY]]].
	^ cachedMinPoint! !

!PlotMorph methodsFor: 'event handling' stamp: 'dgd 7/20/2002 16:08'!
mouseDown: anEvent 
	| nearPoint |
	nearPoint _ self findNearestPointTo: anEvent position - self topLeft - self borderWidth.
	nearPoint
		ifNotNil: [anEvent redButtonChanged
				ifTrue: [self showLensAt: nearPoint]
				ifFalse: [self exploreExtrasAt: nearPoint]]! !

!PlotMorph methodsFor: 'event handling' stamp: 'dgd 3/25/2003 09:09'!
mouseUp: anEvent 
	lens isNil ifTrue:[^ self].
""

			lens deleteBalloon.
			lens delete.
			lens := nil! !

!PlotMorph methodsFor: 'accessing' stamp: 'dgd 10/18/2001 16:57'!
processMouseDown: aBoolean 
	processMouseDown _ aBoolean! !

!PlotMorph methodsFor: 'accessing' stamp: 'jcg 8/29/2003 22:53'!
references: aMorphOrNil
	"Specifies a morph (if not nil) that is updated with the names of the plotted series, displayed in the same color as the actual plot."

	references _ aMorphOrNil! !

!PlotMorph methodsFor: 'drawing' stamp: 'gsa 12/23/2013 13:58'!
scalePoints
	| |
	scaledPoints _ nil.
	series
		do: [:serie | serie
				scaleTo: self drawBounds
				height: self morphHeight - (self borderWidth * 2)
				maxPoint: self maxPoint
				minPoint: self minPoint]! !

!PlotMorph methodsFor: 'drawing' stamp: 'DGD 6/13/2001 23:58'!
scaledPoints
	^ scaledPoints
		ifNil: [scaledPoints _ Dictionary new.
			series
				do: [:serie | serie points
						do: [:point | 
							| allPoints | 
							allPoints _ scaledPoints
										at: point scaledPoint
										ifAbsentPut: [OrderedCollection new].
							allPoints add: point]].
			scaledPoints]! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:24'!
serie: aSeriesOrSymbol

	" use #series: instead this method ".
	^ self series: aSeriesOrSymbol! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:25'!
serie: aSymbol addPoint: aPoint 

	" use #series:addPoint: instead this method ".
	^ self series: aSymbol addPoint: aPoint! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:25'!
serie: aSymbol addPoint: aPoint extra: anObject

	" use #series:addPoint:extra: instead this method ".
	^ self series: aSymbol addPoint: aPoint extra: anObject! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:26'!
serie: aSymbol color: aColor

	" use #series:color: instead this method ".
	^ self series: aSymbol color: aColor! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:26'!
serie: aSymbol description: aString

	" use #series:description: instead this method ".
	^ self series: aSymbol description: aString! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:26'!
serie: aSymbol drawArea: aBoolean

	" use #series:drawArea: instead this method ".
	^ self series: aSymbol drawArea: aBoolean! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:27'!
serie: aSymbol drawLine: aBoolean

	" use #series:drawLine: instead this method ".
	^ self series: aSymbol drawLine: aBoolean! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:27'!
serie: aSymbol drawPoints: aBoolean

	" use #series:drawPoints: instead this method ".
	^ self series: aSymbol drawPoints: aBoolean! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:27'!
serie: aSymbol type: lineTypeSymbol 

	" use #series:type: instead this method ".
	^ self series: aSymbol type: lineTypeSymbol! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:28'!
serie: aSymbol width: anInteger 

	" use #series:width: instead this method ".
	^ self series: aSymbol width: anInteger! !

!PlotMorph methodsFor: 'accessing' stamp: 'gs 11/30/2001 02:51'!
series
	^series! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:33'!
series: aSeriesOrSymbol 
	"If aSeriesOrSymbol is a PlotSeries, simply answer it.  Otherwise, it should be a string, and the returned value is the series with that name."

	^ aSeriesOrSymbol isString
		ifTrue: [| symbol | 
			symbol _ aSeriesOrSymbol asSymbol.
			series
				at: symbol
				ifAbsentPut: [PlotSeries name: symbol]]
		ifFalse: [aSeriesOrSymbol]! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:34'!
series: aSymbol addPoint: aPoint 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		addPoint: aPoint.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:34'!
series: aSymbol addPoint: aPoint extra: anObject 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		addPoint: aPoint
		extra: anObject.
	self changed ! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol color: aColor 
	"Find the appropriate series and set a property in it."

	(self series:aSymbol) color:aColor.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol description: aString
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		description: aString.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol drawArea: aBoolean 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		drawArea: aBoolean.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol drawLine: aBoolean 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		drawLine: aBoolean.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol drawPoints: aBoolean 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		drawPoints: aBoolean.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: seriesSymbol type: lineTypeSymbol 
	"Find the appropriate series and set a property in it."

	(self series: seriesSymbol)
		type: lineTypeSymbol.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol width: anInteger 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol) width: anInteger.
	self changed! !

!PlotMorph methodsFor: 'private' stamp: 'dgd 3/25/2003 09:09'!
seriesChanged
	cachedMaxPoint := nil.
	cachedMinPoint := nil.
	"If the morphs has no owner, then the morph is not open yet"
	owner isNil 
ifTrue:[^ self].
""			
	self changed.
	self updateCotas! !

!PlotMorph methodsFor: 'private' stamp: 'DGD 6/30/2001 13:34'!
showLensAt: nearPoint 
	lens _ EllipseMorph new.
	lens
		color: (Color red alpha: 0.5).
	lens extent: 7 @ 7.
	self addMorph: lens.
	lens position: self topLeft + nearPoint - (3 @ 3) + self borderWidth.
	lens
		showBalloon: (balloonFormatter
				value: (self scaledPoints at: nearPoint))! !

!PlotMorph methodsFor: 'private' stamp: 'dgd 10/11/2003 21:16'!
textForBalloon: aCollection 
	| stream point |
	point := aCollection anyOne.
	stream := String new writeStream.
	stream
		nextPutAll: (xAxisFormatter value: point x);
		 nextPutAll: '  ';
		
		nextPutAll: (yAxisFormatter value: point y);
		 nextPut: Character cr.
	aCollection
		do: [:each | 
			stream nextPutAll: each series name.
			each extra
				ifNotNil: [stream nextPutAll: ': ';
						 print: each extra]]
		separatedBy: [stream nextPut: Character cr].
	^ stream contents! !

!PlotMorph methodsFor: 'drawing' stamp: 'gsa 12/28/2013 20:18'!
updateForm
	"Override superclass implementation to do drawing of data."
	| canvas |

	self updateReferences.
	self updateCotas.
	self scalePoints.
	canvas _ form getCanvas.
	
	" canvas rounded. "
		
	
	grid drawOn: canvas.
	(series values
		asSortedCollection: [:x :y | x name <= y name])
		do: [:serie | serie drawOn: canvas].
! !

!PlotMorph methodsFor: 'drawing' stamp: 'jcg 8/29/2003 22:55'!
updateReferences
	"Update a 'legend' displaying the description of each plotted series in the same color as that series."
	| seriesWithDescription sortedSeried |
	references isNil
		ifTrue: [^ self].
	""
	references removeAllMorphs.
""
	seriesWithDescription := series
				reject: [:each | each description isEmpty].
	sortedSeried := seriesWithDescription
				asSortedCollection: [:x :y | x description asLowercase <= y description asLowercase].
	sortedSeried
		do: [:serie | 
			| ref | 
			ref := StringMorph new.
			ref contents: serie description.
			ref color: serie color.
			references addMorphBack: ref.
			serie]! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:28'!
xAxeFormatter: aFormatterBlock 

	" use #xAxisFormatter: instead this method ".
	self xAxisFormatter: aFormatterBlock! !

!PlotMorph methodsFor: 'deprecated' stamp: 'gsa 12/28/2013 19:29'!
yAxeFormatter: aFormatterBlock 

	" use #yxAxisFormatter: instead this method ".
	self yAxisFormatter: aFormatterBlock! !

!PlotMorph class methodsFor: 'instance creation' stamp: 'gsa 12/27/2013 14:05'!
plotPoints: aPointOrderedCollection 
	| plotMorph |
	plotMorph := PlotMorph new.
	plotMorph color: Color black twiceLighter twiceLighter;
		 title: 'Colors';
		 extent: 700 @ 300.
		" useRoundedCorners;
		 borderRaised."
	plotMorph series: #series color: Color white;
		 series: #series drawLine: false.
	aPointOrderedCollection
		do: [:e | ""
			plotMorph series: #series addPoint: e].
	plotMorph openInWorld.
	^ plotMorph! !

!PlotMorph class methodsFor: 'deprecated' stamp: 'jcg 8/29/2003 16:35'!
plotSerie: aPointOrderedCollection 

	self deprecatedExplanation: 'use #plotSeries: instead'.
	^ self plotSeries: aPointOrderedCollection! !

!PlotMorph class methodsFor: 'instance creation' stamp: 'gsa 12/27/2013 14:05'!
plotSeries: aPointOrderedCollection 
	| plotMorph |
	plotMorph := PlotMorph new.
	plotMorph color: Color gray lighter;
		 title: 'Colors';
		 extent: 700 @ 300.
		 "useRoundedCorners;
		 borderRaised."
	plotMorph series: #series color: Color red;
		 series: #series drawLine: false.
	aPointOrderedCollection
		do: [:e | ""
			plotMorph series: #series addPoint: e].
	plotMorph openInWorld.
	^ plotMorph! !

!PlotMorph class methodsFor: 'testing' stamp: 'gsa 12/23/2013 14:17'!
test
	" 
	PlotMorph test  
	"
	| pm |
	pm _ PlotMorph new.
	pm
		color: (Color
				r: 0.0
				g: 0.376
				b: 0.317);
		 extent: 320 @ 320;
		 borderWidth: 2;
		" useRoundedCorners;"
		" setBorderStyle: #raised;"
		 title: 'Some test functions'.
	pm series: #sin color: Color red;
		 series: #cos color: Color blue;
		 series: #test color: Color yellow.
	pm series: #sin drawArea: true;
		 series: #cos drawArea: true;
		 series: #test drawArea: true.
	pm series: #sin description: 'sin';
		 series: #cos description: 'cosin';
		 series: #test description: 'test'.
	pm series: #test type: #stepped.
	pm series: #sin width: 2;
		 series: #sin drawLine: false.
	""
	pm
		yAxisFormatter: [:y | (y roundTo: 0.1) asString].
	""
	0
		to: 360
		by: 10
		do: [:x | 
			pm series: #sin addPoint: x @ x degreesToRadians sin.
			pm series: #cos addPoint: x @ x degreesToRadians cos.
			pm series: #test addPoint: x @ (x degreesToRadians cos + x degreesToRadians sin)].
	""
	pm openInWorld! !

!PlotMorph class methodsFor: 'testing' stamp: 'jcg 8/29/2003 23:11'!
test2
	" 
	PlotMorph test2  
	"
	| pm sigmoid |
	pm _ PlotMorph new.
	pm title: 'Sigmoid';
		 extent: 250 @ 250;
		 color: Color black.
	""
	pm series: #sigmoid1 color: Color red;
		 series: #sigmoid1 drawPoints: false;
		 series: #sigmoid2 color: Color blue;
		 series: #sigmoid2 drawPoints: false;
		 series: #sigmoid3 color: Color yellow;
		 series: #sigmoid3 drawPoints: false;
		 series: #sigmoid4 color: Color green;
		 series: #sigmoid4 drawPoints: false;
		 series: #sigmoid5 color: Color white;
		 series: #sigmoid5 drawPoints: false.
	""
	pm
		yAxisFormatter: [:y | (y roundTo: 0.1) asString].
	sigmoid _ [:x :slope | 1 / (1 + (slope * x) negated exp)].
	-10
		to: 10
		by: 0.25
		do: [:x | 
			pm series: #sigmoid1 addPoint: x
					@ (sigmoid value: x value: 3).
			pm series: #sigmoid2 addPoint: x
					@ (sigmoid value: x value: 2).
			pm series: #sigmoid3 addPoint: x
					@ (sigmoid value: x value: 1).
			pm series: #sigmoid4 addPoint: x
					@ (sigmoid value: x value: 1 / 2).
			pm series: #sigmoid5 addPoint: x
					@ (sigmoid value: x value: 1 / 3)].
	pm openInWorld! !

!PlotMorph class methodsFor: 'testing' stamp: 'gsa 12/22/2013 12:38'!
test4
	" 
	PlotMorph test4
	"
	| pm function |
	pm _ PlotMorph new.
	pm
		color: (Color blue twiceDarker twiceDarker twiceDarker alpha: 0.3);
		 extent: 300 @ 300. ";
		 useRoundedCorners."
	pm
		xAxisFormatter: [:x | x rounded asStringWithCommas].
	pm
		yAxisFormatter: [:y | y rounded asString].
	pm title: 'Some funny function'.
	pm series: #test2 color: Color red;
		 series: #test2 drawPoints: false.
	function _ [:x | x degreesToRadians sin / 5 + ((x / 10) degreesToRadians cos + (x / 10) degreesToRadians sin) * 100].
	0
		to: 3000
		by: 5
		do: [:x | pm series: #test2 addPoint: x
					@ (function value: x)].
	pm openInWorld! !

!PlotMorph class methodsFor: 'testing' stamp: 'gsa 12/27/2013 14:22'!
testWithReferences
	" 
	PlotMorph testWithReferences.
	"
	| pm ref |
"	ref := AlignmentMorph newColumn."
"	ref color: Color magenta twiceDarker twiceDarker;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 wrapCentering: #center;
		 cellPositioning: #leftCenter."
	ref := LayoutMorph newColumn.
	ref color: Color magenta twiceDarker twiceDarker.
		
	
	""
	pm := PlotMorph new.
	pm references: ref.
	pm color: Color magenta twiceDarker twiceDarker;
		 extent: 300 @ 300;
		 borderWidth: 0;
		 title: 'Some test functions'.
	pm series: #sin color: Color red;
		 series: #cos color: Color blue;
		 series: #test color: Color yellow.
	pm series: #sin drawArea: true;
		 series: #cos drawArea: true;
		 series: #test drawArea: true.
	pm series: #sin description: 'sin';
		 series: #cos description: 'cosin';
		 series: #test description: 'test'.
	pm series: #test type: #stepped.
	0
		to: 360
		by: 10
		do: [:x | 
			pm series: #sin addPoint: x @ x degreesToRadians sin.
			pm series: #cos addPoint: x @ x degreesToRadians cos.
			pm series: #test addPoint: x @ (x degreesToRadians cos + x degreesToRadians sin)].
	""
	ref openInWorld.
	pm openInWorld! !

!PlotMorphGrid methodsFor: 'drawing' stamp: 'dgd 7/20/2002 16:31'!
bestStep: aNumber 
	"answer the best step for grid drawing"
	| bestStep |
	bestStep _ aNumber.
	2
		to: 40
		by: 2
		do: [:i | 
			| step | 
			step _ aNumber / i.
			(step between: 25 and: 100)
				ifTrue: [bestStep _ step]].
	^ bestStep! !

!PlotMorphGrid methodsFor: 'accessing' stamp: 'dgd 10/16/2001 14:46'!
drawAxis: aBoolean 
	drawAxis _ aBoolean! !

!PlotMorphGrid methodsFor: 'drawing' stamp: 'jcg 8/30/2003 13:06'!
drawAxisOn: aCanvas 
	| axisColor yTo lighter darker baseColor bounds xTo |
	baseColor _ plot baseColor alpha: 1.
	lighter _ baseColor twiceLighter twiceLighter twiceLighter.
	darker _ baseColor twiceDarker twiceDarker twiceDarker.
	axisColor _ (lighter diff: baseColor)
					> (darker diff: baseColor)
				ifTrue: [lighter]
				ifFalse: [darker].
	""
	bounds _ plot drawBounds.
	"Y axe"
	yTo _ bounds topLeft - (0 @ 7).
	aCanvas
		line: bounds bottomLeft + (0 @ 5)
		to: yTo
		color: axisColor.
	aCanvas
		line: yTo
		to: yTo + (4 @ 4)
		color: axisColor.
	aCanvas
		line: yTo
		to: yTo + (-4 @ 4)
		color: axisColor.
	"X axe"
	xTo _ bounds bottomRight + (7 @ 0).
	aCanvas
		line: bounds bottomLeft - (5 @ 0)
		to: xTo
		color: axisColor.
	aCanvas
		line: xTo
		to: xTo + (-4 @ -4)
		color: axisColor.
	aCanvas
		line: xTo
		to: xTo + (-4 @ 4)
		color: axisColor! !

!PlotMorphGrid methodsFor: 'drawing' stamp: 'gsa 12/22/2013 20:00'!
drawGridOn: aCanvas 
	| gridColor lighter darker baseColor bounds |
	baseColor _ plot baseColor alpha: 1.
	lighter _ baseColor twiceLighter.
	darker _ baseColor twiceDarker.
	gridColor _ (lighter diff: baseColor)
					> (darker diff: baseColor)
				ifTrue: [lighter]
				ifFalse: [darker].
	""
	bounds _ plot drawBounds.
	(bounds left
		to: bounds right
		by: (self bestStep: bounds width))
		do: [:x | 
			"x _ x rounded."
			aCanvas
				line: x @ bounds top
				to: x @ bounds bottom
				color: gridColor].
	(bounds top
		to: bounds bottom
		by: (self bestStep: bounds height))
		do: [:y | 
			"y _ y rounded."
			aCanvas
				line: bounds left @ y
				to: bounds right @ y
				color: gridColor]! !

!PlotMorphGrid methodsFor: 'drawing' stamp: 'dgd 10/16/2001 14:45'!
drawOn: aCanvas 
	drawGrid
		ifTrue: [self drawGridOn: aCanvas].
	drawAxis
		ifTrue: [self drawAxisOn: aCanvas]! !

!PlotMorphGrid methodsFor: 'initialization' stamp: 'dgd 10/16/2001 14:30'!
initialize
	drawAxis _ true.
	drawGrid _ true! !

!PlotMorphGrid methodsFor: 'initialization' stamp: 'dgd 10/16/2001 14:29'!
initializeOn: aPlotMorph
plot _ aPlotMorph! !

!PlotMorphGrid class methodsFor: 'instance creation' stamp: 'gsa 12/22/2013 11:45'!
new
	^ super new initialize! !

!PlotMorphGrid class methodsFor: 'instance creation' stamp: 'gsa 12/22/2013 11:45'!
on: aPlotMorph
	^ self new initializeOn: aPlotMorph! !

!PlotSeries methodsFor: 'points' stamp: 'DGD 6/13/2001 23:30'!
addPoint: aPoint 
	points
		add: (PlotPoint at: aPoint serie: self)! !

!PlotSeries methodsFor: 'points' stamp: 'DGD 6/13/2001 23:31'!
addPoint: aPoint extra:anObject
	points
		add: (PlotPoint at: aPoint serie: self extra:anObject)! !

!PlotSeries methodsFor: 'accessing-color' stamp: 'dgd 7/20/2002 12:48'!
areaColor
	^ color alpha: 0.25! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 6/14/2001 00:53'!
clear
points _ OrderedCollection new! !

!PlotSeries methodsFor: 'accessing' stamp: 'dgd 10/18/2001 12:54'!
color
	^color! !

!PlotSeries methodsFor: 'accessing-color' stamp: 'DGD 6/14/2001 00:27'!
color: anObject
	color _ anObject! !

!PlotSeries methodsFor: 'accessing' stamp: 'dgd 10/18/2001 14:31'!
description
	^ description ifNil:[name]! !

!PlotSeries methodsFor: 'accessing' stamp: 'dgd 10/18/2001 14:31'!
description: aString
	description _ aString! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 7/3/2001 16:32'!
drawArea: aBoolean 
	drawArea _ aBoolean! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 7/5/2001 12:01'!
drawLine: aBoolean 
	drawLine _ aBoolean! !

!PlotSeries methodsFor: 'drawing' stamp: 'dgd 10/15/2001 18:10'!
drawOn: aCanvas 
	points isEmpty
		ifTrue: [^ self].
""
			drawArea
				ifTrue: [""
					type == #straightened
						ifTrue: [self drawStraightenedAreaOn: aCanvas].
					type == #stepped
						ifTrue: [self drawSteppedAreaOn: aCanvas]].
			drawLine
				ifTrue: [""
					type == #straightened
						ifTrue: [self drawStraightenedLineOn: aCanvas].
					type == #stepped
						ifTrue: [self drawSteppedLineOn: aCanvas]].
			drawPoints
				ifTrue: [self drawPointsOn: aCanvas]! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 7/3/2001 16:32'!
drawPoints: aBoolean 
	drawPoints _ aBoolean! !

!PlotSeries methodsFor: 'drawing' stamp: 'gsa 12/27/2013 14:12'!
drawPointsOn: aCanvas 
	| pointColor minus plus |
	pointColor _ self pointColor.
	minus _ width @ width.
	plus _ minus * 2.
	points
		do: [:point | 
			| scaledPoint | 
			scaledPoint _ point scaledPoint.
			aCanvas
				fillRectangle: (scaledPoint - minus rect: scaledPoint + plus)
				color: pointColor]
				"gsa"
				"fillOval: (scaledPoint - minus rect: scaledPoint + plus)
				color: pointColor]"! !

!PlotSeries methodsFor: 'drawing' stamp: 'dgd 10/15/2001 18:11'!
drawSteppedAreaOn: aCanvas 
	| areaColor areaPoints lastScaledPoint | 
			areaColor _ self areaColor.
			areaPoints _ OrderedCollection new.
			lastScaledPoint _ nil.
			points
				do: [:each | 
					| scaledPoint | 
					scaledPoint _ each scaledPoint.
					lastScaledPoint
						ifNotNil: [areaPoints add: scaledPoint x @ lastScaledPoint y].
					areaPoints add: scaledPoint.
					lastScaledPoint _ scaledPoint].
			aCanvas
				drawPolygon: areaPoints
				color: areaColor
				borderWidth: 0
				borderColor: areaColor! !

!PlotSeries methodsFor: 'drawing' stamp: 'dgd 10/15/2001 17:48'!
drawSteppedLineOn: aCanvas 
	| lineColor lastScaledPoint |
	lineColor _ self lineColor.
	lastScaledPoint _ nil.
	points
		do: [:point | 
			| scaledPoint | 
			scaledPoint _ point scaledPoint.
			lastScaledPoint
				ifNotNil: [""aCanvas
						line: lastScaledPoint
						to: scaledPoint x @ lastScaledPoint y
						width: width
						color: lineColor.
					aCanvas
						line: scaledPoint x @ lastScaledPoint y
						to: scaledPoint
						width: width
						color: lineColor].
			lastScaledPoint _ scaledPoint]! !

!PlotSeries methodsFor: 'drawing' stamp: 'dgd 10/15/2001 18:11'!
drawStraightenedAreaOn: aCanvas 
	| areaColor | 
			areaColor _ self areaColor.
			aCanvas
				drawPolygon: (points
						collect: [:each | each scaledPoint])
				color: areaColor
				borderWidth: 0
				borderColor: areaColor! !

!PlotSeries methodsFor: 'drawing' stamp: 'dgd 10/15/2001 17:13'!
drawStraightenedLineOn: aCanvas 
	| lineColor lastScaledPoint |
	lineColor _ self lineColor.
	lastScaledPoint _ nil.
	points
		do: [:point | 
			| scaledPoint | 
			scaledPoint _ point scaledPoint.
			lastScaledPoint
				ifNotNil: [aCanvas
						line: lastScaledPoint
						to: scaledPoint
						width: width
						color: lineColor].
			lastScaledPoint _ scaledPoint]! !

!PlotSeries methodsFor: 'initialization' stamp: 'dgd 7/20/2002 12:25'!
initializeName: aString 
	name _ aString.
	""
	color _ Color black.

	""
	width _ 1.
	drawPoints _ true.
	drawLine _ true.
	drawArea _ false.
	type _ #straightened.
	points _ OrderedCollection new! !

!PlotSeries methodsFor: 'accessing-color' stamp: 'dgd 7/20/2002 12:49'!
lineColor
	^ color
		alpha: 0.85! !

!PlotSeries methodsFor: 'points' stamp: 'dgd 10/15/2001 18:30'!
maxPoint
	^ points isEmpty
		ifTrue: [nil]
		ifFalse: [points max]! !

!PlotSeries methodsFor: 'points' stamp: 'dgd 10/15/2001 18:30'!
minPoint
	^ points isEmpty
		ifTrue: [nil]
		ifFalse: [points min]! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 6/14/2001 00:51'!
name
	^ name! !

!PlotSeries methodsFor: 'accessing-color' stamp: 'dgd 7/20/2002 12:47'!
pointColor
	^ color twiceLighter alpha: 0.85! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 6/14/2001 00:20'!
points
	^points! !

!PlotSeries methodsFor: 'printing' stamp: 'DGD 7/5/2001 12:00'!
printOn: aStream 
	aStream nextPutAll: 'Serie:';
		 nextPutAll: name;
		 nextPutAll: ', color:';
		 nextPutAll: color asString;
		 nextPutAll: ', width:';
		 nextPutAll: width asString;
		 nextPutAll: ', drawPoints:';
		 nextPutAll: drawPoints asString;
		 nextPutAll: ', drawLine:';
		 nextPutAll: drawLine asString;
		 nextPutAll: ', drawArea:';
		 nextPutAll: drawArea asString! !

!PlotSeries methodsFor: 'points' stamp: 'dgd 3/25/2003 09:41'!
scaleTo: anRectangle height: heightInteger maxPoint: maxPoint minPoint: minPoint 
	| drawExtent scaleFrom scaleTo|
	drawExtent := 1 @ 1 max: maxPoint - minPoint.
	drawExtent isZero ifTrue:[^ self].
""

			scaleFrom := 0 @ 0 rect: drawExtent.
			scaleTo := anRectangle.
			points do: 
					[:point | 
					| tempPoint |
					tempPoint := point - minPoint scaleFrom: scaleFrom to: scaleTo.
					point scaledPoint: tempPoint x @ (heightInteger - tempPoint y)]! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 7/5/2001 12:33'!
type: aSymbol 
	"Line Type (#straightened, #stepped)"
	type _ aSymbol! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 6/14/2001 01:19'!
width: anObject
	width _ anObject! !

!PlotSeries class methodsFor: 'instance creation' stamp: 'DGD 6/13/2001 23:45'!
name: aString 
	^ self new
		initializeName: aString
		! !

!PlotPoint methodsFor: 'comparing' stamp: 'dgd 10/11/2003 21:16'!
= anObject 
	^ super = anObject
		and: [series = anObject series
				and: [extra = anObject extra]]! !

!PlotPoint methodsFor: 'accessing' stamp: 'DGD 5/27/2001 23:29'!
extra
	^extra! !

!PlotPoint methodsFor: 'comparing' stamp: 'dgd 10/11/2003 21:15'!
hash
	^ super hash
		bitXor: (series hash bitXor: extra hash)! !

!PlotPoint methodsFor: 'initialization' stamp: 'DGD 5/28/2001 01:41'!
initialize
scaledPoint _ self! !

!PlotPoint methodsFor: 'initialization' stamp: 'dgd 10/11/2003 21:16'!
initializeAt: aPoint series: aPlotSeries 
	self setX: aPoint x setY: aPoint y.
	series := aPlotSeries! !

!PlotPoint methodsFor: 'initialization' stamp: 'dgd 10/11/2003 21:16'!
initializeAt: aPoint series: aPlotSeries extra: anObject 
	self setX: aPoint x setY: aPoint y.
	series := aPlotSeries.
	extra := anObject! !

!PlotPoint methodsFor: 'printing' stamp: 'dgd 10/11/2003 21:16'!
printOn: aStream 
	super printOn: aStream.
	aStream nextPutAll: ' series:(';
		 print: series;
		 nextPutAll: ') scaled:';
		 print: scaledPoint.
	extra isNil
		ifFalse: [aStream nextPutAll: ' extra:';
				 print: extra]! !

!PlotPoint methodsFor: 'accessing' stamp: 'dgd 9/19/2001 22:58'!
scaledPoint
	^ scaledPoint ifNil:[self]! !

!PlotPoint methodsFor: 'accessing' stamp: 'DGD 5/27/2001 18:23'!
scaledPoint: anObject
	scaledPoint _ anObject! !

!PlotPoint methodsFor: 'accessing' stamp: 'dgd 10/11/2003 21:16'!
series
	^ series! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:15'!
at: aPoint serie: aPlotSerie 
	^ self new initializeAt: aPoint series: aPlotSerie! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'DGD 6/13/2001 19:26'!
at: aPoint serie: aPlotSerie extra: anObject 
	^ self new
		initializeAt: aPoint
		serie: aPlotSerie
		extra: anObject! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:14'!
at: aPoint series: aPlotSeries
	^ self new initializeAt: aPoint series: aPlotSeries! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:14'!
at: aPoint series: aPlotSeries extra: anObject 
	^ self new
		initializeAt: aPoint
		series: aPlotSeries
		extra: anObject! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'DGD 5/28/2001 01:41'!
new
^super new initialize! !
