'From Cuis 4.1 of 12 December 2012 [latest update: #1576] on 8 February 2013 at 7:21:42 pm'!
'Description Please enter a description for this package '!
!classDefinition: #SerialPort category: #'Cuis-SerialPort'!
Object subclass: #SerialPort
	instanceVariableNames: 'port baudRate stopBitsType parityType dataBits outputFlowControlType inputFlowControlType xOnByte xOffByte'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-SerialPort'!
!classDefinition: 'SerialPort class' category: #'Cuis-SerialPort'!
SerialPort class
	instanceVariableNames: ''!


!SerialPort commentStamp: '<historical>' prior: 0!
This class supports a simple interface to the serial ports of the underlying platform, if it supports serial ports. The mapping of port numbers to hardware ports is platform specific, but typically follows platform ordering conventions. For example, on the Macintosh, port 0 is the modem port and port 1 is the printer port, since in the programmers documentation these ports are referred to as ports A and B.
!

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:19'!
baudRate

	^ baudRate
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:29'!
baudRate: anInteger
	"Set the baud rate for this serial port."

	baudRate := anInteger.
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:19'!
dataBits

	^ dataBits
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:29'!
dataBits: anInteger
	"Set the number of data bits for this serial port to 5, 6, 7, or 8."

	dataBits := anInteger.
! !

!SerialPort methodsFor: 'initialization' stamp: 'jm 5/5/1998 15:49'!
initialize
	"Default port settings."

	port := nil.					"set when opened"
	baudRate := 9600.			"9600 baud"
	stopBitsType := 1.				"one stop bit"
	parityType := 0.				"no parity"
	dataBits := 8.					"8 bits"
	outputFlowControlType := 0.	"none"
	inputFlowControlType := 0.	"none"
	xOnByte := 19.				"ctrl-S"
	xOffByte := 24.				"ctrl-X"
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:21'!
inputFlowControlType

	^ inputFlowControlType
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:38'!
inputFlowControlType: anInteger
	"Set the type of input flow control, where:
		0 - none
		1 - XOn/XOff
		2 - hardware handshaking"

	inputFlowControlType := anInteger.
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:19'!
outputFlowControlType

	^ outputFlowControlType
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:38'!
outputFlowControlType: anInteger
	"Set the type of output flow control, where:
		0 - none
		1 - XOn/XOff
		2 - hardware handshaking"

	outputFlowControlType := anInteger.
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:19'!
parityType

	^ parityType
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:29'!
parityType: anInteger
	"Set the parity type for this serial port, where:
		0 - no parity
		1 - odd parity
		2 - even parity"

	parityType := anInteger.
! !

!SerialPort methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primClosePort: portNumber

	<primitive: 'primitiveSerialPortClose' module: 'SerialPlugin'>
	^ nil  "(DNS)"
	"self primitiveFailed."
! !

!SerialPort methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primOpenPort: portNumber baudRate: baud stopBitsType: stop
	parityType: parity dataBits: numDataBits
	inFlowControlType: inFlowCtrl outFlowControlType: outFlowCtrl
	xOnByte: xOn xOffByte: xOff

	<primitive: 'primitiveSerialPortOpen' module: 'SerialPlugin'>
	^ nil  "(DNS)"
! !

!SerialPort methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primReadPort: portNumber into: byteArray startingAt: startIndex count: count

	<primitive: 'primitiveSerialPortRead' module: 'SerialPlugin'>
	self primitiveFailed.
! !

!SerialPort methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primWritePort: portNumber from: byteArray startingAt: startIndex count: count

	<primitive: 'primitiveSerialPortWrite' module: 'SerialPlugin'>
	self primitiveFailed.
! !

!SerialPort methodsFor: 'printing' stamp: 'jm 5/1/1998 18:02'!
printOn: aStream

	aStream
		nextPutAll: 'SerialPort(';
		nextPutAll:
			(port ifNil: ['closed'] ifNotNil: ['#', port printString]);
		nextPutAll: ', ';
		print: baudRate; nextPutAll: ' baud, ';
		print: dataBits; nextPutAll: ' bits, ';
		nextPutAll: (#('1.5' '1' '2') at: stopBitsType + 1); nextPutAll: ' stopbits, ';
		nextPutAll: (#('no' 'odd' 'even') at: parityType + 1); nextPutAll: ' parity)'.
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:19'!
stopBitsType

	^ stopBitsType
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 18:02'!
stopBitsType: anInteger
	"Set the stop bits type for this serial port, where:
		0 - 1.5 stop bits
		1 - one stop bit
		2 - two stop bits"

	stopBitsType := anInteger.
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:20'!
xOffByte

	^ xOffByte
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:28'!
xOffByte: anInteger
	"Set the value of the XOff byte to be used if XOn/XOff flow control is enabled."

	xOffByte := anInteger.
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:20'!
xOnByte

	^ xOnByte
! !

!SerialPort methodsFor: 'settings' stamp: 'jm 5/1/1998 17:28'!
xOnByte: anInteger
	"Set the value of the XOn byte to be used if XOn/XOff flow control is enabled."

	xOnByte := anInteger.
! !
