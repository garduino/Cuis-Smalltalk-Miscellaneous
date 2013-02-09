'From Cuis 4.1 of 12 December 2012 [latest update: #1576] on 8 February 2013 at 9:22:57 pm'!
'Description Please enter a description for this package '!
!classDefinition: #Arduino category: #'Arduino-Core'!
Object subclass: #Arduino
	instanceVariableNames: 'protocol digitalPins analogPins keepAliveProcess'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core'!
!classDefinition: 'Arduino class' category: #'Arduino-Core'!
Arduino class
	instanceVariableNames: ''!

!classDefinition: #ArduinoPin category: #'Arduino-Core'!
Object subclass: #ArduinoPin
	instanceVariableNames: 'number mode value arduino'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core'!
!classDefinition: 'ArduinoPin class' category: #'Arduino-Core'!
ArduinoPin class
	instanceVariableNames: ''!

!classDefinition: #ArduinoAnalogPin category: #'Arduino-Core'!
ArduinoPin subclass: #ArduinoAnalogPin
	instanceVariableNames: 'isActive'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core'!
!classDefinition: 'ArduinoAnalogPin class' category: #'Arduino-Core'!
ArduinoAnalogPin class
	instanceVariableNames: ''!

!classDefinition: #ArduinoDigitalPin category: #'Arduino-Core'!
ArduinoPin subclass: #ArduinoDigitalPin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core'!
!classDefinition: 'ArduinoDigitalPin class' category: #'Arduino-Core'!
ArduinoDigitalPin class
	instanceVariableNames: ''!

!classDefinition: #ArduinoProtocol category: #'Arduino-Core'!
Object subclass: #ArduinoProtocol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core'!
!classDefinition: 'ArduinoProtocol class' category: #'Arduino-Core'!
ArduinoProtocol class
	instanceVariableNames: ''!

!classDefinition: #ArduinoDirectMode category: #'Arduino-Core-Firmware'!
ArduinoProtocol subclass: #ArduinoDirectMode
	instanceVariableNames: 'port steppingProcess digitalPins analogPins argsToRead queue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Firmware'!
!classDefinition: 'ArduinoDirectMode class' category: #'Arduino-Core-Firmware'!
ArduinoDirectMode class
	instanceVariableNames: ''!

!classDefinition: #ArduinoType category: #'Arduino-Core'!
Object subclass: #ArduinoType
	instanceVariableNames: 'fCpu friendlyNames mcu uploadRate firmataRate programmer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core'!
!classDefinition: 'ArduinoType class' category: #'Arduino-Core'!
ArduinoType class
	instanceVariableNames: 'types'!

!classDefinition: #AttachableDevice category: #'Arduino-Core-Devices'!
Object subclass: #AttachableDevice
	instanceVariableNames: 'pins isConfigured'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'AttachableDevice class' category: #'Arduino-Core-Devices'!
AttachableDevice class
	instanceVariableNames: ''!

!classDefinition: #Buzzer category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Buzzer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Buzzer class' category: #'Arduino-Core-Devices'!
Buzzer class
	instanceVariableNames: ''!

!classDefinition: #DCMotor category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #DCMotor
	instanceVariableNames: 'speed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'DCMotor class' category: #'Arduino-Core-Devices'!
DCMotor class
	instanceVariableNames: ''!

!classDefinition: #EButton category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #EButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'EButton class' category: #'Arduino-Core-Devices'!
EButton class
	instanceVariableNames: ''!

!classDefinition: #Firmata category: #'Arduino-Core-Firmata'!
ArduinoProtocol subclass: #Firmata
	instanceVariableNames: 'port analogInputData digitalInputData digitalOutputData parsingSysex storedInputData sysexBytesRead waitForData executeMultiByteCommand multiByteChannel majorVersion minorVersion steppingProcess'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Firmata'!
!classDefinition: 'Firmata class' category: #'Arduino-Core-Firmata'!
Firmata class
	instanceVariableNames: ''!

!classDefinition: #FirmataConstants category: #'Arduino-Core-Firmata'!
Object subclass: #FirmataConstants
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Firmata'!
!classDefinition: 'FirmataConstants class' category: #'Arduino-Core-Firmata'!
FirmataConstants class
	instanceVariableNames: ''!

!classDefinition: #FirmwareNotInstalled category: #'Arduino-Core-Firmware'!
Error subclass: #FirmwareNotInstalled
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Firmware'!
!classDefinition: 'FirmwareNotInstalled class' category: #'Arduino-Core-Firmware'!
FirmwareNotInstalled class
	instanceVariableNames: ''!

!classDefinition: #Keypad category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Keypad
	instanceVariableNames: 'buttons steppingProcess'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Keypad class' category: #'Arduino-Core-Devices'!
Keypad class
	instanceVariableNames: ''!

!classDefinition: #LightEmittingDiode category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #LightEmittingDiode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'LightEmittingDiode class' category: #'Arduino-Core-Devices'!
LightEmittingDiode class
	instanceVariableNames: ''!

!classDefinition: #Optocoupler category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Optocoupler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Optocoupler class' category: #'Arduino-Core-Devices'!
Optocoupler class
	instanceVariableNames: ''!

!classDefinition: #Photoresistor category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Photoresistor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Photoresistor class' category: #'Arduino-Core-Devices'!
Photoresistor class
	instanceVariableNames: ''!

!classDefinition: #PinMode category: #'Arduino-Core-PinMode'!
Object subclass: #PinMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-PinMode'!
!classDefinition: 'PinMode class' category: #'Arduino-Core-PinMode'!
PinMode class
	instanceVariableNames: 'uniqueInstance'!

!classDefinition: #InputMode category: #'Arduino-Core-PinMode'!
PinMode subclass: #InputMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-PinMode'!
!classDefinition: 'InputMode class' category: #'Arduino-Core-PinMode'!
InputMode class
	instanceVariableNames: ''!

!classDefinition: #OutputMode category: #'Arduino-Core-PinMode'!
PinMode subclass: #OutputMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-PinMode'!
!classDefinition: 'OutputMode class' category: #'Arduino-Core-PinMode'!
OutputMode class
	instanceVariableNames: ''!

!classDefinition: #Potentiometer category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Potentiometer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Potentiometer class' category: #'Arduino-Core-Devices'!
Potentiometer class
	instanceVariableNames: ''!

!classDefinition: #PwmLightEmittingDiode category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #PwmLightEmittingDiode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'PwmLightEmittingDiode class' category: #'Arduino-Core-Devices'!
PwmLightEmittingDiode class
	instanceVariableNames: ''!

!classDefinition: #PwmMode category: #'Arduino-Core-PinMode'!
OutputMode subclass: #PwmMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-PinMode'!
!classDefinition: 'PwmMode class' category: #'Arduino-Core-PinMode'!
PwmMode class
	instanceVariableNames: ''!

!classDefinition: #Queue category: #'Arduino-Core-Firmware'!
Object subclass: #Queue
	instanceVariableNames: 'list'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Firmware'!
!classDefinition: 'Queue class' category: #'Arduino-Core-Firmware'!
Queue class
	instanceVariableNames: ''!

!classDefinition: #Relay category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Relay
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Relay class' category: #'Arduino-Core-Devices'!
Relay class
	instanceVariableNames: ''!

!classDefinition: #Servo category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Servo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Servo class' category: #'Arduino-Core-Devices'!
Servo class
	instanceVariableNames: ''!

!classDefinition: #ServoMode category: #'Arduino-Core-PinMode'!
PwmMode subclass: #ServoMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-PinMode'!
!classDefinition: 'ServoMode class' category: #'Arduino-Core-PinMode'!
ServoMode class
	instanceVariableNames: ''!

!classDefinition: #StepperMotor category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #StepperMotor
	instanceVariableNames: 'steppingProcess stepTime stepMode isGoingForward currentStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'StepperMotor class' category: #'Arduino-Core-Devices'!
StepperMotor class
	instanceVariableNames: ''!

!classDefinition: #Thermistor category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #Thermistor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'Thermistor class' category: #'Arduino-Core-Devices'!
Thermistor class
	instanceVariableNames: ''!

!classDefinition: #TiltSwitch category: #'Arduino-Core-Devices'!
AttachableDevice subclass: #TiltSwitch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Arduino-Core-Devices'!
!classDefinition: 'TiltSwitch class' category: #'Arduino-Core-Devices'!
TiltSwitch class
	instanceVariableNames: ''!


!Arduino commentStamp: '<historical>' prior: 0!
I represent the Arduino board. I have a collection of pins and a protocol (i.e. Firmata). 
Below you will find a code example using the Firmata protocol:

---------------------------------------------------------------------------------------
| arduino digitalPin analogPin led button ldr servo |

"Connection"
arduino := Arduino on: Firmata new.
arduino connectOnPort: 'COM5'.
arduino isConnected.
arduino disconnect. "Don't forget to disconnect me after finish using me"

"Digital pins - output"
digitalPin := arduino digitalPin: 4.
digitalPin setOutput.
digitalPin value: 1.

"Digital pins - input"
arduino activateDigitalReports.
digitalPin setInput.
digitalPin value.

"Analog pins (analog pins are input only)"
analogPin := arduino analogPin: 0.
analogPin activate.
analogPin value.

"To avoid configuring pins, you can also attach/detach devices:"

"Led (digital output)"
led := LightEmittingDiode new.
led attach: (arduino digitalPin: 13).
led value: 1.
led value: 0.

"Button (digital input)"
button := EButton new.
button attach: (arduino digitalPin: 2).
button value.

"Ldr (analog input)"
ldr := Photoresistor new.
ldr attach: (arduino analogPin: 5).
ldr value.

"Servo (currently servos can only be attached to pins 9-10)"
servo := Servo new.
servo attach: (arduino digitalPin: 9).
servo angle: 0.
servo angle: 90.
servo angle: 180.

"To see the current list of available devices evaluate:"
AttachableDevice allSubclasses!

!ArduinoAnalogPin commentStamp: 'Richo 9/15/2009 11:52' prior: 0!
I represent an Arduino analog pin. Analog pins are always input. Before I can access my value, I must be activated by sending #activate.!

!ArduinoDigitalPin commentStamp: 'Richo 9/15/2009 11:55' prior: 0!
I represent an Arduino digital pin. Digital pins can be input or output. To change my mode you must send #mode: with a PinMode as a parameter or you can use #setInput/#setOutput.!

!ArduinoPin commentStamp: 'Richo 9/15/2009 11:49' prior: 0!
Abstract class. I represent an ArduinoPin!

!ArduinoProtocol commentStamp: 'Richo 3/9/2010 10:34' prior: 0!
Abstract class. I define the protocol to communicate with an Arduino board.!

!AttachableDevice commentStamp: '<historical>' prior: 0!
Abstract class. I represent a device that can be attached to a collection of Arduino's pins. My protocol is very simple:

#attach: aPin
Attaches the device to a single pin and sets the pins configuration accordingly.

#isAttached
Checks if the device is attached to a pin.

#detach
Simply detachs the device from the pins and deletes the configuration. It raises an error if the device is not attached.

Subclasses should override #configure and #deleteConfiguration with the specific steps to configure the corresponding device.!

!EButton commentStamp: 'Richo 9/15/2009 12:07' prior: 0!
I represent a button (digital input device).!

!Firmata commentStamp: 'Richo 3/9/2010 11:03' prior: 0!
I am an implementation of the Firmata protocol for talking to an Arduino board. 
For more information check: http://www.firmata.org/

This implementation is mostly based on FirmataVB by Andrew Craigie.
http://www.acraigie.com/programming/firmatavb/default.html!

!FirmataConstants commentStamp: 'Richo 9/15/2009 12:00' prior: 0!
See class side. I collect a bunch of constants for the Firmata protocol.!

!InputMode commentStamp: 'Richo 9/15/2009 12:13' prior: 0!
I represent the input mode of an Arduino digital pin.!

!LightEmittingDiode commentStamp: 'Richo 9/15/2009 12:08' prior: 0!
I represent a led (digital output device).!

!OutputMode commentStamp: 'Richo 9/15/2009 12:13' prior: 0!
I represent the output mode of an Arduino digital pin.!

!Photoresistor commentStamp: 'Richo 9/15/2009 12:08' prior: 0!
I represent an LDR (analog input device)!

!PinMode commentStamp: 'Richo 9/15/2009 12:15' prior: 0!
Abstract class. I represent the mode of an Arduino digital pin. Tipically, I would just need input/output mode, other subclasses were made for practical purposes (i.e. ButtonMode, LedMode).!

!Potentiometer commentStamp: 'Richo 9/15/2009 12:09' prior: 0!
I represent a Potentiometer (analog input device).!

!PwmMode commentStamp: '<historical>' prior: 0!
I represent the pwm mode of an Arduino digital pin.!

!Servo commentStamp: 'Richo 9/15/2009 12:11' prior: 0!
I represent a servo motor.!

!ServoMode commentStamp: 'Richo 9/15/2009 12:13' prior: 0!
I represent the servo mode of an Arduino digital pin.!

!Arduino methodsFor: 'connection' stamp: 'Richo 9/11/2009 17:21'!
activateDigitalReports
protocol activateDigitalPort: 0; activateDigitalPort: 1.
! !

!Arduino methodsFor: 'connection' stamp: 'Richo 9/11/2009 17:24'!
activateReports
self activateDigitalReports.
analogPins do: [:each | each activate]! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 8/31/2009 16:07'!
analogPin: aSmallInteger 
	^ analogPins at: aSmallInteger ifAbsent: [self inaccessiblePinError ]! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 8/15/2011 10:11'!
analogPins
	^ analogPins values! !

!Arduino methodsFor: 'connection' stamp: 'Richo 11/23/2012 12:52'!
connectOnPort: portName
	self connectOnPort: portName boardType: self typeClass default! !

!Arduino methodsFor: 'connection' stamp: 'Richo 12/11/2012 13:29'!
connectOnPort: portName boardType: anArduinoType
	"I reconfigure each pin every time I connect to a board"
	protocol connectOnPort: portName boardType: anArduinoType.
	500 milliSeconds asDelay wait.
	self reconfigurePins;
		startKeepAliveProcess! !

!Arduino methodsFor: 'connection' stamp: 'Richo 9/11/2009 17:21'!
deactivateDigitalReports
protocol deactivateDigitalPort: 0;deactivateDigitalPort: 1.
! !

!Arduino methodsFor: 'connection' stamp: 'Richo 1/12/2010 12:59'!
deactivateReports
self deactivateDigitalReports.
analogPins do: [:each | each deactivate]! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 8/31/2009 16:06'!
digitalPin: aSmallInteger 
	^ digitalPins at: aSmallInteger ifAbsent: [self inaccessiblePinError]! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 8/15/2011 10:11'!
digitalPins
	^ digitalPins values! !

!Arduino methodsFor: 'connection' stamp: 'Richo 12/11/2012 13:30'!
disconnect
	protocol disconnect.
	self stopKeepAliveProcess! !

!Arduino methodsFor: 'errors' stamp: 'Richo 4/6/2011 10:37'!
inaccessiblePinError
self error: 'Inaccessible pin' translated! !

!Arduino methodsFor: 'initialize-release' stamp: 'Richo 10/24/2011 14:06'!
initialize
	digitalPins := Dictionary newFrom: ((2 to: 13)
				collect: [:i | i-> (ArduinoDigitalPin on: self number: i)]).
	analogPins :=Dictionary newFrom: ( (0 to: 5)
				collect: [:i | i -> (ArduinoAnalogPin on: self number: i)])! !

!Arduino methodsFor: 'initialize-release' stamp: 'Richo 12/23/2011 16:08'!
initializeWith: aProtocol
	protocol := aProtocol.
	self initialize.! !

!Arduino methodsFor: 'connection' stamp: 'Richo 8/24/2009 16:14'!
isConnected
^protocol isConnected! !

!Arduino methodsFor: 'keeping alive' stamp: 'Richo 12/11/2012 13:27'!
keepAliveTime
	^ protocol keepAliveTime! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 8/15/2011 10:10'!
pins
	^ self digitalPins, self analogPins! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 10/24/2011 14:00'!
protocol
	^ protocol! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 12/23/2011 15:35'!
protocol: aProtocol
	self disconnect.
	protocol := aProtocol ! !

!Arduino methodsFor: 'connection' stamp: 'Richo 9/8/2009 10:33'!
reconfigurePins
	digitalPins values , analogPins values
		do: [:each | each refresh]! !

!Arduino methodsFor: 'keeping alive' stamp: 'Richo 12/11/2012 13:28'!
sendKeepAlive
	self isConnected ifFalse: [self stopKeepAliveProcess].
	protocol sendKeepAlive! !

!Arduino methodsFor: 'keeping alive' stamp: 'Richo 12/11/2012 13:26'!
startKeepAliveProcess
	keepAliveProcess notNil
		ifTrue: [^ self].
	keepAliveProcess := [[self sendKeepAlive.
			(Delay forMilliseconds: self keepAliveTime) wait] repeat]
				forkNamed: 'KeepAlive: ', self asString! !

!Arduino methodsFor: 'keeping alive' stamp: 'Richo 12/11/2012 13:43'!
stopKeepAliveProcess
	"In order to correctly terminate the process and set its variable
	to nil, we need to store it in a temp variable, so that we set the 
	variable to nil before terminating the process. Since we're in the
	same process if we terminate it before this won't get executed"
	| p |
	keepAliveProcess isNil
		ifTrue: [^ self].
	p := keepAliveProcess.
	keepAliveProcess := nil.
	p terminate! !

!Arduino methodsFor: 'accessing' stamp: 'Richo 11/23/2012 12:54'!
typeClass
	^ ArduinoType! !

!Arduino class methodsFor: 'examples' stamp: 'Richo 2/22/2012 13:01'!
buttonExample
	"
	This example requires a button attached to the digital pin 9.
	It creates a TextMorph that shows if the button is pressed..
	
	self buttonExample.
	"
	
	| arduino port button textMorph process buttonMorph |
	"Just to be sure, disconnect all other instances"
	Arduino instancesConnected do: [:each | each disconnect].
	
	"Create and connect your arduino. Install the firware automatically if not installed already"
	arduino := Arduino new.
	port := (UIManager default request: 'Arduino port:' initialAnswer: 'COM8').
	[arduino connectOnPort: port]
		on: FirmwareNotInstalled
		do: [:ign |
			arduino disconnect.
			ArduinoDirectMode
				uploadOnPort: port
				arduinoType: (ArduinoType
					withFriendlyName: (UIManager default
						chooseFrom: ArduinoType allFriendlyNames
						values: ArduinoType allFriendlyNames
						title: 'Arduino Type:')).
			arduino connectOnPort: port].

	"Create a button and attach it to pin 9"
	button := EButton new.
	button attach: (arduino digitalPin: 9).
	
	"Create an arrow to show potentiometer value"
	textMorph := TextMorph new contents: 'Not pressed'.
	
	"Create and start a process to update the arrow's rotation"
	process := [[textMorph contents: (button value = 1 ifTrue: ['Pressed'] ifFalse: ['Not pressed']).
				textMorph center: World center.
				10 milliSeconds asDelay wait] repeat]
					forkNamed: 'buttonExample process'.
	
	"Create clean up button"
	buttonMorph := SimpleButtonMorph newWithLabel: 'Clean up'.
	buttonMorph
		actionSelector: #value;
		target: [process terminate.
			arduino disconnect.
			textMorph delete.
			buttonMorph delete].

	"Open morphs in World"
	textMorph openInWorld.
	buttonMorph openInWorld.
	textMorph center: World center.
	buttonMorph center: World center.
	buttonMorph top: textMorph bottom + 10.
	! !

!Arduino class methodsFor: 'instance creation' stamp: 'Richo 12/23/2011 14:57'!
defaultProtocol
	^ ArduinoDirectMode ! !

!Arduino class methodsFor: 'just for testing' stamp: 'Richo 1/31/2011 09:24'!
instancesConnected
"Just for testing. Do not use!!

Update 31/1/2011: I read this comment after a while and I thought the 'Do not use!!' warning was funny and a little exagerated :). This method was certainly used for testing while developing one of the earlier versions but it does no harm if you execute it."
^self allInstances select: [:each| each isConnected]! !

!Arduino class methodsFor: 'examples' stamp: 'Richo 2/22/2012 13:01'!
ledExample
	"
	This example opens an EllipseMorph in the center of the screen that
	lets you turn on/off the a led connected to digital pin 13.
	
	self ledExample.
	"

	| arduino port led ledMorph button |
	"Just to be sure, disconnect all other instances"
	Arduino instancesConnected do: [:each | each disconnect].
	
	"Create and connect your arduino. Install the firware automatically if not installed already"
	arduino := Arduino new.
	port := (UIManager default request: 'Arduino port:' initialAnswer: 'COM8').
	[arduino connectOnPort: port]
		on: FirmwareNotInstalled
		do: [:ign |
			arduino disconnect.
			ArduinoDirectMode
				uploadOnPort: port
				arduinoType: (ArduinoType
					withFriendlyName: (UIManager default
						chooseFrom: ArduinoType allFriendlyNames
						values: ArduinoType allFriendlyNames
						title: 'Arduino Type:')).
			arduino connectOnPort: port].

	"Create a led and attach it to pin 13"
	led := LightEmittingDiode new.
	led attach: (arduino digitalPin: 13).

	"Create an EllipseMorph to turn on/off the led"
	ledMorph := EllipseMorph new.
	ledMorph
		on: #mouseUp
		send: #value
		to: [	led value: (led value bitXor: 1).
			ledMorph color: (Color h: led value * 127 s: 1 v: 1)].

	"Create clean up button"
	button := SimpleButtonMorph newWithLabel: 'Clean up'.
	button
		actionSelector: #value;
		target: [arduino disconnect.
			ledMorph delete.
			button delete].

	"Open morphs in World"
	ledMorph openInWorld.
	button openInWorld.
	ledMorph center: World center.
	button center: World center.
	button top: ledMorph bottom + 10.! !

!Arduino class methodsFor: 'instance creation' stamp: 'Richo 3/30/2012 16:29'!
new
	^ self on: self defaultProtocol new! !

!Arduino class methodsFor: 'instance creation' stamp: 'Richo 3/30/2012 16:29'!
on: aProtocol
	^ self basicNew initializeWith: aProtocol! !

!Arduino class methodsFor: 'examples' stamp: 'Richo 2/22/2012 13:01'!
potentiometerExample
	"
	This example requires a potentiometer attached to the analog pin 1.
	It creates an arrow that shows the value of the potentiometer by 
	constantly updating its heading.
	
	self potentiometerExample.
	"
	
	| arduino port potentiometer arrowMorph process button |
	"Just to be sure, disconnect all other instances"
	Arduino instancesConnected do: [:each | each disconnect].
	
	"Create and connect your arduino. Install the firware automatically if not installed already"
	arduino := Arduino new.
	port := (UIManager default request: 'Arduino port:' initialAnswer: 'COM8').
	[arduino connectOnPort: port]
		on: FirmwareNotInstalled
		do: [:ign |
			arduino disconnect.
			ArduinoDirectMode
				uploadOnPort: port
				arduinoType: (ArduinoType
					withFriendlyName: (UIManager default
						chooseFrom: ArduinoType allFriendlyNames
						values: ArduinoType allFriendlyNames
						title: 'Arduino Type:')).
			arduino connectOnPort: port].

	"Create a potentiometer and attach it to pin 1"
	potentiometer := Potentiometer new.
	potentiometer attach: (arduino analogPin: 1).
	
	"Create an arrow to show potentiometer value"
	arrowMorph := PolygonMorph arrowPrototype.
	arrowMorph setVertices: {
		arrowMorph vertices first.
		arrowMorph vertices first + (0@ -100)}.
	
	"Create and start a process to update the arrow's rotation"
	process := [[arrowMorph rotationDegrees: (0.264 * potentiometer value - 135).
				10 milliSeconds asDelay wait] repeat]
					forkNamed: 'potentiometerExample process'.
	
	"Create clean up button"
	button := SimpleButtonMorph newWithLabel: 'Clean up'.
	button
		actionSelector: #value;
		target: [process terminate.
			arduino disconnect.
			arrowMorph delete.
			button delete].

	"Open morphs in World"
	arrowMorph openInWorld.
	button openInWorld.
	arrowMorph center: World center.
	button center: World center.
	button top: arrowMorph bottom + 10.
	! !

!ArduinoAnalogPin methodsFor: 'activation' stamp: 'Richo 8/31/2011 15:29'!
activate
	isActive := true.
	self refresh! !

!ArduinoAnalogPin methodsFor: 'configuring devices' stamp: 'Richo 9/6/2011 11:50'!
configure: aDevice
	aDevice configureAnalog: self! !

!ArduinoAnalogPin methodsFor: 'activation' stamp: 'Richo 8/31/2011 15:29'!
deactivate
	isActive := false.
	self refresh! !

!ArduinoAnalogPin methodsFor: 'configuring devices' stamp: 'Richo 9/6/2011 11:56'!
deleteConfiguration: aDevice
	aDevice deleteConfigurationAnalog: self! !

!ArduinoAnalogPin methodsFor: 'initializing' stamp: 'Richo 9/7/2011 10:54'!
initialize
	super initialize.
	mode := InputMode new.
	isActive := false.! !

!ArduinoAnalogPin methodsFor: 'activation' stamp: 'Richo 8/31/2009 15:24'!
isActive
^isActive! !

!ArduinoAnalogPin methodsFor: 'testing' stamp: 'Richo 9/6/2011 12:14'!
isAnalog
	^ true! !

!ArduinoAnalogPin methodsFor: 'initializing' stamp: 'Richo 10/24/2011 14:01'!
refresh
	self refreshMode; refreshValue.
	isActive
		ifTrue: [self protocol activateAnalogPin: number]
		ifFalse: [self protocol deactivateAnalogPin: number] ! !

!ArduinoAnalogPin methodsFor: 'mode' stamp: 'Richo 10/25/2011 16:10'!
refreshMode
	mode refreshModeOn: 14 + number using: self protocol.! !

!ArduinoAnalogPin methodsFor: 'value' stamp: 'Richo 10/25/2011 16:10'!
refreshValue
	mode isOutput
		ifTrue: [mode
				refreshValue: value
				on: 14 + number
				using: self protocol]! !

!ArduinoAnalogPin methodsFor: 'value' stamp: 'Richo 10/24/2011 14:01'!
value
	^ mode isOutput
		ifTrue: [value]
		ifFalse: [value := self protocol analogRead: number]
! !

!ArduinoDigitalPin methodsFor: 'configuring devices' stamp: 'Richo 9/6/2011 11:50'!
configure: aDevice
	aDevice configureDigital: self! !

!ArduinoDigitalPin methodsFor: 'configuring devices' stamp: 'Richo 9/6/2011 11:55'!
deleteConfiguration: aDevice
	aDevice deleteConfigurationDigital: self! !

!ArduinoDigitalPin methodsFor: 'initialize-release' stamp: 'Richo 9/7/2011 10:54'!
initialize
	super initialize.
	mode := OutputMode new.
! !

!ArduinoDigitalPin methodsFor: 'testing' stamp: 'Richo 9/6/2011 12:13'!
isDigital
	^ true! !

!ArduinoDigitalPin methodsFor: 'initialize-release' stamp: 'Richo 9/7/2011 10:54'!
refresh
	self refreshMode; refreshValue! !

!ArduinoDigitalPin methodsFor: 'mode' stamp: 'Richo 10/24/2011 14:01'!
refreshMode
	mode refreshModeOn: number using: self protocol.! !

!ArduinoDigitalPin methodsFor: 'value' stamp: 'Richo 10/24/2011 14:01'!
refreshValue
	mode isOutput
		ifTrue: [mode
				refreshValue: value
				on: number
				using: self protocol]! !

!ArduinoDigitalPin methodsFor: 'value' stamp: 'Richo 10/24/2011 14:01'!
value 
	^ mode isOutput
		ifTrue: [value]
		ifFalse: [value := self protocol digitalRead: number]! !

!ArduinoDirectMode methodsFor: 'analog pins' stamp: 'Richo 8/30/2011 16:55'!
activateAnalogPin: pinNumber
	self send: {self asCommand: self class rqActivateAnalogPin.
				self asArgument: pinNumber.
				self asArgument: 1} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'digital pins' stamp: 'Richo 8/30/2011 12:03'!
activateDigitalPort: portIndex
	self send: {self asCommand: self class rqActivateDigitalPort.
				self asArgument: portIndex.
				self asArgument: 1} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'analog pins' stamp: 'Richo 8/29/2011 16:45'!
analogRead: pinNumber
	^ analogPins at: pinNumber! !

!ArduinoDirectMode methodsFor: 'digital pins' stamp: 'Richo 12/29/2011 17:41'!
analogWrite: pinIndex value: pinValue
	self send: {self asCommand: self class rqAnalogWrite.
				self asArgument: pinIndex.
				self asArgument: (pinValue bitAnd: 2r01111111).
				self asArgument: (pinValue bitAnd: 2r10000000) >> 7} asByteArray! !

!ArduinoDirectMode methodsFor: 'converting' stamp: 'Richo 8/29/2011 12:47'!
asArgument: byte
	^ byte bitOr: 2r10000000! !

!ArduinoDirectMode methodsFor: 'converting' stamp: 'Richo 8/29/2011 11:17'!
asCommand: byte
	^ byte! !

!ArduinoDirectMode methodsFor: 'servos' stamp: 'Richo 12/29/2011 17:28'!
attachServoToPin: pinNumber
	self send: {self asCommand: self class rqAttachServo.
				self asArgument: pinNumber} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'connection' stamp: 'Richo 12/11/2012 13:26'!
connectOnPort: aString
	"If the port cant't be open it stores nil, this way we can know if it is
	connected by asking if port is nil.
	In windows we can't open a port using the port name, so I convert the
	string to an integer"
	self isConnected ifTrue: [^ self].
	port := SerialPort new baudRate: 57600.
	port := port
				openPort: (('COM*' match: aString)
						ifTrue: [aString asInteger]
						ifFalse: [aString]).
	self isConnected
		ifTrue: [self controlFirmwareInstalled;
					startSteppingProcess]! !

!ArduinoDirectMode methodsFor: 'connection' stamp: 'Richo 8/24/2011 11:12'!
connectOnPort: aString boardType: anArduinoType
	"Ignore board type"
	self connectOnPort: aString! !

!ArduinoDirectMode methodsFor: 'connection' stamp: 'Richo 12/29/2011 13:48'!
controlFirmwareInstalled
	| time timeout |
	time := Time millisecondClockValue.
	timeout := 5000.
	[100 milliSeconds asDelay wait.
	('*HOLA, SOY ARDUINO*' match: port readString)
		ifTrue: [
			port nextPutAll: (ByteArray with: 255).
			[port readString = ''] whileFalse.
			^ self]]
		doWhileTrue: [Time millisecondClockValue - time < timeout].
	^ FirmwareNotInstalled signal! !

!ArduinoDirectMode methodsFor: 'analog pins' stamp: 'Richo 8/30/2011 16:55'!
deactivateAnalogPin: pinNumber
	self send: {self asCommand: self class rqActivateAnalogPin.
				self asArgument: pinNumber.
				self asArgument: 0} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'digital pins' stamp: 'Richo 8/30/2011 12:02'!
deactivateDigitalPort: portIndex
	self send: {self asCommand: self class rqActivateDigitalPort.
				self asArgument: portIndex.
				self asArgument: 0} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'servos' stamp: 'Richo 12/29/2011 17:28'!
detachServoFromPin: pinNumber
	self send: {self asCommand: self class rqDetachServo.
				self asArgument: pinNumber} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'digital pins' stamp: 'Richo 8/30/2011 17:23'!
digitalPin: pinIndex mode: pinMode
	"Digital ports should always be active"
	pinIndex <= 7
		ifTrue: [self activateDigitalPort: 0]
		ifFalse: [self activateDigitalPort: 1].
	self send: {self asCommand: self class rqDigitalPinMode.
				self asArgument: pinIndex.
				self asArgument: pinMode} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'digital pins' stamp: 'Richo 8/30/2011 17:24'!
digitalRead: pinNumber
	^ digitalPins at: pinNumber! !

!ArduinoDirectMode methodsFor: 'digital pins' stamp: 'Richo 8/30/2011 12:03'!
digitalWrite: pinIndex value: pinValue
	self send: {self asCommand: self class rqDigitalWrite.
				self asArgument: pinIndex.
				self asArgument: pinValue} asByteArray! !

!ArduinoDirectMode methodsFor: 'connection' stamp: 'Richo 1/16/2013 17:58'!
disconnect
	self isConnected ifFalse: [^ self].
	[self sendDisconnect] on: Error do: ["Nothing"].
	self privateDisconnect! !

!ArduinoDirectMode methodsFor: 'receiving' stamp: 'Richo 8/30/2011 12:42'!
executeAnalogPin
	| pin value1 value2 |
	pin := queue pop.
	value1 := queue pop.
	value2 := queue pop.
	analogPins at: pin put: (value1 bitOr: (value2 << 7))! !

!ArduinoDirectMode methodsFor: 'receiving' stamp: 'Richo 8/30/2011 17:19'!
executeCommand
	| command |
	command := queue pop.
	command caseOf: {
		[self class rsDigitalPort] -> [self executeDigitalPort].
		[self class rsAnalogPin] -> [self executeAnalogPin].
		[self class rsVersion] -> [self executeVersion]
	} otherwise: [Transcript show: ('Invalid command: {1}' format:  {command}); cr].
	argsToRead := -1.! !

!ArduinoDirectMode methodsFor: 'receiving' stamp: 'Richo 8/30/2011 17:24'!
executeDigitalPort
	| digitalPort value |
	digitalPort := queue pop.
	value := queue pop.
	digitalPins at: 2 + (6 * digitalPort) put: (value bitAnd: 2r1).
	digitalPins at: 3 + (6 * digitalPort) put: ((value >> 1) bitAnd: 2r1).
	digitalPins at: 4 + (6 * digitalPort) put: ((value >> 2) bitAnd: 2r1).
	digitalPins at: 5 + (6 * digitalPort) put: ((value >> 3) bitAnd: 2r1).
	digitalPins at: 6 + (6 * digitalPort) put: ((value >> 4) bitAnd: 2r1).
	digitalPins at: 7 + (6 * digitalPort) put: ((value >> 5) bitAnd: 2r1)! !

!ArduinoDirectMode methodsFor: 'converting' stamp: 'Richo 8/29/2011 12:48'!
getArgument: byte
	^ byte bitAnd: 2r01111111! !

!ArduinoDirectMode methodsFor: 'converting' stamp: 'Richo 8/29/2011 12:49'!
getCommand: byte
	^ byte! !

!ArduinoDirectMode methodsFor: 'initialize-release' stamp: 'Richo 12/11/2012 13:16'!
initialize
	super initialize.
	digitalPins := self newDictionaryFrom: 2 to: 13 withAll: 0.
	analogPins := self newDictionaryFrom: 0 to: 5 withAll: 0.
	queue := Queue new.
	argsToRead := -1! !

!ArduinoDirectMode methodsFor: 'converting' stamp: 'Richo 8/29/2011 12:48'!
isArgument: byte
	^ byte >> 7 = 1! !

!ArduinoDirectMode methodsFor: 'converting' stamp: 'Richo 8/29/2011 12:48'!
isCommand: byte
	^ byte >> 7 = 0! !

!ArduinoDirectMode methodsFor: 'connection' stamp: 'Richo 8/23/2011 12:56'!
isConnected
	^ port notNil! !

!ArduinoDirectMode methodsFor: 'keeping alive' stamp: 'Richo 12/11/2012 13:16'!
keepAliveTime
	"Every second"
	^ 1000! !

!ArduinoDirectMode methodsFor: 'accessing' stamp: 'Richo 12/23/2011 16:16'!
nameSymbol
	^ #direct! !

!ArduinoDirectMode methodsFor: 'initialize-release' stamp: 'Richo 8/23/2011 14:53'!
newDictionaryFrom: start to: stop withAll: value
	| dict |
	dict := Dictionary new.
	start to: stop do: [:each |
		dict at: each put: value].
	^ dict
! !

!ArduinoDirectMode methodsFor: 'sound' stamp: 'Richo 1/18/2013 18:19'!
playTone: frequency duration: duration pin: pin
	| freq dur |
	freq := frequency rounded.
	dur := duration rounded.
	self send: {self asCommand: self class rqPlayTone.
				"pin"
				self asArgument: pin.
				"frequency"
				self asArgument: (freq bitAnd: 2r1111111).
				self asArgument: ((freq bitAnd: 2r11111110000000) >> 7).
				self asArgument: ((freq bitAnd: 2r111111100000000000000) >> 14) .
				"duration"
				self asArgument: (dur bitAnd: 2r1111111).
				self asArgument: ((dur bitAnd: 2r11111110000000) >> 7)} asByteArray! !

!ArduinoDirectMode methodsFor: 'connection' stamp: 'Richo 1/7/2013 15:58'!
privateDisconnect
	"Use #disconnect"
	self stopSteppingProcess.
	port close.
	port := nil.
	self initialize! !

!ArduinoDirectMode methodsFor: 'receiving' stamp: 'Richo 12/11/2012 13:13'!
processInput
	| data |
	data := port readByteArray.
	data 
		do: [:inByte |
			(self isCommand: inByte)
				ifTrue: [self readCommand: inByte].
			(self isArgument: inByte)
				ifTrue: [self readArgument: inByte].

			argsToRead = 0
				ifTrue: [self executeCommand]]! !

!ArduinoDirectMode methodsFor: 'receiving' stamp: 'Richo 8/29/2011 12:45'!
readArgument: inByte
	| argument |
	argument := self getArgument: inByte.
	queue push: argument.
	argsToRead := argsToRead - 1! !

!ArduinoDirectMode methodsFor: 'receiving' stamp: 'Richo 8/30/2011 16:57'!
readCommand: inByte
	| command |
	queue flush.
	command := self getCommand: inByte.
	queue push: command.
	self setArgsToReadFor: command.! !

!ArduinoDirectMode methodsFor: 'sending' stamp: 'Richo 1/7/2013 15:59'!
send: aByteArray
	self isConnected ifFalse: [^ self].
	"Added a small delay because /dev/ttyACM* devices seem
	to fail when sending a lot of small messages"
	1 milliSecond asDelay wait.
	(port nextPutAll: aByteArray) < 0
		ifTrue: [
			"An error occurred, maybe the board was unplugged.
			Just in case, disconnect"
			self privateDisconnect]! !

!ArduinoDirectMode methodsFor: 'connection' stamp: 'Richo 1/7/2013 15:55'!
sendDisconnect
	self send: {self asCommand: self class rqDisconnect} asByteArray.! !

!ArduinoDirectMode methodsFor: 'keeping alive' stamp: 'Richo 12/11/2012 13:32'!
sendKeepAlive
	self send: {self asCommand: self class rqKeepAlive} asByteArray! !

!ArduinoDirectMode methodsFor: 'servos' stamp: 'Richo 12/29/2011 17:39'!
servoOnPin: pinNumber angle: degrees
	self send: {self asCommand: self class rqServoAngle.
				self asArgument: pinNumber.
				self asArgument: (degrees bitAnd: 2r01111111).
				self asArgument: (degrees bitAnd: 2r10000000) >> 7} asByteArray.
! !

!ArduinoDirectMode methodsFor: 'receiving' stamp: 'Richo 8/29/2011 17:58'!
setArgsToReadFor: command
	command caseOf: {
		[self class rsDigitalPort] -> [argsToRead := 2].
		[self class rsAnalogPin] -> [argsToRead := 3]
	} otherwise: [Transcript show: 'Error - command: ', command asString; cr]
! !

!ArduinoDirectMode methodsFor: 'stepping' stamp: 'Richo 8/23/2011 12:56'!
startSteppingProcess
	steppingProcess notNil
		ifTrue: [^ self].
	steppingProcess := [[self step.
			(Delay forMilliseconds: self stepTime) wait] repeat]
				forkNamed: self asString ! !

!ArduinoDirectMode methodsFor: 'stepping' stamp: 'Richo 12/11/2012 13:14'!
step
	[self processInput]
		on: Error
		do: [:err | 
			Transcript show: self asString , ': ' , err description; cr. 
			self initialize]! !

!ArduinoDirectMode methodsFor: 'stepping' stamp: 'Richo 8/29/2011 16:04'!
stepTime
	^ 1! !

!ArduinoDirectMode methodsFor: 'stepping' stamp: 'Richo 8/23/2011 12:57'!
stopSteppingProcess
	steppingProcess isNil
		ifTrue: [^ self].
	steppingProcess terminate. 
	steppingProcess := nil! !

!ArduinoDirectMode methodsFor: 'pin modes' stamp: 'Richo 8/24/2011 11:14'!
valueForInputMode
	"Return the internal (usually numeric) value used to represent the input mode"
	^ 0! !

!ArduinoDirectMode methodsFor: 'pin modes' stamp: 'Richo 8/24/2011 11:14'!
valueForOutputMode
	"Return the internal (usually numeric) value used to represent the output mode"
	^ 1! !

!ArduinoDirectMode methodsFor: 'pin modes' stamp: 'Richo 8/24/2011 11:14'!
valueForPwmMode
"Return the internal (usually numeric) value used to represent the pwm mode"
	^ 2! !

!ArduinoDirectMode methodsFor: 'pin modes' stamp: 'Richo 8/24/2011 11:14'!
valueForServoMode
"Return the internal (usually numeric) value used to represent the servo mode"
	^ 3! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 8/24/2011 09:38'!
rqActivateAnalogPin
	^ 0! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 8/24/2011 09:38'!
rqActivateDigitalPort
	^ 2! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 8/24/2011 09:38'!
rqAnalogWrite
	^ 1! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 8/24/2011 09:38'!
rqAttachServo
	^ 5! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 12/29/2011 17:27'!
rqDetachServo
	^ 7! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 8/24/2011 09:38'!
rqDigitalPinMode
	^ 3! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 8/24/2011 09:38'!
rqDigitalWrite
	^ 4! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 1/7/2013 15:47'!
rqDisconnect
	^ 8! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 1/7/2013 16:19'!
rqKeepAlive
	^ 64! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 1/18/2013 18:18'!
rqPlayTone
	^ 9! !

!ArduinoDirectMode class methodsFor: 'constants-request commands' stamp: 'Richo 8/24/2011 09:39'!
rqServoAngle
	^ 6! !

!ArduinoDirectMode class methodsFor: 'constants-response commands' stamp: 'Richo 8/30/2011 16:43'!
rsAnalogPin
	^ 2! !

!ArduinoDirectMode class methodsFor: 'constants-response commands' stamp: 'Richo 8/30/2011 16:43'!
rsDigitalPort
	^ 1! !

!ArduinoDirectMode class methodsFor: 'constants-response commands' stamp: 'Richo 8/30/2011 16:43'!
rsVersion
	^ 3! !

!ArduinoPin methodsFor: 'configuring devices' stamp: 'Richo 9/6/2011 11:49'!
configure: aDevice
	self subclassResponsibility ! !

!ArduinoPin methodsFor: 'configuring devices' stamp: 'Richo 9/6/2011 11:55'!
deleteConfiguration: aDevice
	self subclassResponsibility ! !

!ArduinoPin methodsFor: 'initializing' stamp: 'Richo 10/24/2011 14:01'!
initializeWith: anArduino number: aSmallInteger
	self initialize.
	arduino := anArduino.
	number := aSmallInteger.
	value := 0! !

!ArduinoPin methodsFor: 'testing' stamp: 'Richo 9/6/2011 12:13'!
isAnalog
	^ false! !

!ArduinoPin methodsFor: 'testing' stamp: 'Richo 9/6/2011 12:13'!
isDigital
	^ false! !

!ArduinoPin methodsFor: 'mode' stamp: 'Richo 9/7/2011 10:52'!
mode
	^ mode! !

!ArduinoPin methodsFor: 'mode' stamp: 'Richo 9/7/2011 10:52'!
mode: aPinMode
	mode := aPinMode.
	self refreshMode! !

!ArduinoPin methodsFor: 'accessing' stamp: 'Richo 8/24/2009 16:51'!
number
^number! !

!ArduinoPin methodsFor: 'printing' stamp: 'Richo 8/19/2009 14:18'!
printOn: aStream
super printOn: aStream.
aStream nextPutAll: '(', number asString, ')'! !

!ArduinoPin methodsFor: 'accessing' stamp: 'Richo 10/24/2011 14:02'!
protocol
	^ arduino protocol! !

!ArduinoPin methodsFor: 'initializing' stamp: 'Richo 9/7/2011 10:59'!
refresh
	self subclassResponsibility! !

!ArduinoPin methodsFor: 'mode' stamp: 'Richo 9/7/2011 10:53'!
refreshMode
	self subclassResponsibility ! !

!ArduinoPin methodsFor: 'value' stamp: 'Richo 9/7/2011 10:55'!
refreshValue
	self subclassResponsibility ! !

!ArduinoPin methodsFor: 'mode' stamp: 'Richo 9/7/2011 10:53'!
setInput
	self mode: InputMode new! !

!ArduinoPin methodsFor: 'mode' stamp: 'Richo 9/7/2011 10:53'!
setOutput
	self mode: OutputMode new! !

!ArduinoPin methodsFor: 'value' stamp: 'Richo 12/29/2011 17:35'!
value: aNumber 
	value := aNumber rounded.
	self refreshValue! !

!ArduinoPin class methodsFor: 'instance creation' stamp: 'Richo 9/7/2011 11:02'!
new
	self shouldNotImplement! !

!ArduinoPin class methodsFor: 'instance creation' stamp: 'Richo 10/24/2011 14:00'!
on: anArduino number: pinNumber 
	^ self basicNew initializeWith: anArduino number: pinNumber! !

!ArduinoProtocol methodsFor: 'analog pins' stamp: 'Richo 8/26/2009 16:51'!
activateAnalogPin: pinNumber
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'digital pins' stamp: 'Richo 9/11/2009 13:46'!
activateDigitalPort: portNumber
self subclassResponsibility
! !

!ArduinoProtocol methodsFor: 'analog pins' stamp: 'Richo 8/26/2009 16:09'!
analogRead: pinNumber
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'servos' stamp: 'Richo 8/26/2009 16:54'!
attachServoToPin: pinNumber
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'connection' stamp: 'Richo 1/31/2011 10:00'!
connectOnPort: portName boardType: anArduinoType
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'analog pins' stamp: 'Richo 8/26/2009 16:51'!
deactivateAnalogPin: pinNumber
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'digital pins' stamp: 'Richo 9/11/2009 13:47'!
deactivateDigitalPort: portNumber
self subclassResponsibility
! !

!ArduinoProtocol methodsFor: 'servos' stamp: 'Richo 9/7/2009 16:25'!
detachServoFromPin: pinNumber
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'digital pins' stamp: 'Richo 8/26/2009 16:53'!
digitalPin: pinNumber mode: mode
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'digital pins' stamp: 'Richo 8/26/2009 16:51'!
digitalRead: pinNumber
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'digital pins' stamp: 'Richo 8/26/2009 17:06'!
digitalWrite: pinNumber value: value
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'connection' stamp: 'Richo 8/26/2009 16:08'!
disconnect
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'testing' stamp: 'Richo 12/23/2011 15:10'!
isCompiled
	^ false! !

!ArduinoProtocol methodsFor: 'connection' stamp: 'Richo 8/26/2009 16:09'!
isConnected
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'keep alive' stamp: 'Richo 12/11/2012 13:28'!
keepAliveTime
	^ 100000! !

!ArduinoProtocol methodsFor: 'sound' stamp: 'Richo 1/18/2013 18:20'!
playTone: frequency duration: duration pin: pin
	self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'keep alive' stamp: 'Richo 12/11/2012 13:27'!
sendKeepAlive
	"Do nothing"! !

!ArduinoProtocol methodsFor: 'servos' stamp: 'Richo 8/26/2009 16:54'!
servoOnPin: pinNumber angle: degrees
self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'pin modes' stamp: 'Richo 3/9/2010 10:52'!
valueForInputMode
"Return the internal (usually numeric) value used to represent the input mode"
^self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'pin modes' stamp: 'Richo 3/9/2010 10:53'!
valueForOutputMode
"Return the internal (usually numeric) value used to represent the output mode"
^self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'pin modes' stamp: 'Richo 4/30/2010 15:44'!
valueForPwmMode
"Return the internal (usually numeric) value used to represent the pwm mode"
^self subclassResponsibility! !

!ArduinoProtocol methodsFor: 'pin modes' stamp: 'Richo 3/9/2010 10:53'!
valueForServoMode
"Return the internal (usually numeric) value used to represent the servo mode"
^self subclassResponsibility! !

!ArduinoType methodsFor: 'accessing' stamp: 'Richo 9/15/2011 17:47'!
avrdudeProgrammer
	^programmer! !

!ArduinoType methodsFor: 'accessing' stamp: 'Richo 1/31/2011 09:31'!
fCpu
	"Answer the value of fCpu"

	^ fCpu! !

!ArduinoType methodsFor: 'accessing' stamp: 'Richo 1/31/2011 09:31'!
firmataRate
	"Answer the value of firmataRate"

	^ firmataRate! !

!ArduinoType methodsFor: 'accessing' stamp: 'Richo 1/31/2011 09:31'!
friendlyNames
	"Answer the value of friendlyNames"

	^ friendlyNames! !

!ArduinoType methodsFor: 'accessing' stamp: 'Richo 11/23/2012 12:32'!
id
	^ self class types keyAtValue: self! !

!ArduinoType methodsFor: 'private' stamp: 'Richo 9/15/2011 17:48'!
initializeWithFriendlyNames: anArray fCpu: anInteger mcu: aString uploadRate: uploadRate1 firmataRate: firmataRate1 avrdudeProgrammer: programmerString
	self initialize.
	friendlyNames := anArray.
	fCpu := anInteger.
	mcu := aString.
	uploadRate := uploadRate1.
	firmataRate := firmataRate1.
	programmer := programmerString! !

!ArduinoType methodsFor: 'accessing' stamp: 'Richo 1/31/2011 09:31'!
mcu
	"Answer the value of mcu"

	^ mcu! !

!ArduinoType methodsFor: 'accessing' stamp: 'Richo 1/31/2011 09:31'!
uploadRate
	"Answer the value of uploadRate"

	^ uploadRate! !

!ArduinoType class methodsFor: 'accessing types' stamp: 'Richo 1/31/2011 09:55'!
allFriendlyNames
	^ types inject: #() into: [:subTotal :next | subTotal, next friendlyNames]! !

!ArduinoType class methodsFor: 'accessing types' stamp: 'Richo 1/31/2011 09:46'!
at: aSymbol
	^ types at: aSymbol! !

!ArduinoType class methodsFor: 'accessing' stamp: 'Richo 11/23/2012 12:21'!
default
	^ self at: #ArduinoUNO! !

!ArduinoType class methodsFor: 'instance creation' stamp: 'Richo 9/15/2011 17:48'!
friendlyNames: anArray fCpu: anInteger mcu: aString uploadRate: uploadRate firmataRate: firmataRate
	^ self basicNew initializeWithFriendlyNames: anArray fCpu: anInteger mcu: aString uploadRate: uploadRate firmataRate: firmataRate avrdudeProgrammer: 'stk500'! !

!ArduinoType class methodsFor: 'instance creation' stamp: 'Richo 9/15/2011 17:48'!
friendlyNames: anArray fCpu: anInteger mcu: aString uploadRate: uploadRate firmataRate: firmataRate avrdudeProgrammer: programmerString
	^ self basicNew initializeWithFriendlyNames: anArray fCpu: anInteger mcu: aString uploadRate: uploadRate firmataRate: firmataRate avrdudeProgrammer: programmerString! !

!ArduinoType class methodsFor: 'class initialization' stamp: 'Richo 9/15/2011 17:50'!
initialize
"
self initialize
"
types := Dictionary new.

types at: #ArduinoDiecimila
	 put: (ArduinoType 
		friendlyNames: #('diecimila w/ atmega168' 'duemilanove w/ atmega168' 'nano w/ atmega168')
		fCpu: 16000000
		mcu: 'atmega168'
		uploadRate: 19200
		firmataRate: 57600).

types at: #ArduinoLilyPad
	 put: (ArduinoType 
		friendlyNames: #('lilypad w/ atmega168')
		fCpu: 8000000
		mcu: 'atmega168'
		uploadRate: 19200
		firmataRate: 57600).

types at: #ArduinoMega
	 put: (ArduinoType 
		friendlyNames: #('mega')
		fCpu: 16000000
		mcu: 'atmega1280'
		uploadRate: 57600
		firmataRate: 57600).

types at: #ArduinoBT
	 put: (ArduinoType 
		friendlyNames: #('bluetooth')
		fCpu: 16000000
		mcu: 'atmega168'
		uploadRate: 19200
		firmataRate: 57600).

types at: #ArduinoATmega8
	 put: (ArduinoType 
		friendlyNames: #('ng or older w/ atmega8')
		fCpu: 16000000
		mcu: 'atmega8'
		uploadRate: 19200
		firmataRate: 115200).

types at: #ArduinoMini
	 put: (ArduinoType 
		friendlyNames: #('mini')
		fCpu: 16000000
		mcu: 'atmega168'
		uploadRate: 19200
		firmataRate: 57600).

types at: #ArduinoATmega168
	 put: (ArduinoType 
		friendlyNames: #('ng or older w/ atmega168')
		fCpu: 16000000
		mcu: 'atmega168'
		uploadRate: 19200
		firmataRate: 57600).

types at: #ArduinoLilyPad328
	 put: (ArduinoType 
		friendlyNames: #('lilypad w/ atmega328')
		fCpu: 8000000
		mcu: 'atmega328p'
		uploadRate: 57600
		firmataRate: 57600).

types at: #ArduinoATmega328
	 put: (ArduinoType 
		friendlyNames: #('duemilanove w/ atmega328' 'nano w/ atmega328')
		fCpu: 16000000
		mcu: 'atmega328p'
		uploadRate: 57600
		firmataRate: 57600).

types at: #ArduinoPro
	 put: (ArduinoType 
		friendlyNames: #('pro w/ atmega168' 'pro mini w/ atmega168')
		fCpu: 8000000
		mcu: 'atmega168'
		uploadRate: 19200
		firmataRate: 57600).

types at: #ArduinoPro328
	 put: (ArduinoType 
		friendlyNames: #('pro w/ atmega328' 'pro mini w/ atmega328')
		fCpu: 8000000
		mcu: 'atmega328p'
		uploadRate: 57600
		firmataRate: 57600).

types	at: #ArduinoMega2560
	put: (ArduinoType
		friendlyNames: #('mega 2560' )
		fCpu: 16000000
		mcu: 'atmega2560'
		uploadRate: 115200
		firmataRate: 57600
		avrdudeProgrammer: 'stk500v2').

types	at: #ArduinoUNO
	put: (ArduinoType
		friendlyNames: #('uno' )
		fCpu: 16000000
		mcu: 'atmega328p'
		uploadRate: 115200
		firmataRate: 57600)! !

!ArduinoType class methodsFor: 'accessing types' stamp: 'Richo 11/23/2012 12:32'!
types
	^ types! !

!ArduinoType class methodsFor: 'accessing types' stamp: 'Richo 4/6/2011 10:43'!
withFriendlyName: aSymbol 
"Return an ArduinoType with the friendly name given as a parameter"

	^ types detect: [:each | each friendlyNames includes: aSymbol] ifNone: [self error: 'ArduinoType not found' translated]! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 6/1/2010 14:20'!
attach: aPin
	self setPins: (Array with: aPin)! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 6/1/2010 15:08'!
attachAnalogPins: anArray on: anArduino 
"
	self attachAnalogPins: #(1 2 3 4) on: Arduino new.
"
	self setPins: (anArray collect: [:pinNumber| anArduino analogPin: pinNumber]).! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 6/1/2010 15:08'!
attachDigitalPins: anArray on: anArduino 
"
	self attachDigitalPins: #(1 2 3 4) on: Arduino new.
"
	self setPins: (anArray collect: [:pinNumber| anArduino digitalPin: pinNumber]).! !

!AttachableDevice methodsFor: 'configuring' stamp: 'Richo 9/6/2011 11:54'!
configure
	"This method is responsible of configuring the pin for using the corresponding device. Most of the times the configuration is simply setting the correct pin mode"
	pins do: [:each | each configure: self]! !

!AttachableDevice methodsFor: 'configuring' stamp: 'Richo 9/6/2011 11:56'!
configureAnalog: anAnalogPin
	self subclassResponsibility ! !

!AttachableDevice methodsFor: 'configuring' stamp: 'Richo 9/6/2011 11:56'!
configureDigital: aDigitalPin
	self subclassResponsibility ! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 9/8/2009 12:52'!
controlAttaching
self isAttached
		ifFalse: [^ self unattachedError].! !

!AttachableDevice methodsFor: 'configuring' stamp: 'Richo 9/6/2011 11:55'!
deleteConfiguration
	"This method simply resets the pin's configuration to its default state"
	pins do: [:each | each deleteConfiguration: self]! !

!AttachableDevice methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:01'!
deleteConfigurationAnalog: anAnalogPin
	self subclassResponsibility ! !

!AttachableDevice methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:02'!
deleteConfigurationDigital: aDigitalPin
	self subclassResponsibility ! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 6/1/2010 14:21'!
detach
	self controlAttaching.
	[self deleteConfiguration] on: Error do: ["The port may be disconnected"].
	pins := nil! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 8/15/2011 10:14'!
isAttached
	^pins notNil! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 8/15/2011 10:13'!
isAttachedTo: anArduino 
	^ self isAttached and: [anArduino pins includesAllOf: pins]! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 8/15/2011 16:20'!
isAttachedToArduino: anArduino 
	^ self isAttached and: [anArduino pins includesAllOf: pins]! !

!AttachableDevice methodsFor: 'attaching' stamp: 'Richo 8/15/2011 16:20'!
isAttachedToPin: aPin
	^ self isAttached and: [pins includes: aPin]! !

!AttachableDevice methodsFor: 'configuring' stamp: 'Richo 6/1/2010 14:21'!
reconfigureIfNecessary
	"This method must be called every time we try to communicate with the
	device. This way we are sure that the device is properly configured"
	isConfigured
		ifFalse: [self setPins: pins]! !

!AttachableDevice methodsFor: 'private' stamp: 'Richo 6/1/2010 14:21'!
setPins: anArrayOfPins
"When attaching a device I try to configure it, but if it fails for some reason I simply set isConfigured to false, so that we remember to configure whenever possible"
	pins := anArrayOfPins.
	[self configure.
	isConfigured := true]
		on: Error
		do: [isConfigured := false]! !

!AttachableDevice methodsFor: 'errors' stamp: 'Richo 4/6/2011 10:40'!
unattachedError
^self error: 'Unattached device: ' translated, self asString.! !

!Buzzer methodsFor: 'configuring' stamp: 'Richo 9/6/2011 11:57'!
configureDigital: aPin
	aPin mode: PwmMode new! !

!Buzzer methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:01'!
deleteConfigurationDigital: aPin
	aPin setOutput! !

!Buzzer methodsFor: 'accessing' stamp: 'Richo 1/18/2013 18:26'!
playTone: frequency duration: duration
	| pin |
	self controlAttaching; reconfigureIfNecessary.
	pin := pins first.
	pin protocol
		playTone: frequency duration: duration pin: pin number! !

!Buzzer methodsFor: 'accessing' stamp: 'Richo 9/7/2011 11:09'!
value
	self controlAttaching; reconfigureIfNecessary.
	^ pins first value! !

!Buzzer methodsFor: 'accessing' stamp: 'Richo 9/7/2011 11:09'!
value: aNumber 
	"aNumber can be 0 - 255"
	self controlAttaching; reconfigureIfNecessary.
	pins first value: (aNumber min: 255 max: 0)! !

!DCMotor methodsFor: 'accessing' stamp: 'Richo 6/27/2011 17:53'!
brake
	self controlAttaching; reconfigureIfNecessary.
	self d0Pin value: 1.
	self d1Pin value: 1.
	self enablePin value: 255! !

!DCMotor methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:00'!
configureDigital: aPin
	| index mode |
	index := pins indexOf: aPin ifAbsent: [^ self error].
	mode := index caseOf: {
		[1] -> [OutputMode].
		[2] -> [OutputMode].
		[3] -> [PwmMode]}.
	aPin mode: mode new;
		value: 0! !

!DCMotor methodsFor: 'private' stamp: 'Richo 6/27/2011 15:26'!
d0Pin
	^ pins first! !

!DCMotor methodsFor: 'private' stamp: 'Richo 6/27/2011 15:26'!
d1Pin
	^ pins second! !

!DCMotor methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:01'!
deleteConfigurationDigital: aPin
	aPin setOutput! !

!DCMotor methodsFor: 'private' stamp: 'Richo 6/27/2011 15:26'!
enablePin
	^ pins third! !

!DCMotor methodsFor: 'initialize-release' stamp: 'Richo 6/27/2011 15:33'!
initialize
	super initialize.
	speed := 0.! !

!DCMotor methodsFor: 'accessing' stamp: 'Richo 6/27/2011 15:33'!
speed
	^ speed! !

!DCMotor methodsFor: 'accessing' stamp: 'Richo 6/27/2011 17:52'!
speed: aNumber
	self controlAttaching; reconfigureIfNecessary.
	speed := aNumber min: 100 max: -100.
	speed < 0
		ifTrue: [self d0Pin value: 0.
			self d1Pin value: 1]
		ifFalse: [self d0Pin value: 1.
			self d1Pin value: 0].
	self enablePin value: (speed abs / 100 * 255)
	! !

!EButton methodsFor: 'configuring' stamp: 'Richo 10/25/2011 16:42'!
configureAnalog: aPin
	aPin setInput activate! !

!EButton methodsFor: 'configuring' stamp: 'Richo 10/25/2011 15:47'!
configureDigital: aPin
	aPin setInput! !

!EButton methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:16'!
deleteConfigurationAnalog: aPin
	aPin deactivate ! !

!EButton methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:02'!
deleteConfigurationDigital: aPin
aPin setOutput! !

!EButton methodsFor: 'accessing' stamp: 'Richo 1/7/2013 11:25'!
value
	self controlAttaching ; reconfigureIfNecessary .
	^ pins first isDigital
		ifTrue: [pins first value]
		ifFalse: [(pins first value / 1023) rounded]
! !

!Firmata methodsFor: 'analog pins' stamp: 'Richo 1/11/2010 18:36'!
activateAnalogPin: pinNumber 
	self analogPinReport: pinNumber onOff: 1.
! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 12/11/2012 14:02'!
activateDigitalPort: n
	self digitalPortReport: n onOff: 1
! !

!Firmata methodsFor: 'analog pins' stamp: 'Richo 1/14/2013 19:28'!
analogPinReport: pin onOff: onOff 
	"Sends a message to turn Analog Pin reportng on or off for a pin"
	self port 
		nextPutAll: (ByteArray
				with: (FirmataConstants reportAnalog  bitOr: pin)
				with: onOff)! !

!Firmata methodsFor: 'analog pins' stamp: 'Richo 8/18/2009 12:35'!
analogRead: pinNumber
"Returns an analog value for an individual Analog pin"
^analogInputData at: pinNumber + 1! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 8/25/2009 14:47'!
analogWrite: pin value: value 
	"Sends a PWM value to a digital pin. 0 - 255"
	| analogWriteBuffer |
	analogWriteBuffer := ByteArray new: 3 withAll: 0.
	analogWriteBuffer
		at: 1
		put: (FirmataConstants analogMessage
				bitOr: (pin bitAnd: 15));
		
		at: 2
		put: (value rounded bitAnd: 127);
		
		at: 3
		put: ((value rounded bitShift: -7)
				bitAnd: 127).
self port  nextPutAll: analogWriteBuffer! !

!Firmata methodsFor: 'servos' stamp: 'Richo 9/1/2009 11:35'!
attachServoToPin: pinNumber 
	self
		servoConfig: pinNumber
		minPulse: 544
		maxPulse: 2400
		angle: 0! !

!Firmata methodsFor: 'connection' stamp: 'Richo 12/23/2011 17:23'!
connectOnPort: aString boardType: anArduinoType
	"If the port cant't be open it stores nil, this way we can know if it is
	connected by asking if port is nil.
	In windows we can't open a port using the port name, so I convert the
	string to an integer"
	self isConnected ifTrue: [^ self].
	port := SerialPort new baudRate: anArduinoType firmataRate.
	port := port
				openPort: (('COM*' match: aString)
						ifTrue: [aString asInteger]
						ifFalse: [aString]).
	self isConnected
		ifTrue: [self startSteppingProcess; controlFirmataInstallation]! !

!Firmata methodsFor: 'error control' stamp: 'Richo 4/6/2011 10:41'!
controlConnection
self isConnected ifFalse: [^self error: 'Serial port is not connected' translated].! !

!Firmata methodsFor: 'error control' stamp: 'Richo 12/23/2011 17:13'!
controlFirmataInstallation
	"If Firmata is not installed I throw an error"
	self isFirmataInstalled
		ifFalse: [^ self error: 'Firmata doesn''t seem to be installed.
Please use the Arduino IDE to upload the StandardFirmata sketch' translated]! !

!Firmata methodsFor: 'analog pins' stamp: 'Richo 8/26/2009 17:03'!
deactivateAnalogPin: pinNumber 
	self analogPinReport: pinNumber onOff: 0! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 9/11/2009 13:46'!
deactivateDigitalPort: n
			self digitalPortReport: n onOff: 0
! !

!Firmata methodsFor: 'servos' stamp: 'Richo 9/7/2009 16:45'!
detachServoFromPin: pinNumber 
	self pin: pinNumber mode: FirmataConstants pinModeOutput ! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 1/14/2013 19:27'!
digitalPin: pinNumber mode: mode
	"Digital ports should always be active"
	pinNumber <= 7
		ifTrue: [self activateDigitalPort: 0]
		ifFalse: [self activateDigitalPort: 1].
	(pinNumber > 13 and: [mode = 0])
		ifTrue: ["Analog pins should not be set as INPUT but ANALOG"
			self pin: pinNumber mode: FirmataConstants pinModeAnalog]
		ifFalse: [self pin: pinNumber mode: mode]! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 8/31/2009 16:22'!
digitalPortReport: port1 onOff: onOff
"Sends a message to toggle reporting for a whole digital port"
	self port 
		nextPutAll: (ByteArray
				with: (FirmataConstants reportDigital bitOr: port1 )
				with: onOff)! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 9/14/2009 15:32'!
digitalRead: pinNumber 
	"Retuns On/Off data for an individual Digital Pin"
	^ ((digitalInputData at: (pinNumber bitShift: -3)
			+ 1)
		bitShift: (pinNumber bitAnd: 7) * -1)
		bitAnd: 1! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 1/6/2012 13:29'!
digitalWrite: pin value: value 
	"Sends an On or Off message to an individual Digital Pin"
	| portNumber adjustment digitalWriteBuffer |
	portNumber := (pin bitShift: -3)
				bitAnd: 15.
	adjustment := 1
				bitShift: (pin bitAnd: 7).
	digitalWriteBuffer := ByteArray new: 3 withAll: 0.
	value = 0
		ifTrue: [digitalOutputData
				at: portNumber + 1
				put: ((digitalOutputData at: portNumber + 1)
						bitAnd: adjustment bitInvert)]
		ifFalse: [digitalOutputData
				at: portNumber + 1
				put: ((digitalOutputData at: portNumber + 1)
						bitOr: adjustment)].
	digitalWriteBuffer
		at: 1
		put: (FirmataConstants digitalMessage bitOr: portNumber);
		at: 2
		put: ((digitalOutputData at: portNumber + 1)
				bitAnd: 127);
		at: 3
		put: ((digitalOutputData at: portNumber + 1)
				bitShift: -7).
	self port nextPutAll: digitalWriteBuffer! !

!Firmata methodsFor: 'connection' stamp: 'Richo 3/9/2010 11:12'!
disconnect
	self isConnected
		ifTrue: [self stopSteppingProcess.
			port close.
			port := nil.
			self initializeVariables]! !

!Firmata methodsFor: 'other commands' stamp: 'Richo 8/18/2009 12:41'!
endSysex
"Sends an End Sysex message"
self port  nextPutAll: (ByteArray with: FirmataConstants endSysex  ).! !

!Firmata methodsFor: 'initialize-release' stamp: 'Richo 9/8/2009 12:40'!
initialize
self initializeVariables! !

!Firmata methodsFor: 'initialize-release' stamp: 'Richo 9/8/2009 12:40'!
initializeVariables
	digitalOutputData := Array new: 16 withAll: 0.
	digitalInputData := Array new: 16 withAll: 0.
	analogInputData := Array new: 16 withAll: 0.
	storedInputData := Array new: FirmataConstants maxDataBytes + 1 withAll: 0.
	parsingSysex := false.
	sysexBytesRead := waitForData := executeMultiByteCommand := multiByteChannel := majorVersion := minorVersion := 0! !

!Firmata methodsFor: 'connection' stamp: 'Richo 8/18/2009 12:40'!
isConnected
^port notNil! !

!Firmata methodsFor: 'testing' stamp: 'Richo 1/31/2011 11:53'!
isFirmataInstalled
"I check if Firmata responds well to queryVersion. I try for 5 seconds"
| t timeout |
t := Time millisecondClockValue.
timeout := 5000.
[self queryVersion. 500 milliSeconds asDelay wait.
self version > 0 or: [(Time millisecondsSince: t) > timeout]] whileFalse.
^self version > 0! !

!Firmata methodsFor: 'keep alive' stamp: 'Richo 12/11/2012 14:05'!
keepAliveTime
	^ 1000! !

!Firmata methodsFor: 'accessing' stamp: 'Richo 1/5/2010 13:02'!
majorVersion
^majorVersion! !

!Firmata methodsFor: 'accessing' stamp: 'Richo 8/18/2009 13:22'!
majorVersion: version1 minorVersion: version2
majorVersion := version1.
minorVersion := version2! !

!Firmata methodsFor: 'accessing' stamp: 'Richo 1/5/2010 13:02'!
minorVersion
^minorVersion! !

!Firmata methodsFor: 'accessing' stamp: 'Richo 12/23/2011 16:42'!
nameSymbol
	^ #firmata! !

!Firmata methodsFor: 'receiving' stamp: 'Richo 3/9/2010 11:34'!
parseCommandHeader: inputByte 
"I check the inputByte for a command header and then I set the variables accordingly to process the data in the following step"
	| command |
	inputByte < 240
		ifTrue: [command := inputByte bitAnd: 240.
			multiByteChannel := inputByte bitAnd: 15.]
		ifFalse: [command := inputByte].
	command caseOf: {
		[FirmataConstants analogMessage] -> 
			[waitForData := 2.
			executeMultiByteCommand := command].
		[FirmataConstants digitalMessage] -> 
			[waitForData := 2.
			executeMultiByteCommand := command].
		[FirmataConstants setPinMode] -> 
			[waitForData := 2.
			executeMultiByteCommand := command].
		[FirmataConstants reportDigital] -> 
			[waitForData := 1.
			executeMultiByteCommand := command].
		[FirmataConstants startSysex] -> 
			[parsingSysex := true.
			sysexBytesRead := 0].
		[FirmataConstants reportVersion] -> 
			[waitForData := 2.
			executeMultiByteCommand := command]}
		 otherwise: []! !

!Firmata methodsFor: 'receiving' stamp: 'Richo 10/25/2011 15:59'!
parseData: inputByte 
"I check inputByte for data according to the command header I found in the previous step, then I use the data to set the corresponding variables"

	waitForData := waitForData - 1.
	storedInputData at: waitForData + 1 put: inputByte.

	(waitForData = 0
			and: [executeMultiByteCommand ~= 0])
		ifTrue: [executeMultiByteCommand caseOf: {
				[FirmataConstants analogMessage] -> [self setAnalogInput: multiByteChannel value: (storedInputData first bitShift: 7)
						+ storedInputData second].
				[FirmataConstants digitalMessage] -> [
						self setDigitalInputs: multiByteChannel data: (storedInputData first bitShift: 7)
						+ storedInputData second].
				[FirmataConstants reportVersion] -> [self majorVersion: storedInputData first minorVersion: storedInputData second]}
				 otherwise: [].
			executeMultiByteCommand := 0]! !

!Firmata methodsFor: 'receiving' stamp: 'Richo 9/8/2009 10:31'!
parseSysex: inputByte 
	inputByte = FirmataConstants endSysex
		ifTrue: [parsingSysex := false]
		ifFalse: [storedInputData at: sysexBytesRead + 1 put: inputByte.
			sysexBytesRead := sysexBytesRead + 1
				]! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 1/12/2010 13:09'!
pin: pin mode: mode
"Sends an individual Pin Mode message"
self port nextPutAll: (ByteArray with: FirmataConstants setPinMode with: pin with: mode).! !

!Firmata methodsFor: 'sound' stamp: 'Richo 1/18/2013 18:21'!
playTone: frequency duration: duration pin: pin
	self halt! !

!Firmata methodsFor: 'accessing' stamp: 'Richo 1/6/2012 13:29'!
port
	self controlConnection.
	^port! !

!Firmata methodsFor: 'printing' stamp: 'Richo 8/24/2009 15:14'!
printOn: aStream
super printOn: aStream.
aStream nextPutAll: '(',self hash asString,')'! !

!Firmata methodsFor: 'receiving' stamp: 'Richo 9/14/2009 16:26'!
processInput
	| data |
	data := port readByteArray.

	data
		do: [:inputByte | 

parsingSysex
				ifTrue: [self parseSysex: inputByte]
				ifFalse: [(waitForData > 0
							and: [inputByte < 128])
						ifTrue: [self parseData: inputByte]
						ifFalse: [self parseCommandHeader: inputByte]]]! !

!Firmata methodsFor: 'other commands' stamp: 'Richo 8/18/2009 12:42'!
queryFirmware
"Send a Firmware Name and Version query"
self startSysex.
self port  nextPutAll: (ByteArray with: FirmataConstants reportFirmware ).! !

!Firmata methodsFor: 'other commands' stamp: 'Richo 1/31/2011 10:06'!
queryVersion
"Send a version report query"
self port nextPutAll: (ByteArray with: FirmataConstants reportVersion ).! !

!Firmata methodsFor: 'keep alive' stamp: 'Richo 12/11/2012 14:09'!
sendKeepAlive
	(self port nextPutAll: {0} asByteArray) < 0
		ifTrue: [self disconnect]! !

!Firmata methodsFor: 'servos' stamp: 'Richo 8/26/2009 16:14'!
servoConfig: pin minPulse: minPulse maxPulse: maxPulse angle: angle
	"Default values: 
	minPulse 544 (LSB 32 MSB 4)
	maxPulse 2400 (LSB 96 MSB 18
	"
	| b |
	b := ByteArray new: 10.
	b at: 1 put: FirmataConstants startSysex;
		 at: 2 put: FirmataConstants servoConfig;
		 at: 3 put: pin;
		 at: 4 put:  (minPulse rounded bitAnd: 127);
		 at: 5 put: ((minPulse rounded bitShift: -7)
				bitAnd: 127);
		 at: 6 put: (maxPulse rounded bitAnd: 127);
		 at: 7 put: ((maxPulse rounded bitShift: -7)
				bitAnd: 127);
		 at: 8 put: (angle rounded bitAnd: 127);
		 at: 9 put: ((angle rounded bitShift: -7)
				bitAnd: 127);
		 at: 10 put: FirmataConstants endSysex.
	self port nextPutAll: b! !

!Firmata methodsFor: 'servos' stamp: 'Richo 8/26/2009 17:00'!
servoOnPin: pinNumber angle: degrees
self analogWrite: pinNumber value: degrees! !

!Firmata methodsFor: 'analog pins' stamp: 'Richo 8/18/2009 13:01'!
setAnalogInput: pin value: value
"Stores analog value data in array"
	analogInputData at: pin + 1 put: value! !

!Firmata methodsFor: 'digital pins' stamp: 'Richo 8/18/2009 13:01'!
setDigitalInputs: portNumber data: portData 
"Puts but masked On/Off data for a whole digital port into array"
	digitalInputData at: portNumber + 1 put: portData! !

!Firmata methodsFor: 'stepping' stamp: 'Richo 3/9/2010 11:36'!
startSteppingProcess
	steppingProcess notNil
		ifTrue: [^ self].
	steppingProcess := [[self step.
			(Delay forMilliseconds: self stepTime) wait] repeat]
				forkNamed: self asString ! !

!Firmata methodsFor: 'other commands' stamp: 'Richo 8/18/2009 12:41'!
startSysex
"Sends a Start Sysex message"
self port  nextPutAll: (ByteArray with: FirmataConstants startSysex  ).! !

!Firmata methodsFor: 'stepping' stamp: 'Richo 9/9/2009 18:00'!
step
	[self processInput]
		on: Error
		do: [:err | 
			Transcript show: self asString , ': ' , err description;
				 cr. self initializeVariables.
			"self resetConnection"]! !

!Firmata methodsFor: 'stepping' stamp: 'Richo 8/31/2009 14:47'!
stepTime
	^ 1! !

!Firmata methodsFor: 'stepping' stamp: 'Richo 8/23/2011 12:57'!
stopSteppingProcess
	steppingProcess isNil
		ifTrue: [^ self].
	steppingProcess terminate. 
	steppingProcess := nil! !

!Firmata methodsFor: 'pin modes' stamp: 'Richo 3/9/2010 10:47'!
valueForInputMode
^FirmataConstants pinModeInput! !

!Firmata methodsFor: 'pin modes' stamp: 'Richo 3/9/2010 10:47'!
valueForOutputMode
^FirmataConstants pinModeOutput ! !

!Firmata methodsFor: 'pin modes' stamp: 'Richo 4/30/2010 15:44'!
valueForPwmMode
^FirmataConstants pinModePwm! !

!Firmata methodsFor: 'pin modes' stamp: 'Richo 3/9/2010 10:47'!
valueForServoMode
^FirmataConstants pinModeServo ! !

!Firmata methodsFor: 'accessing' stamp: 'Richo 3/30/2010 13:11'!
version
"self queryVersion."
^(majorVersion asString , '.', minorVersion asString) asNumber! !

!Firmata class methodsFor: 'instance creation' stamp: 'Richo 1/31/2011 09:09'!
onPort: portNumber baudRate: aNumber
^self new connectOnPort: portNumber baudRate: aNumber! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:35'!
analogMessage
"0xE0 send data for an analog pin (or PWM)"
^16rE0! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:35'!
digitalMessage
"0x90 send data for digital pin"
^16r90! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:39'!
endSysex
"0xF7 end a MIDI Sysex message"
^16rF7! !

!FirmataConstants class methodsFor: 'version numbers' stamp: 'Richo 8/18/2009 10:33'!
firmataMajorVersion
"for non-compatible changes"
^2! !

!FirmataConstants class methodsFor: 'version numbers' stamp: 'Richo 8/18/2009 10:33'!
firmataMinorVersion
"for backward compatible changes"
^0! !

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'Richo 8/18/2009 10:41'!
firmataString
"0x71 a string message with 14-bits per character"
^16r71! !

!FirmataConstants class methodsFor: 'others' stamp: 'Richo 8/18/2009 10:34'!
maxDataBytes
"Maximum number of data bytes in non-Sysex messages"
^32 ! !

!FirmataConstants class methodsFor: 'pin modes' stamp: 'Richo 9/7/2009 16:16'!
pinModeAnalog
"analog pin in analogInput mode"
^2! !

!FirmataConstants class methodsFor: 'pin modes' stamp: 'Richo 9/7/2009 16:16'!
pinModeInput
^0! !

!FirmataConstants class methodsFor: 'pin modes' stamp: 'Richo 9/7/2009 16:16'!
pinModeOutput
^1! !

!FirmataConstants class methodsFor: 'pin modes' stamp: 'Richo 9/7/2009 16:17'!
pinModePwm
"digital pin in PWM output mode"
^3! !

!FirmataConstants class methodsFor: 'pin modes' stamp: 'Richo 9/7/2009 16:17'!
pinModeServo 
"digital pin in Servo output mode"
^4! !

!FirmataConstants class methodsFor: 'pin modes' stamp: 'Richo 9/11/2009 14:37'!
pinModeUnavailable
	^ -1! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:36'!
reportAnalog
"0xC0 enable analog input by pin number"
^16rC0! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:36'!
reportDigital
"0xD0 enable digital input by port pair"
^16rD0! !

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'Richo 8/18/2009 10:41'!
reportFirmware
"0x79 report name and version of the firmware"
^16r79! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:38'!
reportVersion
"0xF9 report protocol version"
^16rF9! !

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'Richo 8/18/2009 10:40'!
servoConfig
"0x70 set maximum angle, minPulse, maxPulse, frequency"
^16r70! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:37'!
setPinMode
"0xF4 set a pin to INPUT/OUTPUT/ANALOG/PWM/SERVO - 0/1/2/3/4"
^16rF4! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:38'!
startSysex
"0xF0 start a MIDI Sysex message"
^16rF0! !

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'Richo 8/18/2009 10:41'!
sysexNonRealtime
"0x7E MIDI reserved for non-realtime messages"
^16r7E! !

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'Richo 8/18/2009 10:42'!
sysexRealtime
"0x7F MIDI reserved for realtime messages"
^16r7F! !

!FirmataConstants class methodsFor: 'message commands' stamp: 'Richo 8/18/2009 10:38'!
systemReset
"0xFF reset from MIDI"
^16rFF! !

!FirmataConstants class methodsFor: 'version numbers' stamp: 'Richo 8/18/2009 10:33'!
versionBlickPin
"digital pin to blick version on"
^13! !

!InputMode methodsFor: 'testing' stamp: 'Richo 10/24/2011 15:08'!
isInput
	^ true! !

!InputMode methodsFor: 'accessing' stamp: 'Richo 9/7/2009 16:35'!
nameSymbol
	^#input! !

!InputMode methodsFor: 'refreshing' stamp: 'Richo 4/30/2010 16:08'!
refreshModeOn: pinNumber using: anArduinoProtocol
	anArduinoProtocol digitalPin: pinNumber mode: anArduinoProtocol valueForInputMode.
! !

!InputMode methodsFor: 'refreshing' stamp: 'Richo 4/6/2011 10:42'!
refreshValue: value on: pinNumber using: anArduinoProtocol
^self error: 'Input mode cannot set value' translated! !

!Keypad methodsFor: 'accessing' stamp: 'Richo 6/1/2010 15:13'!
at: rowNumber at: columnNumber
	^self atRow: rowNumber column: columnNumber! !

!Keypad methodsFor: 'accessing' stamp: 'Richo 6/1/2010 15:13'!
atRow: rowNumber column: columnNumber
	self controlAttaching; reconfigureIfNecessary.
	^buttons at: rowNumber at: columnNumber! !

!Keypad methodsFor: 'private' stamp: 'Richo 5/31/2010 18:18'!
columnPins
^pins first: 3! !

!Keypad methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:07'!
configureDigital: aPin
	(self rowPins includes: aPin) ifTrue: [aPin setOutput].
	(self columnPins includes: aPin) ifTrue: [aPin setInput]! !

!Keypad methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:08'!
deleteConfigurationDigital: aPin
	aPin setOutput.
	self stopSteppingProcess ! !

!Keypad methodsFor: 'initialize-release' stamp: 'Richo 6/8/2010 15:35'!
finalize
	self stopSteppingProcess.! !

!Keypad methodsFor: 'initialize-release' stamp: 'Richo 6/8/2010 17:28'!
initialize
	super initialize.
	self finalizationRegistry add: self.
	buttons := Matrix rows: 3 columns: 3 element: false.! !

!Keypad methodsFor: 'private' stamp: 'Richo 5/31/2010 18:00'!
rowPins
^pins last: 3! !

!Keypad methodsFor: 'attaching' stamp: 'Richo 5/31/2010 18:04'!
rowPins: rowPinNumbers columnsPins: columnPinNumbers on: anArduino
"
	self rowPins: #(7 6 5) columnPins: #(2 3 4) on: Arduino new.
"
self attachDigitalPins: columnPinNumbers , rowPinNumbers on: anArduino! !

!Keypad methodsFor: 'private' stamp: 'Richo 9/6/2011 12:07'!
setPins: anArrayOfPins
	super setPins: anArrayOfPins.
	isConfigured ifTrue: [self startSteppingProcess]! !

!Keypad methodsFor: 'stepping' stamp: 'Richo 6/8/2010 17:25'!
startSteppingProcess
	steppingProcess notNil
		ifTrue: [^ self].
	steppingProcess := [[self step] repeat] forkNamed: self asString ! !

!Keypad methodsFor: 'stepping' stamp: 'Richo 5/31/2010 18:27'!
step
1 to: 3 do: [:r |
	[self rowPins first value: (r = 1) asBit.
	self rowPins second value: (r = 2) asBit.
	self rowPins third value: (r = 3) asBit.
	50 milliSeconds asDelay wait.
	1 to: 3 do: [:c |
		buttons at: r at: c put: ((self columnPins at: c) value = 1).
	]] on: Error do: [200 milliSeconds asDelay wait]]! !

!Keypad methodsFor: 'stepping' stamp: 'Richo 5/31/2010 17:59'!
stepTime
	^ 1! !

!Keypad methodsFor: 'stepping' stamp: 'Richo 5/31/2010 17:59'!
stopSteppingProcess
	steppingProcess isNil
		ifTrue: [^ self].
	steppingProcess terminate. 
	steppingProcess := nil.! !

!LightEmittingDiode methodsFor: 'configuring' stamp: 'Richo 10/25/2011 16:43'!
configureAnalog: aPin
	aPin deactivate.
	aPin setOutput! !

!LightEmittingDiode methodsFor: 'configuring' stamp: 'Richo 10/25/2011 15:47'!
configureDigital: aPin
	aPin setOutput! !

!LightEmittingDiode methodsFor: 'configuring' stamp: 'Richo 9/6/2011 13:22'!
deleteConfigurationAnalog: aPin
	aPin setInput! !

!LightEmittingDiode methodsFor: 'configuring' stamp: 'Richo 9/6/2011 11:57'!
deleteConfigurationDigital: aPin
	aPin setOutput! !

!LightEmittingDiode methodsFor: 'accessing' stamp: 'Richo 6/1/2010 14:23'!
value
	self controlAttaching;  reconfigureIfNecessary.
	^ pins first value! !

!LightEmittingDiode methodsFor: 'accessing' stamp: 'Richo 6/1/2010 14:23'!
value: aNumber 
	self controlAttaching;reconfigureIfNecessary.
	pins first value: aNumber! !

!Optocoupler methodsFor: 'configuring' stamp: 'Richo 10/25/2011 16:43'!
configureAnalog: aPin
	aPin setInput activate! !

!Optocoupler methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:54'!
deleteConfigurationAnalog: aPin
	aPin deactivate! !

!Optocoupler methodsFor: 'accessing' stamp: 'Richo 9/6/2011 12:54'!
value
	self controlAttaching; reconfigureIfNecessary.
	^pins first value! !

!OutputMode methodsFor: 'testing' stamp: 'Richo 9/7/2009 16:29'!
isOutput
^true! !

!OutputMode methodsFor: 'accessing' stamp: 'Richo 9/7/2009 16:34'!
nameSymbol
	^#output! !

!OutputMode methodsFor: 'refresing' stamp: 'Richo 4/30/2010 16:08'!
refreshModeOn: pinNumber using: anArduinoProtocol
	anArduinoProtocol digitalPin: pinNumber mode: anArduinoProtocol valueForOutputMode.
! !

!OutputMode methodsFor: 'refresing' stamp: 'Richo 4/30/2010 16:01'!
refreshValue: value on: pinNumber using: anArduinoProtocol
	anArduinoProtocol digitalWrite: pinNumber value: value! !

!Photoresistor methodsFor: 'configuring' stamp: 'Richo 10/25/2011 16:42'!
configureAnalog: aPin
	aPin setInput activate! !

!Photoresistor methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:10'!
deleteConfigurationAnalog: aPin
	aPin deactivate! !

!Photoresistor methodsFor: 'accessing' stamp: 'Richo 6/1/2010 14:24'!
value
	self controlAttaching; reconfigureIfNecessary.
	^pins first value! !

!PinMode methodsFor: 'testing' stamp: 'Richo 10/24/2011 15:08'!
isInput
^false! !

!PinMode methodsFor: 'testing' stamp: 'Richo 9/7/2009 16:29'!
isOutput
^false! !

!PinMode methodsFor: 'testing' stamp: 'Richo 10/24/2011 15:08'!
isPwm
^false! !

!PinMode methodsFor: 'testing' stamp: 'Richo 12/29/2011 18:52'!
isServo
^false! !

!PinMode methodsFor: 'accessing' stamp: 'Richo 9/7/2009 16:33'!
nameSymbol
^#undefined! !

!PinMode methodsFor: 'setting pins' stamp: 'Richo 4/30/2010 16:07'!
refreshModeOn: pinNumber using: anArduinoProtocol
	self subclassResponsibility! !

!PinMode methodsFor: 'setting pins' stamp: 'Richo 4/30/2010 16:00'!
refreshValue: value on: pinNumber using: anArduinoProtocol
	self subclassResponsibility! !

!PinMode class methodsFor: 'as yet unclassified' stamp: 'Richo 9/7/2009 16:23'!
new
^uniqueInstance ifNil: [uniqueInstance := self basicNew]! !

!Potentiometer methodsFor: 'configuring' stamp: 'Richo 10/25/2011 16:43'!
configureAnalog: aPin
	aPin setInput activate! !

!Potentiometer methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:10'!
deleteConfigurationAnalog: aPin
	aPin deactivate! !

!Potentiometer methodsFor: 'accessing' stamp: 'Richo 6/1/2010 14:24'!
value
	self controlAttaching; reconfigureIfNecessary.
	^ pins first value! !

!PwmLightEmittingDiode methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:10'!
configureDigital: aPin
	aPin mode: PwmMode new! !

!PwmLightEmittingDiode methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:10'!
deleteConfigurationDigital: aPin
	aPin setOutput! !

!PwmLightEmittingDiode methodsFor: 'accessing' stamp: 'Richo 6/1/2010 14:24'!
value
	self controlAttaching;  reconfigureIfNecessary.
	^ pins first value! !

!PwmLightEmittingDiode methodsFor: 'accessing' stamp: 'Richo 6/1/2010 15:06'!
value: aNumber 
	"aNumber can be 0 - 255"
	self controlAttaching;reconfigureIfNecessary.
	pins first value: (aNumber min: 255 max: 0)! !

!PwmMode methodsFor: 'testing' stamp: 'Richo 10/24/2011 15:08'!
isPwm
	^ true! !

!PwmMode methodsFor: 'accessing' stamp: 'Richo 4/30/2010 15:43'!
nameSymbol
	^#pwm! !

!PwmMode methodsFor: 'refreshing' stamp: 'Richo 4/30/2010 16:08'!
refreshModeOn: pinNumber using: anArduinoProtocol
	anArduinoProtocol digitalPin: pinNumber mode: anArduinoProtocol valueForPwmMode.
! !

!PwmMode methodsFor: 'refreshing' stamp: 'Richo 4/30/2010 16:03'!
refreshValue: value on: pinNumber using: anArduinoProtocol
	anArduinoProtocol analogWrite: pinNumber value: value! !

!Queue methodsFor: 'accessing' stamp: 'Richo 8/29/2011 15:13'!
flush
	list notEmpty ifTrue: [list := OrderedCollection new]! !

!Queue methodsFor: 'initialize-release' stamp: 'Richo 8/29/2011 15:10'!
initialize
	super initialize.
	list := OrderedCollection new.! !

!Queue methodsFor: 'accessing' stamp: 'Richo 8/29/2011 15:10'!
pop
	^ list removeFirst! !

!Queue methodsFor: 'printing' stamp: 'Richo 8/29/2011 14:17'!
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	list do: [:each | each printOn: aStream] separatedBy: [aStream nextPutAll: ', '].
	aStream nextPut: $)! !

!Queue methodsFor: 'accessing' stamp: 'Richo 8/29/2011 15:09'!
push: obj
	list addLast: obj! !

!Relay methodsFor: 'configuring' stamp: 'Richo 12/27/2011 16:10'!
configureAnalog: aPin
	aPin deactivate.
	aPin setOutput! !

!Relay methodsFor: 'configuring' stamp: 'Richo 12/27/2011 16:10'!
configureDigital: aPin
	aPin setOutput! !

!Relay methodsFor: 'configuring' stamp: 'Richo 12/27/2011 16:16'!
deleteConfigurationAnalog: aPin
	aPin value: 0.
	aPin setInput! !

!Relay methodsFor: 'configuring' stamp: 'Richo 12/27/2011 16:16'!
deleteConfigurationDigital: aPin
	aPin value: 0.
	aPin setOutput! !

!Relay methodsFor: 'accessing' stamp: 'Richo 12/27/2011 16:11'!
value
	self controlAttaching;  reconfigureIfNecessary.
	^ pins first value! !

!Relay methodsFor: 'accessing' stamp: 'Richo 12/27/2011 16:11'!
value: aNumber 
	self controlAttaching;reconfigureIfNecessary.
	pins first value: aNumber! !

!Servo methodsFor: 'accessing' stamp: 'Richo 6/1/2010 15:21'!
angle
	self controlAttaching; reconfigureIfNecessary.
	^pins first value! !

!Servo methodsFor: 'accessing' stamp: 'Richo 10/24/2011 15:13'!
angle: aSmallInteger 
	self controlAttaching; reconfigureIfNecessary.
	pins first value = aSmallInteger ifTrue: [^ self].
	pins first value: (aSmallInteger min: 180 max: 0)! !

!Servo methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:10'!
configureDigital: aPin
	aPin mode: ServoMode new.! !

!Servo methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:11'!
deleteConfigurationDigital: aPin
	aPin setOutput! !

!Servo methodsFor: 'initialize-release' stamp: 'Richo 4/30/2010 16:57'!
initialize
super initialize.! !

!ServoMode methodsFor: 'testing' stamp: 'Richo 12/29/2011 18:53'!
isServo
	^ true! !

!ServoMode methodsFor: 'accessing' stamp: 'Richo 9/7/2009 16:35'!
nameSymbol
	^#servo! !

!ServoMode methodsFor: 'refreshing' stamp: 'Richo 4/30/2010 16:13'!
refreshModeOn: pinNumber using: anArduinoProtocol
	anArduinoProtocol attachServoToPin: pinNumber;
						digitalPin: pinNumber mode: anArduinoProtocol valueForServoMode.
! !

!ServoMode methodsFor: 'refreshing' stamp: 'Richo 4/30/2010 16:43'!
refreshValue: value on: pinNumber using: anArduinoProtocol
	anArduinoProtocol servoOnPin: pinNumber angle: value! !

!StepperMotor methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:11'!
configureDigital: aPin
	aPin setOutput; value: 0
! !

!StepperMotor methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:11'!
deleteConfigurationDigital: aPin
	"Nothing to do here"
! !

!StepperMotor methodsFor: 'stepping' stamp: 'Richo 12/13/2012 15:49'!
doNextStep
	[self perform: stepMode.
	currentStep := currentStep + (isGoingForward ifTrue: [1] ifFalse: [-1])] 
		on: Error
		do: [200 milliSeconds asDelay wait]! !

!StepperMotor methodsFor: 'initialize-release' stamp: 'Richo 12/13/2012 15:48'!
finalize
	self stopSteppingProcess
! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 6/8/2010 17:05'!
goBackwards
	isGoingForward := false! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 6/8/2010 17:05'!
goForward
	isGoingForward := true! !

!StepperMotor methodsFor: 'step modes' stamp: 'Richo 12/13/2012 15:50'!
halfStepMode
	| values |
	values := (self halfStepModeSteps at: currentStep \\ 8 + 1).
	1 to: 4 do: [:i | (pins at: i) value: (values at: i)]! !

!StepperMotor methodsFor: 'step modes' stamp: 'Richo 6/8/2010 16:33'!
halfStepModeSteps
^#(
	#(1 0 0 0)
	#(1 1 0 0)
	#(0 1 0 0)
	#(0 1 1 0)
	#(0 0 1 0)
	#(0 0 1 1)
	#(0 0 0 1)
	#(1 0 0 1)
)! !

!StepperMotor methodsFor: 'initialize-release' stamp: 'Richo 12/13/2012 16:09'!
initialize
	super initialize.
	self finalizationRegistry add: self.
	stepTime := 100.
	isGoingForward := true.
	currentStep := 1.
	self setNormalMode! !

!StepperMotor methodsFor: 'accessing' stamp: 'Richo 12/13/2012 15:49'!
isGoingForward
	^ isGoingForward ! !

!StepperMotor methodsFor: 'accessing' stamp: 'Richo 12/13/2012 16:09'!
isRunning
	^ steppingProcess notNil! !

!StepperMotor methodsFor: 'accessing' stamp: 'Richo 12/13/2012 15:51'!
isUsingHalfStepMode
	^ stepMode = #waveDriveMode! !

!StepperMotor methodsFor: 'accessing' stamp: 'Richo 12/13/2012 15:51'!
isUsingNormalMode
	^ stepMode = #normalMode! !

!StepperMotor methodsFor: 'accessing' stamp: 'Richo 12/13/2012 15:51'!
isUsingWaveDriveMode
	^ stepMode = #waveDriveMode! !

!StepperMotor methodsFor: 'step modes' stamp: 'Richo 12/13/2012 15:50'!
normalMode
	| values |
	values := (self normalModeSteps at: currentStep \\ 4 + 1).
	1 to: 4 do: [:i | (pins at: i) value: (values at: i)]! !

!StepperMotor methodsFor: 'step modes' stamp: 'Richo 6/8/2010 16:32'!
normalModeSteps
^#(
	#(1 1 0 0)
	#(0 1 1 0)
	#(0 0 1 1)
	#(1 0 0 1)
)! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 6/8/2010 17:05'!
reverse
	isGoingForward := isGoingForward not! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 12/13/2012 15:50'!
setHalfStepMode
	stepMode := #halfStepMode! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 12/13/2012 15:50'!
setNormalMode
	stepMode := #normalMode! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 12/13/2012 15:50'!
setWaveDriveMode
	stepMode := #waveDriveMode! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 12/13/2012 16:09'!
start
	self controlAttaching;
		reconfigureIfNecessary;
		startSteppingProcess! !

!StepperMotor methodsFor: 'stepping' stamp: 'Richo 6/7/2010 18:20'!
startSteppingProcess
	steppingProcess notNil
		ifTrue: [^ self].
	steppingProcess := [[self step.
			(Delay forMilliseconds: self stepTime) wait] repeat]
				forkNamed: self asString ! !

!StepperMotor methodsFor: 'stepping' stamp: 'Richo 12/13/2012 16:09'!
step
	self doNextStep! !

!StepperMotor methodsFor: 'stepping' stamp: 'Richo 12/13/2012 15:49'!
stepTime
	^ stepTime! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 4/6/2011 11:06'!
stepTime: aNumber
	aNumber < 1 ifTrue: [^self error: 'Step time can''t be less than 1' translated].
	stepTime := aNumber.! !

!StepperMotor methodsFor: 'actions' stamp: 'Richo 12/13/2012 16:09'!
stop
	self controlAttaching;
		reconfigureIfNecessary;
		stopSteppingProcess! !

!StepperMotor methodsFor: 'stepping' stamp: 'Richo 6/7/2010 18:21'!
stopSteppingProcess
	steppingProcess isNil
		ifTrue: [^ self].
	steppingProcess terminate. 
	steppingProcess := nil.! !

!StepperMotor methodsFor: 'step modes' stamp: 'Richo 12/13/2012 15:50'!
waveDriveMode
	| values |
	values := (self waveDriveModeSteps at: currentStep \\ 4 + 1).
	1 to: 4 do: [:i | (pins at: i) value: (values at: i)]! !

!StepperMotor methodsFor: 'step modes' stamp: 'Richo 6/8/2010 16:32'!
waveDriveModeSteps
^#(
	#(1 0 0 0)
	#(0 1 0 0)
	#(0 0 1 0)
	#(0 0 0 1)
)! !

!Thermistor methodsFor: 'configuring' stamp: 'Richo 10/25/2011 16:43'!
configureAnalog: aPin
	aPin setInput activate! !

!Thermistor methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:11'!
deleteConfigurationAnalog: aPin
	aPin deactivate! !

!Thermistor methodsFor: 'accessing' stamp: 'Richo 6/1/2010 14:25'!
value
	self controlAttaching; reconfigureIfNecessary.
	^pins first value! !

!TiltSwitch methodsFor: 'configuring' stamp: 'Richo 10/25/2011 15:47'!
configureDigital: aPin
	aPin setInput! !

!TiltSwitch methodsFor: 'configuring' stamp: 'Richo 9/6/2011 12:12'!
deleteConfigurationDigital: aPin
	aPin setOutput! !

!TiltSwitch methodsFor: 'accessing' stamp: 'Richo 6/1/2010 14:25'!
value
self controlAttaching ; reconfigureIfNecessary .
^pins first value! !
ArduinoType initialize!
