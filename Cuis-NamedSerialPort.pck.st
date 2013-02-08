'From Cuis 4.1 of 12 December 2012 [latest update: #1576] on 8 February 2013 at 7:03:30 pm'!
'Description Please enter a description for this package '!

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
close
	"Close the serial port. Do nothing if the port is not open."
	port
		ifNotNil: [port isString ifTrue:[self primClosePortByName: port]
 ifFalse:[self primClosePort:port]].
	port := nil! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
nextPutAll: aStringOrByteArray 
	"Send the given bytes out this serial port. The port must be
	open. "
	^ port isString
		ifTrue: [self
		primWritePortByName: port
		from: aStringOrByteArray
		startingAt: 1
		count: aStringOrByteArray size]
		ifFalse: [self
		primWritePort: port
		from: aStringOrByteArray
		startingAt: 1
		count: aStringOrByteArray size]
! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
openPort: portId 
	"Open the given serial port, using the settings specified by my
	instance variables."
	self close.
	portId isString
		ifTrue: [self
				primOpenPortByName: portId
				baudRate: baudRate
				stopBitsType: stopBitsType
				parityType: parityType
				dataBits: dataBits
				inFlowControlType: inputFlowControlType
				outFlowControlType: outputFlowControlType
				xOnByte: xOnByte
				xOffByte: xOffByte]
		ifFalse: [self
				primOpenPort: portId
				baudRate: baudRate
				stopBitsType: stopBitsType
				parityType: parityType
				dataBits: dataBits
				inFlowControlType: inputFlowControlType
				outFlowControlType: outputFlowControlType
				xOnByte: xOnByte
				xOffByte: xOffByte].
	port := portId! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
primClosePortByName: portName
	<primitive: 'primitiveSerialPortCloseByName' module:'SerialPlugin'>
	^ nil"(DNS)"
	"self primitiveFailed."! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
primOpenPortByName: portName baudRate: baud stopBitsType: stop parityType: parity dataBits: numDataBits inFlowControlType: inFlowCtrl outFlowControlType: outFlowCtrl xOnByte: xOn xOffByte: xOff 
	<primitive: 'primitiveSerialPortOpenByName' module:'SerialPlugin'>
	^ nil"(DNS)"! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
primReadPortByName: portName into: byteArray startingAt: startIndex count: count 
	<primitive: 'primitiveSerialPortReadByName' module:'SerialPlugin'>
	self primitiveFailed! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
primWritePortByName: portName from: byteArray startingAt: startIndex count: count 
	<primitive: 'primitiveSerialPortWriteByName' module:'SerialPlugin'>
	self primitiveFailed! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
readByteArray
	"Answer a ByteArray read from this serial port. Answer an
	empty ByteArray if no data is available. The port must be
	open. "
	| buf count |
	buf := ByteArray new: 1000.
	count := port isString
				ifTrue: [self
						primReadPortByName: port
						into: buf
						startingAt: 1
						count: buf size]
				ifFalse: [self
						primReadPort: port
						into: buf
						startingAt: 1
						count: buf size].
	^ buf copyFrom: 1 to: count! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:01'!
readInto: aStringOrByteArray startingAt: index 
	"Read data into the given String or ByteArray object starting at
	the given index, and answer the number of bytes read. Does
	not go past the end of the given String or ByteArray."
	^ port isString
				ifTrue: [self primReadPortByName: port
		into: aStringOrByteArray
		startingAt: index
		count: aStringOrByteArray size - index + 1]
				ifFalse: [self primReadPort: port
		into: aStringOrByteArray
		startingAt: index
		count: aStringOrByteArray size - index + 1].
		! !

!SerialPort methodsFor: '*Cuis-NamedSerialPort' stamp: 'gsa 2/8/2013 19:02'!
readString
	"Answer a String read from this serial port. Answer the empty
	String if no data is available. The port must be open."
	| buf count |
	buf := String new: 1000.
	count := port isString ifTrue:[self
				primReadPortByName: port
				into: buf
				startingAt: 1
				count: buf size.]
ifFalse:[self
				primReadPort: port
				into: buf
				startingAt: 1
				count: buf size.].
	^ buf copyFrom: 1 to: count! !
