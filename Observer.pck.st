'From Cuis 4.1 of 12 December 2012 [latest update: #1524] on 30 December 2012 at 7:26:35 pm'!
'Description Please enter a description for this package '!
!classDefinition: #Customer category: #Observer!
Object subclass: #Customer
	instanceVariableNames: 'customerName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Observer'!
!classDefinition: 'Customer class' category: #Observer!
Customer class
	instanceVariableNames: ''!

!classDefinition: #CustomerObserver category: #Observer!
Object subclass: #CustomerObserver
	instanceVariableNames: 'customer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Observer'!
!classDefinition: 'CustomerObserver class' category: #Observer!
CustomerObserver class
	instanceVariableNames: ''!


!Customer methodsFor: 'accessing' stamp: 'gsa 5/18/2003 09:24'!
customerName
	^customerName! !

!Customer methodsFor: 'accessing' stamp: 'gsa 5/18/2003 09:41'!
customerName: anObject 
	customerName := anObject.
	"El siguiente #changed: dispara el update del Observer"
	self changed: #customerName! !

!CustomerObserver methodsFor: 'as yet unclassified' stamp: 'gsa 5/18/2003 09:39'!
example
	| newName |
	customer := Customer new.
	customer addDependent: self.
	newName := FillInTheBlank request: 'Ingrese el Nuevo Nombre del Cliente:'.
	customer customerName: newName.
! !

!CustomerObserver methodsFor: 'as yet unclassified' stamp: 'gsa 5/18/2003 09:38'!
update: anAspectSymbol 
	| newName |
	anAspectSymbol = #customerName
		ifTrue: [newName := customer customerName.
			Transcript show: 'El nuevo nombre del cliente es: ' , newName;
				 cr]
! !
