'From Cuis 4.0 of 21 April 2012 [latest update: #1270] on 12 May 2012 at 12:31:16 pm'!
'Description Please enter a description for this package '!
!classDefinition: #GSAConverter category: #GSAConverter!
Object subclass: #GSAConverter
	instanceVariableNames: 'far cel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GSAConverter'!
!classDefinition: 'GSAConverter class' category: #GSAConverter!
GSAConverter class
	instanceVariableNames: ''!


!GSAConverter commentStamp: 'gsa 9/2/2005 13:30' prior: 0!
x := GSAConverter newx fahrenheitToCelsius!

!GSAConverter methodsFor: 'as yet unclassified' stamp: 'gsa 5/12/2012 09:40'!
fahrenheitToCelsius
	far := FillInTheBlank request: 'Ingrese la temperatura en grados F:'.
	far := far asInteger.
	cel := far - 32 / 1.8 roundTo: 0.01.
	PopUpMenu inform: 'La temperatura en centígrados es: ' , cel asString
	! !
