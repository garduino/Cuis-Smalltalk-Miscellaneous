'From Cuis 4.1 of 12 December 2012 [latest update: #1576] on 8 February 2013 at 9:06:15 pm'!
'Description Please enter a description for this package '!
!classDefinition: #ArduinoMorph category: #ArdIrda!
RectangleLikeMorph subclass: #ArduinoMorph
	instanceVariableNames: 'arduinoPort'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ArdIrda'!
!classDefinition: 'ArduinoMorph class' category: #ArdIrda!
ArduinoMorph class
	instanceVariableNames: ''!


!ArduinoMorph commentStamp: 'gsa 2/8/2013 21:04' prior: 0!
An ArduinoMorph is simple morph for receiving values from SerialPort. It sets its color (from black to white) by ifrared rays absorbed by irda receiver, that is connected via arduino.

Instance Variables
	arduinoPort:		<Object>

arduinoPort
	- there is stored opened port to arduino
	- default is port 7
	- is initialized and opened in initialization method
	- closed in deleting method
	
Adapted for Cuis by German Arduino - February 8, 2012.
Make it to inherit from RectangleLikeMorph instead of Morp, to permit the accept of #color: accessor.!

!ArduinoMorph methodsFor: 'submorphs-add/remove' stamp: 'gsa 2/8/2013 18:55'!
delete
	super delete.
	arduinoPort close.! !

!ArduinoMorph methodsFor: 'initialization' stamp: 'gsa 2/8/2013 21:02'!
initialize
	super initialize.
	self color: Color white.
	arduinoPort := SerialPort new.
	arduinoPort openPort: 7.! !

!ArduinoMorph methodsFor: 'visual properties' stamp: 'gsa 2/8/2013 18:56'!
readColor
	| s |
	s := arduinoPort readString first asInteger.
	Transcript show: s;
		 crCharacter.
	s isNil
		ifFalse: [s := s - 46 * (1 / 60).
			s <= 1
				ifTrue: [self
						color: (Color
								r: s
								g: s
								b: s)]
				ifFalse: [self
						color: (Color
								r: 1
								g: 1
								b: 1)]]! !

!ArduinoMorph methodsFor: 'stepping and presenter' stamp: 'gsa 2/8/2013 18:56'!
step
	super step.
	self readColor.! !

!ArduinoMorph methodsFor: 'testing' stamp: 'gsa 2/8/2013 18:56'!
stepTime

	^ 50! !
