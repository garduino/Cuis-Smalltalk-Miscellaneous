'From Cuis 4.2 of 25 July 2013 [latest update: #2021] on 18 June 2014 at 2:35:11.77827 pm'!
'Description Please enter a description for this package'!
!provides: 'GSA-Themes' 1 0!
!requires: 'Theme-Themes' 1 1!
!classDefinition: #SkypeTheme category: #'GSA-Themes'!
Theme subclass: #SkypeTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GSA-Themes'!
!classDefinition: 'SkypeTheme class' category: #'GSA-Themes'!
SkypeTheme class
	instanceVariableNames: ''!


!SkypeTheme commentStamp: '<historical>' prior: 0!
A nice deep blue theme.!

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 09:46'!
buttonLabel
	^ Color hue: 0 chroma: 0 luminance: 0.13! !

!SkypeTheme methodsFor: 'tool colors' stamp: 'gsa 6/18/2014 13:44'!
defaultWindowColor
	"^ Color hue: 0 chroma: 0 luminance: 1."
	^ Color r: 0.686 g: 0.796 b: 0.910! !

!SkypeTheme methodsFor: 'other options' stamp: 'gsa 6/18/2014 09:27'!
embossedTitles
	^true! !

!SkypeTheme methodsFor: 'widget colors' stamp: 'gsa 6/18/2014 14:09'!
listSelectedRowText
	^ Color white! !

!SkypeTheme methodsFor: 'menu colors' stamp: 'gsa 6/18/2014 13:47'!
menu
	"^ Color hue: 212 chroma: 0.6 luminance: 0.3"
		^ Color r: 0.686 g: 0.796 b: 0.910! !

!SkypeTheme methodsFor: 'menu colors' stamp: 'gsa 6/18/2014 13:47'!
menuText
	"^ Color hue: 212 chroma: 0.3 luminance: 0.8"
		^ Color hue: 0 chroma: 0 luminance: 0.13! !

!SkypeTheme methodsFor: 'menu colors' stamp: 'gsa 6/18/2014 09:27'!
menuTitleBar
	^ self menu twiceDarker! !

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 12:17'!
paneBackgroundFrom: aColor
	^ Color hue: 0 chroma: 0 luminance: 1.
	"^ (Color hue: 212 chroma: 0.8 luminance: 0.4) muchDarker"! !

!SkypeTheme methodsFor: 'other options' stamp: 'gsa 6/18/2014 09:27'!
roundWindowCorners
	^true! !

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 12:28'!
shout
	"Color symbols as an association list."
	
	
	^ {
		#defaults 				-> #black.
		#undefined 				-> #red.
		#methodTags 			-> #(green muchDarker).
		#pseudoVariables 		-> #(red muchDarker).
		#messages 				-> #(blue darker).
		#arguments 				-> #(cyan muchDarker).
		#instVar 					-> #(magenta muchDarker).
		#incompleteMessages -> #(gray veryMuchDarker).
		#blockLevelFour 		-> #(green darker).
		#blockLevelFive 		-> #(orange darker).
		#blockLevelSix 			-> #(magenta darker).
		#blockLevelSeven 		-> #blue.
		#tempBar 				-> #gray.
		#tempVars 				-> #(gray muchDarker).
	}! !

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 09:47'!
text
	^ Color hue: 0 chroma: 0 luminance: 0.13! !

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 13:11'!
textHighlight
	"^ Color hue: 0 chroma: 0.56 luminance: 0.45"
	^ Color r: 0 g: 0.584 b: 0.8.! !

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 14:05'!
textHighlightFocused: focused
	"A nice light blue."
	| textHighlight |
	Display depth = 1 ifTrue: [^ Color veryLightGray].
	Display depth = 2 ifTrue: [^ Color gray: 0.87].
	textHighlight _ self textHighlight.
	^focused
		ifTrue: [ textHighlight ]
		ifFalse: [ self unfocusedTextHighlightFrom: textHighlight ]! !

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 09:27'!
unfocusedTextHighlightFrom: aColor
	^aColor adjustSaturation: 0.0 brightness: 0.08! !

!SkypeTheme methodsFor: 'other options' stamp: 'gsa 6/18/2014 09:27'!
useButtonGradient
	^true! !

!SkypeTheme methodsFor: 'other options' stamp: 'gsa 6/18/2014 14:21'!
useUniformColors
	^true! !

!SkypeTheme methodsFor: 'other options' stamp: 'gsa 6/18/2014 09:27'!
useWindowTitleGradient
	^true! !

!SkypeTheme methodsFor: 'colors' stamp: 'gsa 6/18/2014 13:42'!
windowLabel
	"^ Color hue: 0 chroma: 0.56 luminance: 0.45	"
	^ Color r: 0.2 g: 0.2 b: 0.2! !
