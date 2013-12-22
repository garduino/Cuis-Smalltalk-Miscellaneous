'From Cuis 4.2 of 25 July 2013 [latest update: #1880] on 14 December 2013 at 8:20:33.55973 pm'!
'Description Please enter a description for this package'!
!provides: 'Banyan' 1 0!
!classDefinition: #MaBanyanError category: #'Banyan-Exceptions'!
ProtoObject subclass: #MaBanyanError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Exceptions'!
!classDefinition: 'MaBanyanError class' category: #'Banyan-Exceptions'!
MaBanyanError class
	instanceVariableNames: ''!

!classDefinition: #MaNoFileOperationsToPerform category: #'Banyan-Exceptions'!
MaBanyanError subclass: #MaNoFileOperationsToPerform
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Exceptions'!
!classDefinition: 'MaNoFileOperationsToPerform class' category: #'Banyan-Exceptions'!
MaNoFileOperationsToPerform class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanOsStrategy category: #'Banyan-OS Strategy'!
ProtoObject subclass: #MaBanyanOsStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-OS Strategy'!
!classDefinition: 'MaBanyanOsStrategy class' category: #'Banyan-OS Strategy'!
MaBanyanOsStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanLinuxStrategy category: #'Banyan-OS Strategy'!
MaBanyanOsStrategy subclass: #MaBanyanLinuxStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-OS Strategy'!
!classDefinition: 'MaBanyanLinuxStrategy class' category: #'Banyan-OS Strategy'!
MaBanyanLinuxStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanAixStrategy category: #'Banyan-OS Strategy'!
MaBanyanLinuxStrategy subclass: #MaBanyanAixStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-OS Strategy'!
!classDefinition: 'MaBanyanAixStrategy class' category: #'Banyan-OS Strategy'!
MaBanyanAixStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanWindowsStrategy category: #'Banyan-OS Strategy'!
MaBanyanOsStrategy subclass: #MaBanyanWindowsStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-OS Strategy'!
!classDefinition: 'MaBanyanWindowsStrategy class' category: #'Banyan-OS Strategy'!
MaBanyanWindowsStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanPackageInfo category: #'Banyan-Info'!
ProtoObject subclass: #MaBanyanPackageInfo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Info'!
!classDefinition: 'MaBanyanPackageInfo class' category: #'Banyan-Info'!
MaBanyanPackageInfo class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanWarning category: #'Banyan-Exceptions'!
ProtoObject subclass: #MaBanyanWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Exceptions'!
!classDefinition: 'MaBanyanWarning class' category: #'Banyan-Exceptions'!
MaBanyanWarning class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanTimeZoneWarning category: #'Banyan-Exceptions'!
MaBanyanWarning subclass: #MaBanyanTimeZoneWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Exceptions'!
!classDefinition: 'MaBanyanTimeZoneWarning class' category: #'Banyan-Exceptions'!
MaBanyanTimeZoneWarning class
	instanceVariableNames: ''!

!classDefinition: #MaCannotDetermineWhichIsNewerWarning category: #'Banyan-Exceptions'!
MaBanyanWarning subclass: #MaCannotDetermineWhichIsNewerWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Exceptions'!
!classDefinition: 'MaCannotDetermineWhichIsNewerWarning class' category: #'Banyan-Exceptions'!
MaCannotDetermineWhichIsNewerWarning class
	instanceVariableNames: ''!

!classDefinition: #MaDirectoryVsFileWarning category: #'Banyan-Exceptions'!
MaBanyanWarning subclass: #MaDirectoryVsFileWarning
	instanceVariableNames: 'deltaEntry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Exceptions'!
!classDefinition: 'MaDirectoryVsFileWarning class' category: #'Banyan-Exceptions'!
MaDirectoryVsFileWarning class
	instanceVariableNames: ''!

!classDefinition: #MaReplaceNewerWithOlderWarning category: #'Banyan-Exceptions'!
MaBanyanWarning subclass: #MaReplaceNewerWithOlderWarning
	instanceVariableNames: 'replaceOperation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Exceptions'!
!classDefinition: 'MaReplaceNewerWithOlderWarning class' category: #'Banyan-Exceptions'!
MaReplaceNewerWithOlderWarning class
	instanceVariableNames: ''!

!classDefinition: #MaDeltaDirectory category: #'Banyan-Deltas'!
ProtoObject subclass: #MaDeltaDirectory
	instanceVariableNames: 'directories union whereBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Deltas'!
!classDefinition: 'MaDeltaDirectory class' category: #'Banyan-Deltas'!
MaDeltaDirectory class
	instanceVariableNames: ''!

!classDefinition: #MaDeltaDirectoryEntry category: #'Banyan-Deltas'!
ProtoObject subclass: #MaDeltaDirectoryEntry
	instanceVariableNames: 'pathAndName entries'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Deltas'!
!classDefinition: 'MaDeltaDirectoryEntry class' category: #'Banyan-Deltas'!
MaDeltaDirectoryEntry class
	instanceVariableNames: ''!

!classDefinition: #MaFileOperation category: #'Banyan-Operations'!
ProtoObject subclass: #MaFileOperation
	instanceVariableNames: 'deltaDirectoryEntry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaFileOperation class' category: #'Banyan-Operations'!
MaFileOperation class
	instanceVariableNames: ''!

!classDefinition: #MaDualFileOperation category: #'Banyan-Operations'!
MaFileOperation subclass: #MaDualFileOperation
	instanceVariableNames: 'sourceRoot targetRoot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaDualFileOperation class' category: #'Banyan-Operations'!
MaDualFileOperation class
	instanceVariableNames: ''!

!classDefinition: #MaCopyFile category: #'Banyan-Operations'!
MaDualFileOperation subclass: #MaCopyFile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaCopyFile class' category: #'Banyan-Operations'!
MaCopyFile class
	instanceVariableNames: ''!

!classDefinition: #MaReplaceFile category: #'Banyan-Operations'!
MaDualFileOperation subclass: #MaReplaceFile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaReplaceFile class' category: #'Banyan-Operations'!
MaReplaceFile class
	instanceVariableNames: ''!

!classDefinition: #MaNullOperation category: #'Banyan-Operations'!
MaFileOperation subclass: #MaNullOperation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaNullOperation class' category: #'Banyan-Operations'!
MaNullOperation class
	instanceVariableNames: ''!

!classDefinition: #MaSingleFileOperation category: #'Banyan-Operations'!
MaFileOperation subclass: #MaSingleFileOperation
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaSingleFileOperation class' category: #'Banyan-Operations'!
MaSingleFileOperation class
	instanceVariableNames: ''!

!classDefinition: #MaDeleteDirectory category: #'Banyan-Operations'!
MaSingleFileOperation subclass: #MaDeleteDirectory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaDeleteDirectory class' category: #'Banyan-Operations'!
MaDeleteDirectory class
	instanceVariableNames: ''!

!classDefinition: #MaDeleteFile category: #'Banyan-Operations'!
MaSingleFileOperation subclass: #MaDeleteFile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaDeleteFile class' category: #'Banyan-Operations'!
MaDeleteFile class
	instanceVariableNames: ''!

!classDefinition: #MaMakeDirectory category: #'Banyan-Operations'!
MaSingleFileOperation subclass: #MaMakeDirectory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Operations'!
!classDefinition: 'MaMakeDirectory class' category: #'Banyan-Operations'!
MaMakeDirectory class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanBackup category: #'Banyan-Utility'!
Object subclass: #MaBanyanBackup
	instanceVariableNames: 'delta operations warnings os osScriptName timePrepared timeExecuted'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Utility'!
!classDefinition: 'MaBanyanBackup class' category: #'Banyan-Utility'!
MaBanyanBackup class
	instanceVariableNames: ''!

!classDefinition: #MaBanyanTestCase category: #'Banyan-Tests'!
TestCase subclass: #MaBanyanTestCase
	instanceVariableNames: 'deltaDir sourceDir targetDir ftpRootTestDir'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Banyan-Tests'!
!classDefinition: 'MaBanyanTestCase class' category: #'Banyan-Tests'!
MaBanyanTestCase class
	instanceVariableNames: ''!


!MaDirectoryVsFileWarning commentStamp: '<historical>' prior: 0!
File systems do not allow a file and directory of the same name in the same directory.  Whenever two directories are compared (which also includes when a backup is performed), if the entry in one is a directory and a file in the other, this warning is signaled.!

!MaDeltaDirectory commentStamp: 'cmm 4/13/2007 17:27' prior: 0!
I provide interrogation of the differences between two or more directories.  The directories specified in my constructor are analyzed from that point, down.  In other words, I would typically be used to compare two similar, but different, directories.  For example:

	MaDeltaDirectory directories:
		{ FileDirectory on: '/devl/data'.
		FileDirectory on: '/test/data' }

in which case the contents of these two 'data' directories would be compared.

The key to my function is the construction of my 'union', a Tree of MaDeltaDirectoryEntry's.  Each directory tree is traversed to build an in-memory tree model, then these trees are merged into one big tree.  Each node in the big tree is a MaDeltaDirectoryEntry which maintains an Array of the DirectoryEntry's from each Directory specified.  
The indices of the Arrays correspond to the indices of my directories.  If an entry was not present in one of the directories, the Array will have nil in that index.

For example, if our example data directories have:

in /devl/data:

	dir1
		file1	1K

in /test/data:

	dir1
		file1	2K
		file2 	3K

Then the union tree will be built as follows:

	/dir1 #(dir1 dir1)
		file1 #(1K  2K)
		file2 #(nil  3K)

This union, above, shows the tree of MaDeltaDirectoryEntry's which each contain a two-element Array.  The order of elements in the Array corresponds with the Directories #(/devl/data /test/data).  Within each Array is either a nil (if it was not present in that directory) or the FileDirectoryEntry which has all of the attributes for that entry (only the size is shown in the example above, for clarity).

Now that the union is built, my methods are useful for interrogating the differences, which is how the MaBackupUtility works.!

!MaDeltaDirectoryEntry commentStamp: 'cmm 3/2/2007 17:58' prior: 0!
I represent the difference for a single node in the tree that is the union of two directories.  My 'entries' are an Array of FileDirectoryEntry's representing my owning MaDeltaDirectory's corresponding directory (of its 'directories').

#entryAt: will answer the corresponding DirectoryEntry or nil if it didn't exist.

My #pathAndName is relative to my owning directory's.
!

!MaFileOperation commentStamp: 'cmm 3/23/2007 10:04' prior: 0!
MaBanyanBackup builds a collection of instances of my subclasses after analyzing deltas between directories and observed by the user before they say, "Go".!

!MaNullOperation commentStamp: '<historical>' prior: 0!
I am just a place-holder in the tree, I do not do anything to the filesystem.!

!MaDeleteFile commentStamp: 'cmm 12/7/2006 13:37' prior: 0!
I am an operation that deletes the file I specify.!

!MaMakeDirectory commentStamp: 'cmm 12/7/2006 13:39' prior: 0!
When executed, I assureExistence of my specified directory.!

!MaBanyanBackup commentStamp: 'cmm 4/13/2007 17:40' prior: 0!
I copy files and directories from one directory to another.  To use, first create an instance of me:

	myBackup := MaBackupUtility 
		source: sourceFileDirectoryOrServerDirectory
		target: targetFileDirectoryOrServerDirectory

All files in sourceFileDirectory, except those that do not meet the where: criteria, will be backed up.  If you wish to exclude certain files, you may do so with where:.  The first argument is an OrderedCollection of FileDirectory's leading to the current FileDirectoryEntry, the second argument.  Here are a couple of examples:

	"skip files that begin with an underscore character."
	myBackup where:
		[ : path : eachFileDirectoryEntry |
		eachFileDirectoryEntry name first ~= $_ ]

	"skip the entire temp directory tree."
	myBackup where:
		[ : path : eachFileDirectoryEntry |
		path noneSatisfy: [ : eachFileDirectory | eachFileDirectory pathParts includes: 'temp' ] ]

	"Copy only the directory structure, not any files."
	myBackup where:
		[ : path : eachFileDirectoryEntry |
		eachFileDirectoryEntry isDirectory ]

Next, specify what should be done about files that already exist in the target that match names in the source.  Click the links below for more information.

	- prepareToMergeSourceIntoTargetOverwritingNothing
	- prepareToMergeSourceIntoTargetOverwritingOldest
	- prepareToMakeTargetLikeSource

At this point, nothing has been done to the file system.  But you may wish to see exactly what will be done to verify this is what you want.  The methods in the 'view backup' category will do this.

Finally, when you're satisfied and ready to execute the backup, 

	myBackup execute

The backup executes in two phases:

	1) the non-copying operations
	2) the copying operations

The reason for this is the desire to preserve file timestamps when copying.  To do this, the copy operations are handled in one of two ways:

	1) generating a script to be executed by the underlying operating system
	2) copying the files via Squeak methods

The first approach is only possible under the following conditions:

	1) OSProcess is loaded
	2) The source and target directories are seen as locally-accessible filesystems by the underlying OS running the Banyan image.

Otherwise, the files will be copied via Squeak methods and the timestamps in the target will be the current date.!

!MaBanyanTestCase commentStamp: '<historical>' prior: 0!
Tests the Banyan backup functions.!

!DirectoryEntry methodsFor: '*banyan' stamp: 'gsa 12/14/2013 20:12'!
maAddTotalSize: anInteger 
	"This is only very convenient for generating the fileSize report."
	fileSize := fileSize + anInteger! !

!DirectoryEntry methodsFor: '*banyan' stamp: 'gsa 12/14/2013 20:12'!
maTotalSize
	^ self fileSize ! !

!FileDirectory methodsFor: '*banyan-size-report' stamp: 'gsa 12/14/2013 20:14'!
maOpenSizeTreeForEntriesLargerThan: sizeThreshold 
	(Workspace new
		contents: (self maSizeReportForEntriesLargerThan: sizeThreshold) ;
		yourself) openLabel: 'Sizes larger than ' , sizeThreshold maAsBytesDescription, ' from ' , self fullName! !

!FileDirectory methodsFor: '*banyan-size-report' stamp: 'gsa 12/14/2013 20:14'!
maPrintSizeReportForEntriesLargerThan: sizeThreshold on: aWriteStream 
	"Print my total space utililization, along with the utilization of all of my subdirectories (and files) that exceed sizeThreshold (which is specified in bytes)."
	(self maSizeTreeForEntriesLargerThan: sizeThreshold) depthFirstDo: 
		[ : path | 
		aWriteStream
			cr ;
			tab: path size - 1 ;
			maPrint: path last maTotalSize maAsBytesDescription ;
			space ;
			maPrint: path last name ]! !

!FileDirectory methodsFor: '*banyan-size-report' stamp: 'gsa 12/14/2013 20:15'!
maSizeReportForEntriesLargerThan: sizeThreshold 
	""
	^ String streamContents: 
		[ : stream | 
		self 
			maPrintSizeReportForEntriesLargerThan: sizeThreshold
			on: stream ]! !

!FileDirectory methodsFor: '*banyan-size-report' stamp: 'gsa 12/14/2013 20:17'!
maSizeTree
	| tree |
	tree := MaIdentityTree new sortBlock: [ : a : b | a maTotalSize > b maTotalSize ].
	self directoryTreeDo: 
		[ : entries | 
		| parentEntry |
		(tree includes: entries first) ifFalse: [ tree add: entries first ].
		parentEntry := entries size > 1 ifTrue: [ entries at: entries size - 1 ].
		tree 
			add: entries last
			asChildOf: parentEntry.
		tree 
			pathFrom: parentEntry
			do: [ : eachParentEntry | eachParentEntry maAddTotalSize: entries last fileSize ] ].
	^ tree reSort; yourself! !

!FileDirectory methodsFor: '*banyan-size-report' stamp: 'gsa 12/14/2013 20:17'!
maSizeTreeForEntriesLargerThan: sizeThreshold 
	^ self maSizeTree selectPaths: [ : path | path last maTotalSize > sizeThreshold ]! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/2/2007 12:10'!
copyCommand
	self subclassResponsibility ! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/1/2007 04:34'!
deleteDirectoryCommand
	self subclassResponsibility ! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/1/2007 04:31'!
deleteFileCommand
	self subclassResponsibility ! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 1/9/2008 12:07'!
executeCopyScript: fullyQualifiedScriptName
	self subclassResponsibility ! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/1/2007 04:36'!
makeDirectoryCommand
	self subclassResponsibility ! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 1/9/2008 12:39'!
osScriptName
	self subclassResponsibility! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/2/2007 12:03'!
write: aMaFileOperation on: aStream 
	aMaFileOperation 
		writeCommandOn: aStream
		for: self! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/5/2007 12:33'!
writeCopyCommandFrom: sourceName to: targetName on: aStream 
	aStream
		cr ;
		nextPutAll: self copyCommand ;
		nextPutAll: ' "' ;
		nextPutAll: sourceName ;
		nextPutAll: '" "' ;
		nextPutAll: targetName ;
		nextPutAll: '"'! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/5/2007 12:34'!
writeDeleteDirectoryCommandAt: fullName on: aStream 
	aStream
		cr ;
		nextPutAll: self deleteDirectoryCommand ;
		nextPutAll: ' "' ;
		nextPutAll: fullName ;
		nextPutAll: '"'! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/5/2007 12:34'!
writeDeleteFileCommandAt: fullName on: aStream 
	aStream
		cr ;
		nextPutAll: self deleteFileCommand ;
		nextPutAll: ' "' ;
		nextPutAll: fullName ;
		nextPutAll: '"' ! !

!MaBanyanOsStrategy methodsFor: 'script building' stamp: 'cmm 2/5/2007 12:35'!
writeMakeDirectoryCommandAt: fullName on: aStream 
	aStream
		cr ;
		nextPutAll: self makeDirectoryCommand ;
		nextPutAll: ' "' ;
		nextPutAll: fullName ;
		nextPutAll: '" '! !

!MaBanyanLinuxStrategy methodsFor: 'script building' stamp: 'cmm 2/11/2009 13:26'!
copyCommand
	^ 'cp -pv'! !

!MaBanyanLinuxStrategy methodsFor: 'script building' stamp: 'cmm 3/21/2007 17:17'!
deleteDirectoryCommand
	^ 'rm -rf'! !

!MaBanyanLinuxStrategy methodsFor: 'script building' stamp: 'cmm 1/20/2009 11:56'!
deleteFileCommand
	^ 'rm -f'! !

!MaBanyanLinuxStrategy methodsFor: 'script building' stamp: 'cmm 2/11/2009 13:28'!
executeCopyScript: fullyQualifiedScriptName 
	OSProcess command: 'chmod 500 ''' , fullyQualifiedScriptName , ''''.
	1 second asDelay wait.
	OSProcess command: 'xterm -bg black -fg white -cr red -fn 9x15 -e ''' , fullyQualifiedScriptName , ''''! !

!MaBanyanLinuxStrategy methodsFor: 'script building' stamp: 'cmm 1/20/2009 11:56'!
makeDirectoryCommand
	^ 'mkdir -m 770'! !

!MaBanyanLinuxStrategy methodsFor: 'script building' stamp: 'cmm 1/9/2008 12:39'!
osScriptName
	^ '_banyanCopy' , UUID new asString36! !

!MaBanyanLinuxStrategy methodsFor: 'script building' stamp: 'cmm 1/20/2009 11:57'!
writeMakeDirectoryCommandAt: fullName on: aStream 
	super 
		writeMakeDirectoryCommandAt: fullName
		on: aStream.
"Must be able to write directories, but couldn't get umask to work across Samba..  :-("
"	OSProcess command: 'chmod g+rw ''' , fullName , ''''"! !

!MaBanyanAixStrategy methodsFor: 'as yet unclassified' stamp: 'cmm 8/21/2007 14:38'!
copyCommand
	^ 'rcp'! !

!MaBanyanWindowsStrategy methodsFor: 'script building' stamp: 'cmm 2/2/2007 12:10'!
copyCommand
	^ 'copy'! !

!MaBanyanWindowsStrategy methodsFor: 'script building' stamp: 'cmm 2/1/2007 04:33'!
deleteDirectoryCommand
	^ 'rmdir'! !

!MaBanyanWindowsStrategy methodsFor: 'script building' stamp: 'cmm 2/1/2007 04:32'!
deleteFileCommand
	^ 'del'! !

!MaBanyanWindowsStrategy methodsFor: 'script building' stamp: 'cmm 1/9/2008 12:07'!
executeCopyScript: fullyQualifiedScriptName 
	OSProcess command: fullyQualifiedScriptName! !

!MaBanyanWindowsStrategy methodsFor: 'script building' stamp: 'cmm 2/1/2007 04:36'!
makeDirectoryCommand
	^ 'mkdir'! !

!MaBanyanWindowsStrategy methodsFor: 'script building' stamp: 'cmm 1/9/2008 12:39'!
osScriptName
	^ String streamContents: 
		[ : stream | 
		stream
			maPrint: '_banyanCopy' ;
			maPrint: UUID new asString36 ;
			maPrint: '.bat' ]! !

!MaBanyanPackageInfo methodsFor: 'initialize-release' stamp: 'cmm 5/25/2012 10:31'!
initialize
	super initialize.
	self postscript: '(Smalltalk  hasClassNamed: #MauiDomainMorph) ifTrue: [BanyanBackup maui]'! !

!MaBanyanPackageInfo methodsFor: 'overriding' stamp: 'cmm 11/9/2010 22:49'!
resourceNames
	^ {'Banyan.MauiFamily'}! !

!MaBanyanPackageInfo class methodsFor: 'overriding' stamp: 'cmm 11/9/2010 22:07'!
packageName
	^ 'Banyan'! !

!MaBanyanWarning methodsFor: 'printing' stamp: 'cmm 1/31/2007 12:12'!
printOn: aStream
	self maPrintAbbreviatedOn: aStream! !

!MaBanyanWarning methodsFor: 'printing' stamp: 'cmm 4/10/2007 13:34'!
printUserInformationOn: aTextStream 
	aTextStream nextPutAll: messageText! !

!MaDirectoryVsFileWarning methodsFor: 'accessing' stamp: 'cmm 1/22/2007 12:56'!
deltaEntry
	^deltaEntry! !

!MaDirectoryVsFileWarning methodsFor: 'accessing' stamp: 'cmm 1/22/2007 12:56'!
deltaEntry: aMaDeltaDirectoryEntry
	deltaEntry := aMaDeltaDirectoryEntry! !

!MaDirectoryVsFileWarning methodsFor: 'printing' stamp: 'cmm 1/31/2007 12:17'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	aStream
		nextPutAll: 'a ' ;
		maPrint: self class ;
		space.
	deltaEntry maPrintAbbreviatedOn: aStream! !

!MaDirectoryVsFileWarning methodsFor: 'printing' stamp: 'cmm 3/23/2007 09:51'!
printUserInformationOn: aTextStream
	aTextStream nextPutAll: deltaEntry pathAndNameString; nextPutAll: ' is a directory in one place, and a file in another.  No action will be taken for this entry.'! !

!MaDirectoryVsFileWarning class methodsFor: 'create' stamp: 'cmm 1/22/2007 12:55'!
deltaEntry: aMaDeltaDirectoryEntry 
	^ (self new)
		deltaEntry: aMaDeltaDirectoryEntry ;
		yourself! !

!MaReplaceNewerWithOlderWarning methodsFor: 'overriding' stamp: 'cmm 1/12/2010 15:00'!
defaultAction
	^ self resume: true! !

!MaReplaceNewerWithOlderWarning methodsFor: 'printing' stamp: 'cmm 1/30/2007 12:30'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	aStream
		space ;
		maPrint: replaceOperation! !

!MaReplaceNewerWithOlderWarning methodsFor: 'printing' stamp: 'cmm 3/27/2007 12:39'!
printUserInformationOn: aTextStream 
	aTextStream
		nextPutAll: 'The newer version of ' ;
		nextPutAll: replaceOperation pathAndNameString ;
		nextPutAll: ' in the target directory will be replaced by the older version in the source directory.'! !

!MaReplaceNewerWithOlderWarning methodsFor: 'accessing' stamp: 'cmm 1/30/2007 12:26'!
replaceOperation
	^replaceOperation! !

!MaReplaceNewerWithOlderWarning methodsFor: 'accessing' stamp: 'cmm 1/30/2007 12:27'!
replaceOperation: MaReplaceFile
	replaceOperation := MaReplaceFile! !

!MaReplaceNewerWithOlderWarning class methodsFor: 'create' stamp: 'cmm 1/30/2007 12:28'!
replaceOperation: aMaReplaceFile
	^ (self new)
		replaceOperation: aMaReplaceFile ;
		yourself! !

!MaDeltaDirectory methodsFor: 'initialize-release' stamp: 'cmm 3/28/2010 12:33'!
buildUnion
	| unionMap |
	unionMap := MaBanyanBackup dictionaryClass new.
	union := MaTree new.
	'Building union...' 
		displayProgressAt: Display center
		from: 0
		to: directories size
		during: 
			[ : bar | 
			directories withIndexDo: 
				[ : eachDirectory : dirIndex | 
				bar value: dirIndex - 1.
				eachDirectory directoryTreeDo: 
					[ : path | 
					(whereBlock value: path) ifTrue: 
						[ | parentEntry parentPathAndName childEntry childPathAndName relevantPath |
						parentEntry := nil.
						"We want to only compare the contents of the main paths selected, not including the parent names themselves."
						relevantPath := path allButFirst.
						childPathAndName := Array streamContents: 
							[ : stream | 
							relevantPath withIndexDo: [ : eachDirectoryEntry : pathIndex | stream nextPut: eachDirectoryEntry name utf8ToIso ] ].
						relevantPath size > 1 ifTrue: 
							[ parentPathAndName := childPathAndName allButLast.
							parentEntry := unionMap 
								at: parentPathAndName
								ifAbsentPut: 
									[ MaDeltaDirectoryEntry 
										size: directories size
										pathAndName: parentPathAndName ] ].
						childPathAndName ifNotEmpty: 
							[ childEntry := unionMap 
								at: childPathAndName
								ifAbsentPut: 
									[ MaDeltaDirectoryEntry 
										size: directories size
										pathAndName: childPathAndName ].
							childEntry 
								entryAt: dirIndex
								put: path last.
							union 
								add: childEntry
								asChildOf: parentEntry ] ] ] ] ]! !

!MaDeltaDirectory methodsFor: 'initialize-release' stamp: 'cmm 12/27/2007 10:40'!
cleanUp
	directories do: [ : each | each isRemoteDirectory ifTrue: [ each quitClient ] ]! !

!MaDeltaDirectory methodsFor: 'private' stamp: 'cmm 12/27/2007 15:11'!
dictionaryClass
	^ (Smalltalk hasClassNamed: #MaDictionary) 
		ifTrue: [ Smalltalk classNamed: #MaDictionary ]
		ifFalse: [ Dictionary ]! !

!MaDeltaDirectory methodsFor: 'enumerate' stamp: 'cmm 3/2/2007 17:57'!
differencesDo: oneArgBlock 
	"Evaluate oneArgBlock for any of my MaDeltaDirectoryEntry's that have an entry in only one of my directories.  The argument is the MaDeltaDirectoryEntry whose individual entries are different from each other."
	self union do: 
		[ : eachDeltaDirectoryEntry | 
		eachDeltaDirectoryEntry ifDifferent: [ oneArgBlock value: eachDeltaDirectoryEntry ] ]! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 1/3/2007 12:30'!
directoryAt: anInteger
	^ directories at: anInteger! !

!MaDeltaDirectory methodsFor: 'testing' stamp: 'cmm 4/6/2007 12:46'!
hasLocalAndRemote
	^ self hasLocalDirectory and: [ self hasRemoteDirectory ]! !

!MaDeltaDirectory methodsFor: 'testing' stamp: 'cmm 4/6/2007 12:45'!
hasLocalDirectory
	^ directories anySatisfy: [ : each | each isRemoteDirectory not ]! !

!MaDeltaDirectory methodsFor: 'testing' stamp: 'cmm 3/23/2007 10:38'!
hasRemoteDirectory
	^ directories anySatisfy: [ : each | each isRemoteDirectory ]! !

!MaDeltaDirectory methodsFor: 'initialize-release' stamp: 'cmm 7/5/2010 12:11'!
initialize
	super initialize.
	whereBlock := [ : path | true ]! !

!MaDeltaDirectory methodsFor: 'initialize-release' stamp: 'cmm 3/28/2010 11:22'!
initializeUnion
	"parent name"
	self hasRemoteDirectory ifTrue: [ self class checkTimeZone ].
	(self source isCaseSensitive and: [ self target isCaseSensitive not ]) ifTrue: 
		[ MaBanyanWarning signal: 'The specified source directory is case-sensitive, but the target is not.  Therefore, source entries within the same directory that differ only by case cannot *both* be copied to the target.  If this situation exists, only one or the other will be copied.' ].
	[ self buildUnion ] ensure: [ self cleanUp ]! !

!MaDeltaDirectory methodsFor: 'private' stamp: 'cmm 12/21/2007 17:10'!
isMixedCase
	^ {  (self source isCaseSensitive). (self target isCaseSensitive)  } asSet size > 1! !

!MaDeltaDirectory methodsFor: 'enumerate' stamp: 'cmm 12/29/2006 16:38'!
newerIn: directoryIndex do: twoArgBlock 
	"Value twoArgBlock for each entry in my directory specified by directoryIndex which is the newest of all my directories."
	(directories size > 2 and: [ directoryIndex > 1 ]) ifTrue: 
		[ self error: 'only supported with two directories or first directory'	"because if directoryIndex=3 it could possibly tie for newest with, say, the first directory, and MaDeltaDirectoryEntry just values twoArgBlock with the *first* occurrence of the newest.." ].
	self newestDo: 
		[ : eachDeltaDirectoryEntry : entryIndex | 
		entryIndex = directoryIndex ifTrue: 
			[ twoArgBlock 
				value: eachDeltaDirectoryEntry
				value: entryIndex ] ]! !

!MaDeltaDirectory methodsFor: 'enumerate' stamp: 'cmm 2/26/2007 16:19'!
newestDo: twoArgBlock 
	"Evaluate twoArgBlock for each new or newer entry in one of my directories.  The first argument is the MaDeltaDirectoryEntry, the second is the index of its entry (and my directory) which is the newest.  If all entries are present and have the same modificationTime, then skip that delta-entry entirely."
	self union do: [ : eachDeltaEntry | eachDeltaEntry newestDo: twoArgBlock ]! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 2/26/2007 16:22'!
reset
	union := nil! !

!MaDeltaDirectory methodsFor: 'initialize-release' stamp: 'cmm 4/6/2007 13:48'!
setDirectories: anArray 
	anArray asSet size < anArray size ifTrue: [ MaUserError signal: 'Must not specify the same directory more than once.' ].
	directories := anArray.
	"Set keepAlive to true, otherwise ServerDirectory quits the FTP after every single call, which would result in horrible performance."
	directories do: [ : each | each isRemoteDirectory ifTrue: [ each keepAlive: true ] ]! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 1/24/2007 12:50'!
size
	^ directories size! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 5/24/2012 22:11'!
skipFilesBeginningWithAnyOf: stringsArray 
	self where: 
		[ : eachPath | 
		stringsArray noneSatisfy: 
			[ : eachUnwantedPrefix | 
			eachPath anySatisfy: 
				[ : eachDirectoryEntry | 
				eachDirectoryEntry name
					maBeginsWith: eachUnwantedPrefix
					caseSensitive: true ] ] ]! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 2/27/2007 12:22'!
source
	^ self directoryAt: self class sourceIndex ! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 2/27/2007 12:22'!
target
	^ self directoryAt: self class targetIndex ! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 2/26/2007 16:22'!
union
	^ union ifNil: 
		[ self initializeUnion.
		union ]! !

!MaDeltaDirectory methodsFor: 'access' stamp: 'cmm 4/10/2007 17:22'!
where: oneArgBlock
	"Apply a filter to my union.  The argument to oneArgBlock is the MaDeltaDirectoryEntry of each node of the union tree."
	whereBlock := oneArgBlock.
	self reset! !

!MaDeltaDirectory class methodsFor: 'validating' stamp: 'cmm 12/21/2007 10:05'!
checkTimeZone
	DateAndTime localTimeZone offset = TimeZone default offset ifTrue: 
		[ MaBanyanTimeZoneWarning signal: 'Your TimeZone is set to UTC (offset 0).  If this really is your timeZone, you may proceed.  If not, file age calculations may be incorrect.' ]! !

!MaDeltaDirectory class methodsFor: 'create' stamp: 'cmm 12/29/2006 14:31'!
directories: anArray 
	^ (self new)
		setDirectories: anArray ;
		yourself! !

!MaDeltaDirectory class methodsFor: 'accessing' stamp: 'cmm 2/27/2007 12:19'!
sourceIndex
	^ 1! !

!MaDeltaDirectory class methodsFor: 'accessing' stamp: 'cmm 2/27/2007 12:19'!
targetIndex
	^ 2! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 2/14/2007 13:26'!
= aMaDeltaDirectoryEntry
	self species = aMaDeltaDirectoryEntry species
		ifFalse: [ ^ false].
	^ pathAndName = aMaDeltaDirectoryEntry pathAndName! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 2/23/2007 17:22'!
checkIsMixedComposition
	"If I am mixed composition of directories and files, signal an appropriate warning."
	self isMixedComposition ifTrue: 
		[ (MaDirectoryVsFileWarning deltaEntry: self)
			messageText: 'A file and directory share the same name in the same relative location.' ;
			signal ]! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 12/29/2006 14:48'!
entryAt: anInteger 
	^ entries at: anInteger! !

!MaDeltaDirectoryEntry methodsFor: 'private' stamp: 'cmm 1/19/2007 12:39'!
entryAt: indexInteger put: aDirectoryEntry 
	entries 
		at: indexInteger
		put: aDirectoryEntry! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 7/30/2012 16:40'!
hasDifferences
	| modificationTimes |
	modificationTimes := self modificationTimes.
	"If all present and all directories, then don't account for any differences."
	(entries allSatisfy:
		[ : each | each notNil and: [ each isDirectory ] ]) ifTrue: [ ^ false ].
	^ modificationTimes asSet size > 1 and:
		[ modificationTimes anyOne = 0
			ifTrue:
				[ MaCannotDetermineWhichIsNewerWarning signal: 'Squeak cannot determine the modificationTime of ' , self pathAndNameString , ' possibly because these files are very large.  They will be ignored.'.
				false ]
			ifFalse:
				[ "Only differences > 1 second because SAMBA sucks."
				(modificationTimes max-modificationTimes min) > 1 "second" ] ]! !

!MaDeltaDirectoryEntry methodsFor: 'private' stamp: 'cmm 2/14/2007 13:27'!
hash
	^ pathAndName hash! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 3/2/2007 17:53'!
ifDifferent: aBlock 
	"Value aBlock if my entries are different."
	self isMixedComposition ifTrue: [ ^ self ].
	self hasDifferences ifTrue: [ ^ aBlock value ]! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 5/25/2012 13:54'!
indexOfNewest
	"Answer the index of the directory with the newest. If any of my
	entries are directories, or if all are files with the same
	modificationDate, answer 0."
	self isMixedComposition ifTrue: [ ^ 0 ].
	self ifDifferent:
		[ | modificationTimes veryLargeFileIndex |
		modificationTimes := self modificationTimes.
		"As of 5/25/2012, Squeak VM reports 0 for modificationTime on any file larger than 2GB -- so we need a number which can differentiate between >2GB and not-present at all.  If we find a >2GB and the other one is <2GB, assume the larger is newer.  UNFORTUNATE BUG:  If they are both >2GB, we have no way to know so we just assume they're the same even if they aren't."
		^ (veryLargeFileIndex := modificationTimes indexOf: 0) = 0
			ifTrue: [ modificationTimes indexOf: modificationTimes max ]
			ifFalse: [ veryLargeFileIndex ] ].
	^ 0! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 2/23/2007 17:21'!
isMixedComposition
	"Answer whether, at my relative pathAndName, my directories contain a mixed composition of files and directories."
	| composition |
	composition := Set new.
	entries do: [ : e | e ifNotNil: [ composition add: e isDirectory ] ].
	^ composition size > 1! !

!MaDeltaDirectoryEntry methodsFor: 'printing' stamp: 'cmm 3/23/2007 09:51'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	aStream nextPutAll: self pathAndNameString! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 5/25/2012 11:31'!
modificationTimes
	^ entries collect: 
		[ : each | 
		each 
			ifNil: [ -1 ]
			ifNotNil: [ each modificationTime ] ]! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 4/10/2007 17:24'!
name
	^ pathAndName last! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 3/2/2007 17:52'!
newestDo: twoArgBlock 
	"If we have a mixture of files and directories, then there is a different notion for that name; so just issue a warning and skip."
	self isMixedComposition ifTrue: [ ^ self ].
	self ifDifferent: 
		[ | modificationTimes |
		modificationTimes := self modificationTimes.
		twoArgBlock 
			value: self
			value: (modificationTimes indexOf: modificationTimes max) ]! !

!MaDeltaDirectoryEntry methodsFor: 'initialize-release' stamp: 'cmm 1/19/2007 12:39'!
numberOfEntries: anInteger
	entries := Array new: anInteger! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 4/11/2007 15:08'!
pathAndName
	"An Array of the Strings that are my path-parts.  All but the last element will always be a directory.  The last element is the (local) name of the directory or file itself."
	^pathAndName! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 4/11/2007 15:08'!
pathAndName: anArray
	pathAndName := anArray! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 3/22/2007 18:14'!
pathAndNameString
	^ String streamContents: 
		[ : stream | 
		pathAndName do: 
			[ : each | 
			stream
				nextPut: FileDirectory pathNameDelimiter ;
				nextPutAll: each ] ]! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 2/15/2007 12:13'!
source
	^ self entryAt: self sourceIndex! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 2/27/2007 12:20'!
sourceIndex
	^ MaDeltaDirectory sourceIndex! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 2/15/2007 12:16'!
sourceIsNewer
	^ self indexOfNewest = self sourceIndex! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 2/15/2007 12:55'!
sourceIsOlder
	^ self indexOfNewest = self targetIndex! !

!MaDeltaDirectoryEntry methodsFor: 'testing' stamp: 'cmm 5/25/2012 11:42'!
sourceIsPresent
	^ (self modificationTimes at: self sourceIndex) > -1! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 2/15/2007 12:13'!
target
	^ self entryAt: self targetIndex! !

!MaDeltaDirectoryEntry methodsFor: 'accessing' stamp: 'cmm 2/27/2007 12:20'!
targetIndex
	^ MaDeltaDirectory targetIndex! !

!MaDeltaDirectoryEntry class methodsFor: 'create' stamp: 'cmm 4/11/2007 15:35'!
size: anInteger pathAndName: anArray 
	^ (self new)
		numberOfEntries: anInteger ;
		pathAndName: anArray ;
		yourself! !

!MaFileOperation methodsFor: 'printing' stamp: 'cmm 3/23/2007 13:05'!
commandWithRelativeName
	^ String streamContents: 
		[ : stream | 
		stream
			nextPutAll: self shortOperationName ;
			space ;
			nextPutAll: self pathAndNameString ]! !

!MaFileOperation methodsFor: 'accessing' stamp: 'cmm 4/18/2007 12:42'!
deltaDirectoryEntry
	^ deltaDirectoryEntry ! !

!MaFileOperation methodsFor: 'initialize-release' stamp: 'cmm 4/18/2007 12:30'!
deltaDirectoryEntry: aMaDeltaDirectoryEntry
	deltaDirectoryEntry := aMaDeltaDirectoryEntry! !

!MaFileOperation methodsFor: 'execute' stamp: 'cmm 12/7/2006 13:39'!
execute
	self subclassResponsibility! !

!MaFileOperation methodsFor: 'testing' stamp: 'cmm 2/1/2007 05:42'!
isCopy
	^ false! !

!MaFileOperation methodsFor: 'testing' stamp: 'cmm 2/21/2007 13:08'!
isMutative
	^ true! !

!MaFileOperation methodsFor: 'accessing' stamp: 'cmm 4/18/2007 12:28'!
leafName
	^ self pathAndName last! !

!MaFileOperation methodsFor: 'printing' stamp: 'cmm 3/23/2007 13:05'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	aStream
		nextPutAll: self shortOperationName ;
		space ;
		nextPutAll: self pathAndNameString! !

!MaFileOperation methodsFor: 'accessing' stamp: 'cmm 3/23/2007 10:51'!
parentLeafFrom: rootDirectory 
	"Answer a (fully-qualified) directory (either FileDirectory or ServerDirectory) based on my leaf pathAndName."
	^ self path 
		inject: rootDirectory
		into: [ : dir : each | dir on: (dir fullNameFor: each) ]! !

!MaFileOperation methodsFor: 'accessing' stamp: 'cmm 1/2/2010 12:55'!
path
	^ self pathAndName 
		copyFrom: 1
		to: self pathAndName size - 1! !

!MaFileOperation methodsFor: 'accessing' stamp: 'cmm 4/18/2007 12:26'!
pathAndName
	^ deltaDirectoryEntry pathAndName! !

!MaFileOperation methodsFor: 'accessing' stamp: 'cmm 4/18/2007 12:27'!
pathAndNameString
	^ String streamContents: 
		[ : stream | 
		self pathAndName do: 
			[ : each | 
			stream
				nextPut: FileDirectory pathNameDelimiter ;
				nextPutAll: each ] ]! !

!MaFileOperation methodsFor: 'reporting' stamp: 'cmm 3/27/2007 12:37'!
printProposedTargetTextOn: aTextStream
	aTextStream 
		withAttributes: self reportAttributes
		do: [ aTextStream nextPutAll: self leafName ]! !

!MaFileOperation methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:32'!
reportAttributes
	^ self class reportAttributes! !

!MaFileOperation methodsFor: 'accessing' stamp: 'cmm 2/26/2007 16:57'!
shortOperationName
	^ self species shortOperationName! !

!MaFileOperation methodsFor: 'script building' stamp: 'cmm 2/1/2007 04:55'!
writeCommandOn: aStream for: aMaOsFileManagerStrategy 
	self subclassResponsibility ! !

!MaFileOperation class methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:32'!
reportAttributes
	^ {}! !

!MaFileOperation class methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:58'!
shortOperationName
	^ self name 
		copyFrom: 3
		to: self name size! !

!MaDualFileOperation methodsFor: 'initialize-release' stamp: 'cmm 4/18/2007 12:31'!
setSourceRoot: sourceRootDirectory targetRoot: targetRootDirectory deltaDirectoryEntry: aMaDeltaDirectoryEntry 
	sourceRoot := sourceRootDirectory.
	targetRoot := targetRootDirectory.
	self deltaDirectoryEntry: aMaDeltaDirectoryEntry! !

!MaDualFileOperation methodsFor: 'accessing' stamp: 'cmm 3/23/2007 12:06'!
sourceLeafParent
	^ self parentLeafFrom: sourceRoot! !

!MaDualFileOperation methodsFor: 'accessing' stamp: 'cmm 3/23/2007 12:07'!
sourceName
	^ self sourceLeafParent fullNameFor: self leafName ! !

!MaDualFileOperation methodsFor: 'accessing' stamp: 'cmm 3/23/2007 12:06'!
targetLeafParent
	^ self parentLeafFrom: targetRoot! !

!MaDualFileOperation methodsFor: 'accessing' stamp: 'cmm 3/23/2007 12:08'!
targetName
	^ self targetLeafParent fullNameFor: self leafName ! !

!MaDualFileOperation class methodsFor: 'create' stamp: 'cmm 4/18/2007 12:39'!
sourceRoot: sourceRootDirectory targetRoot: targetRootDirectory deltaDirectoryEntry: aMaDeltaDirectoryEntry 
	^ self new 
		setSourceRoot: sourceRootDirectory
		targetRoot: targetRootDirectory
		deltaDirectoryEntry: aMaDeltaDirectoryEntry! !

!MaCopyFile methodsFor: 'script building' stamp: 'cmm 4/4/2007 17:12'!
execute
	self sourceLeafParent 
		maCopyFileNamed: self leafName 
		toDirectory: self targetLeafParent! !

!MaCopyFile methodsFor: 'testing' stamp: 'cmm 2/1/2007 05:43'!
isCopy
	^ true! !

!MaCopyFile methodsFor: 'script building' stamp: 'cmm 2/12/2007 12:41'!
writeCommandOn: aStream for: aMaOsFileManagerStrategy 
	aMaOsFileManagerStrategy 
		writeCopyCommandFrom: self sourceName
		to: self targetName
		on: aStream! !

!MaCopyFile class methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:32'!
reportAttributes
	^ { TextColor color: Color blue }! !

!MaReplaceFile methodsFor: 'script building' stamp: 'cmm 4/18/2007 12:33'!
copyOperation
	^ MaCopyFile 
		sourceRoot: sourceRoot
		targetRoot: targetRoot
		deltaDirectoryEntry: deltaDirectoryEntry! !

!MaReplaceFile methodsFor: 'script building' stamp: 'cmm 4/18/2007 12:51'!
deleteOperation
	^ MaDeleteFile 
		root: targetRoot
		deltaDirectoryEntry: deltaDirectoryEntry! !

!MaReplaceFile methodsFor: 'script building' stamp: 'cmm 4/4/2007 17:29'!
execute
	self deleteOperation execute.
	self copyOperation execute! !

!MaReplaceFile methodsFor: 'testing' stamp: 'cmm 2/1/2007 05:43'!
isCopy
	^ true! !

!MaReplaceFile methodsFor: 'script building' stamp: 'cmm 2/2/2007 12:48'!
writeCommandOn: aStream for: aMaOsFileManagerStrategy 
	self deleteOperation 
		writeCommandOn: aStream
		for: aMaOsFileManagerStrategy.
	self copyOperation 
		writeCommandOn: aStream
		for: aMaOsFileManagerStrategy! !

!MaReplaceFile class methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:33'!
reportAttributes
	^ { TextColor color: Color red }! !

!MaNullOperation methodsFor: 'execute' stamp: 'cmm 2/23/2007 18:00'!
execute
	"Null operations do nothing, of course.."! !

!MaNullOperation methodsFor: 'testing' stamp: 'cmm 2/21/2007 13:08'!
isMutative
	^ false! !

!MaNullOperation class methodsFor: 'create' stamp: 'cmm 4/18/2007 12:40'!
deltaDirectoryEntry: aMaDeltaDirectoryEntry 
	^ self new
		deltaDirectoryEntry: aMaDeltaDirectoryEntry ;
		yourself! !

!MaSingleFileOperation methodsFor: 'accessing' stamp: 'cmm 3/23/2007 12:51'!
fullName
	^ self leafParent fullNameFor: self leafName ! !

!MaSingleFileOperation methodsFor: 'accessing' stamp: 'cmm 3/23/2007 10:51'!
leafParent
	"Answer a (fully-qualified) directory (either FileDirectory or ServerDirectory) based on my leaf pathAndName."
	^ self parentLeafFrom: root! !

!MaSingleFileOperation methodsFor: 'initialize-release' stamp: 'cmm 4/18/2007 12:30'!
setRoot: aFileDirectory deltaDirectoryEntry: aMaDeltaDirectoryEntry 
	root := aFileDirectory.
	self deltaDirectoryEntry: aMaDeltaDirectoryEntry! !

!MaSingleFileOperation class methodsFor: 'create' stamp: 'cmm 4/18/2007 12:51'!
root: aFileDirectory deltaDirectoryEntry: aMaDeltaDirectoryEntry 
	^ self new 
		setRoot: aFileDirectory
		deltaDirectoryEntry: aMaDeltaDirectoryEntry! !

!MaDeleteDirectory methodsFor: 'execute' stamp: 'cmm 4/6/2007 14:24'!
execute
	(self leafParent in: [ : leafParent | leafParent on: (leafParent fullNameFor: self leafName)]) assureAbsence ! !

!MaDeleteDirectory methodsFor: 'script building' stamp: 'cmm 2/12/2007 12:49'!
writeCommandOn: aStream for: aMaOsFileManagerStrategy 
	aMaOsFileManagerStrategy 
		writeDeleteDirectoryCommandAt: self fullName
		on: aStream! !

!MaDeleteDirectory class methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:34'!
reportAttributes
	^ {  (TextEmphasis struckOut). 
	(TextColor color: Color red)  }! !

!MaDeleteFile methodsFor: 'execute' stamp: 'cmm 4/4/2007 17:26'!
execute
	self leafParent exists ifTrue: [ self leafParent deleteFileNamed: self leafName ]! !

!MaDeleteFile methodsFor: 'script building' stamp: 'cmm 2/12/2007 12:50'!
writeCommandOn: aStream for: aMaOsFileManagerStrategy 
	aMaOsFileManagerStrategy 
		writeDeleteFileCommandAt: self fullName
		on: aStream! !

!MaDeleteFile class methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:34'!
reportAttributes
	^ {  (TextEmphasis struckOut). 
	(TextColor color: Color red)  }! !

!MaMakeDirectory methodsFor: 'script building' stamp: 'cmm 3/23/2007 10:34'!
execute
	 self leafParent assureExistenceOfPath: self leafName ! !

!MaMakeDirectory methodsFor: 'script building' stamp: 'cmm 2/12/2007 12:50'!
writeCommandOn: aStream for: aMaOsFileManagerStrategy 
	aMaOsFileManagerStrategy 
		writeMakeDirectoryCommandAt: self fullName
		on: aStream! !

!MaMakeDirectory class methodsFor: 'reporting' stamp: 'cmm 2/26/2007 16:35'!
reportAttributes
	^ { TextColor color: Color blue }! !

!MaBanyanBackup methodsFor: 'testing' stamp: 'cmm 1/14/2008 12:06'!
canUseOsScript
	"Answer whether my operations can be performed via a generated script (batch file) and invoked by OSProcess."
	^ delta hasRemoteDirectory not and: [ self isOsProcessLoaded ]! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 1/11/2010 20:47'!
checkAndReplaceNewerFileOperation: aMaDeltaDirectoryEntry 
	^ aMaDeltaDirectoryEntry sourceIsOlder 
		ifTrue: 
			[ | replaceOperation |
			replaceOperation := MaReplaceFile 
				sourceRoot: self sourceDirectory
				targetRoot: self targetDirectory
				deltaDirectoryEntry: aMaDeltaDirectoryEntry.
			(MaReplaceNewerWithOlderWarning replaceOperation: replaceOperation) signal 
				ifTrue: [ replaceOperation ]
				ifFalse: [ MaNullOperation deltaDirectoryEntry: aMaDeltaDirectoryEntry ] ]
		ifFalse: [ MaNullOperation deltaDirectoryEntry: aMaDeltaDirectoryEntry ]! !

!MaBanyanBackup methodsFor: 'initialize' stamp: 'cmm 12/27/2007 10:40'!
cleanUp
	delta cleanUp! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 4/11/2007 16:44'!
copyOperations
	^ operations select: [ : each | each isCopy ]! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 1/19/2009 19:39'!
copyOperationsDo: aBlock 
	operations do: [ : each | each isCopy ifTrue: [ aBlock value: each ] ]! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 4/18/2007 12:51'!
copyOrReplaceOperationFor: aMaDeltaDirectoryEntry 
	^ aMaDeltaDirectoryEntry source isDirectory 
		ifTrue: 
			[ MaMakeDirectory 
				root: self targetDirectory
				deltaDirectoryEntry: aMaDeltaDirectoryEntry ]
		ifFalse: 
			[ | opClass |
			opClass := aMaDeltaDirectoryEntry target 
				ifNil: [ MaCopyFile ]
				ifNotNil: [ MaReplaceFile ].
			opClass 
				sourceRoot: self sourceDirectory
				targetRoot: self targetDirectory
				deltaDirectoryEntry: aMaDeltaDirectoryEntry ]! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 4/18/2007 12:51'!
deleteOperationFor: aMaDeltaDirectoryEntry 
	^ (aMaDeltaDirectoryEntry entryAt: MaDeltaDirectory targetIndex) isDirectory 
		ifTrue: 
			[ MaDeleteDirectory 
				root: self targetDirectory
				deltaDirectoryEntry: aMaDeltaDirectoryEntry ]
		ifFalse: 
			[ MaDeleteFile 
				root: self targetDirectory
				deltaDirectoryEntry: aMaDeltaDirectoryEntry ]! !

!MaBanyanBackup methodsFor: 'initialize' stamp: 'cmm 3/21/2007 12:48'!
determineOs
	os := SmalltalkImage current platformName = 'Win32' 
		ifTrue: [ MaBanyanWindowsStrategy new ]
		ifFalse: [ MaBanyanLinuxStrategy new ]! !

!MaBanyanBackup methodsFor: 'execute backup' stamp: 'cmm 1/12/2010 14:38'!
execute
	"Execute my operations.  The execution is performed in two stages, first the non-copy operations, then a script is generated to executed by OSProcess for the copy operations.  This is done so that the copied files will maintain their timestamps."
	operations ifEmpty: [ MaNoFileOperationsToPerform signal ].
	self hasWarnings ifTrue: 
		[ MaBanyanWarning signal: 'Warning messages were created for this backup.  Have you reviewed these warnings and certain you would like to proceed?' ].
	self
		executeNonCopyOperations ;
		executeCopyOperations ;
		cleanUp ;
		timeExecuted: DateAndTime now! !

!MaBanyanBackup methodsFor: 'private-copy script' stamp: 'cmm 1/14/2008 12:08'!
executeCopyOperations
	(self isOsProcessLoaded not and: [ self hasRemoteDirectory not ]) ifTrue: 
		[ MaBanyanWarning signal: 'If OSProcess were loaded, I could generate a copy-script to be executed by the OS, preserving file timestamps.  If you would like to do that, load OSProcess before proceeding.' ].
	self canUseOsScript 
		ifTrue: 
			[ self
				generateCopyScript ;
				executeCopyScript

			"Cannot delete because it gets deleted before it can finish running.."

			";
		deleteCopyScript" ]
		ifFalse: 
			[ "Cannot use the script method, do it all in Smalltalk"
			self executeCopyOperationsInSmalltalk ]! !

!MaBanyanBackup methodsFor: 'private-copy script' stamp: 'cmm 1/19/2009 20:05'!
executeCopyOperationsInSmalltalk
	'Executing copy operations...' 
		displayProgressAt: Display center
		from: 1
		to: operations size
		during: 
			[ : bar | 
			| count |
			count := 0.
			self copyOperationsDo: 
				[ : each | 
				bar value: (count := count + 1).
				each execute ] ]! !

!MaBanyanBackup methodsFor: 'private-copy script' stamp: 'cmm 9/12/2008 14:05'!
executeCopyScript
	os executeCopyScript: (FileDirectory default fullNameFor: self osScriptName)! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 1/19/2009 19:35'!
executeNonCopyOperations
	| count |
	count := 0.
	'Executing non-copying operations...' 
		displayProgressAt: Display center
		from: 1
		to: operations size
		during: 
			[ : bar | 
			self nonCopyOperationsDo: 
				[ : eachOperation | 
				bar value: (count := count + 1).
				eachOperation execute ] ]! !

!MaBanyanBackup methodsFor: 'private-copy script' stamp: 'cmm 1/19/2009 20:04'!
generateCopyScript
	| scriptStream |
	scriptStream := (CrLfFileStream forceNewFileNamed: self osScriptName)
		ascii ;
		yourself.
	
	[ 'Generating copy script...' 
		displayProgressAt: Display center
		from: 1
		to: operations size
		during: 
			[ : bar | 
			| count |
			count := 0.
			self copyOperationsDo: 
				[ : each | 
				bar value: (count := count + 1).
				os 
					write: each
					on: scriptStream ] ] ] ensure: [ scriptStream close ]! !

!MaBanyanBackup methodsFor: 'testing' stamp: 'cmm 4/6/2007 12:46'!
hasLocalDirectory
	^ delta hasLocalDirectory ! !

!MaBanyanBackup methodsFor: 'testing' stamp: 'cmm 4/5/2007 16:48'!
hasRemoteDirectory
	^ delta hasRemoteDirectory ! !

!MaBanyanBackup methodsFor: 'testing' stamp: 'cmm 1/11/2010 21:03'!
hasWarnings
	^ warnings notEmpty! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 2/27/2007 12:45'!
headerAttributes
	^ {  (TextEmphasis bold). (TextEmphasis underlined)  }! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 1/11/2010 17:30'!
includeOnlyFilesSince: aDate 
	"Exclude files whose last modificationDateAndTime is prior to aDate."
	self where: 
		[ : eachDde | 
		(eachDde entryAt: 1) in: 
			[ : sourceEntry | 
			sourceEntry notNil and: [ sourceEntry modificationDateAndTime >= aDate asDateAndTime ] ] ]! !

!MaBanyanBackup methodsFor: 'initialize' stamp: 'cmm 2/2/2007 13:02'!
initialize
	super initialize.
	self
		reset ;
		determineOs! !

!MaBanyanBackup methodsFor: 'testing' stamp: 'cmm 1/14/2008 12:06'!
isOsProcessLoaded
	^ Smalltalk hasClassNamed: #OSProcess! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 4/18/2007 12:51'!
mergeIntoTargetOperation: eachDeltaEntry 
	^ eachDeltaEntry source isDirectory 
		ifTrue: 
			[ MaMakeDirectory 
				root: self targetDirectory
				deltaDirectoryEntry: eachDeltaEntry ]
		ifFalse: 
			[ MaCopyFile 
				sourceRoot: self sourceDirectory
				targetRoot: self targetDirectory
				deltaDirectoryEntry: eachDeltaEntry ]! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 3/6/2007 12:43'!
mutativeOperations
	"Answer my operations that are not NullOperations; operations that will have an effect on the target filesystem."
	^ operations select: [ : e | e isMutative ]! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 1/12/2010 12:45'!
newTextStream
	^ (TextStream on: Text new) maPrint: timePrepared! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 1/19/2009 19:40'!
nonCopyOperationsDo: aBlock 
	operations do: [ : each | each isCopy ifFalse: [ aBlock value: each ] ]! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 6/22/2010 23:28'!
openReport: titleString viaSelector: selectorSymbol 
	| ts window |
	ts := self newTextStream.
	ts cr.
	self 
		printReport: titleString
		viaSelector: selectorSymbol
		on: ts.
	window := ((Workspace new
		contents: ts contents ;
		yourself) openLabel: titleString , ' ' , self targetDirectory fullName).
	window
		position: window x @ 0 ;
		extent: World extent // (2 @ 1)! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 3/6/2007 12:43'!
operations
	"Answer all FileOperations."
	^ operations ! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 12/27/2007 15:13'!
operationsByRelativeName
	| answer |
	answer := MaBanyanBackup dictionaryClass new.
	operations do: 
		[ : each | 
		answer 
			at: each pathAndName
			put: each ].
	^ answer! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 1/31/2007 12:52'!
os
	^os! !

!MaBanyanBackup methodsFor: 'initialize' stamp: 'cmm 1/31/2007 12:52'!
os: aMaOsFileManagerStrategy
	os := aMaOsFileManagerStrategy! !

!MaBanyanBackup methodsFor: 'private-copy script' stamp: 'cmm 1/9/2008 12:37'!
osScriptName
	^ osScriptName ifNil: [ osScriptName := os osScriptName ]! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 1/29/2012 22:58'!
prepareToMakeTargetLikeSource
	"Prepare my list of operations that, when later executed, modify my target directory to look just like my source.  Common files are replaced by those in the source only if their timeStamps are different (but a warning will be generated for common files newer in the target).  Files and directories existing in the target that do not exist in the source are removed from the target.  Files and directories existing in the source that do not exist in the target are copied over.
	The end result is just as if the target is deleted in its entirety and then the source copied, except this is much more efficient."
	| count |
	self reset.
	count := 0.
	timePrepared := nil.
	'Analyzing differences...' 
		displayProgressAt: Display center
		from: 1
		to: delta union size
		during: 
			[ : bar | 
			
			[ operations := delta union collect: 
				[ : eachDeltaEntry | 
				bar value: (count := count + 1).
				eachDeltaEntry sourceIsNewer 
					ifTrue: [ self copyOrReplaceOperationFor: eachDeltaEntry ]
					ifFalse: 
						[ eachDeltaEntry sourceIsPresent 
							ifTrue: 
								[ eachDeltaEntry checkIsMixedComposition.
								self checkAndReplaceNewerFileOperation: eachDeltaEntry ]
							ifFalse: [ self deleteOperationFor: eachDeltaEntry ] ] ] ] 
				on: MaBanyanWarning
				do: 
					[ : warning | 
					warnings add: warning.
					warning resume: true ] ].
	timePrepared := String streamContents: 
		[ : stream | 
		stream
			maPrint: thisContext selector ;
			cr ;
			maPrint: 'The time is: ' ;
			maPrint: DateAndTime now ].
	self viewProposedChanges ! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 1/29/2012 22:59'!
prepareToMakeTargetLikeSourceSkipWarnings
	"Same as prepareToMakeTargetLikeSource except, just skip the files that are older than their corresponding newer instead of overwriting.
	This operation is useful when a prior backup wrote the files with current time-stamps, even though they are the same file as the 'older' one."
	| count |
	self reset.
	count := 0.
	timePrepared := nil.
	'Analyzing differences...' 
		displayProgressAt: Display center
		from: 1
		to: delta union size
		during: 
			[ : bar | 
			
			[ operations := delta union collect: 
				[ : eachDeltaEntry | 
				bar value: (count := count + 1).
				eachDeltaEntry sourceIsNewer 
					ifTrue: [ self copyOrReplaceOperationFor: eachDeltaEntry ]
					ifFalse: 
						[ eachDeltaEntry sourceIsPresent 
							ifTrue: 
								[ eachDeltaEntry checkIsMixedComposition.
								self checkAndReplaceNewerFileOperation: eachDeltaEntry ]
							ifFalse: [ self deleteOperationFor: eachDeltaEntry ] ] ] ] 
				on: MaBanyanWarning
				do: [ : warning | warning resume: false ] ].
	timePrepared := String streamContents: 
		[ : stream | 
		stream
			maPrint: thisContext selector ;
			cr ;
			maPrint: 'The time is: ' ;
			maPrint: DateAndTime now ].
	self viewProposedChanges ! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 1/29/2012 22:59'!
prepareToMergeSourceIntoTargetOverwritingNothing
	"Build my collection of operations that, when later executed, will merge the source structure into the target structure without deleting or replacing any existing files.  This is an add-only operation, nothing in the target will be overwritten or deleted."
	| count |
	self reset.
	count := 0.
	[ delta union ] 
		on: MaBanyanTimeZoneWarning
		do: 
			[ : warning | 
			"skip it, because we're overwritig nothing anyway"
			warning resume ].
	timePrepared := nil.
	'Analyzing differences...' 
		displayProgressAt: Display center
		from: 1
		to: delta union size
		during: 
			[ : bar | 
			operations := 
			[ delta union collect: 
				[ : eachDeltaEntry | 
				bar value: (count := count + 1).
				eachDeltaEntry target 
					ifNil: [ self mergeIntoTargetOperation: eachDeltaEntry ]
					ifNotNil: 
						[ eachDeltaEntry checkIsMixedComposition.
						MaNullOperation deltaDirectoryEntry: eachDeltaEntry ] ] ] 
				on: MaBanyanWarning
				do: 
					[ : warning | 
					warnings add: warning.
					warning resume: true ] ].
	timePrepared := String streamContents: 
		[ : stream | 
		stream
			maPrint: thisContext selector ;
			cr ;
			maPrint: 'The time is: ' ;
			maPrint: DateAndTime now ].
	self viewProposedChanges ! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 1/29/2012 22:59'!
prepareToMergeSourceIntoTargetOverwritingOldest
	"Build my list of operations that, when later executed, will perform a merge of the source structure into the target structure.  Where the directory structures intersect, files from my target will be replaced by the newer files in the source.  Files and directories present in the target that do not exist in the source are not touched."
	| count |
	self reset.
	count := 0.
	timePrepared := nil.
	'Analyzing differences...' 
		displayProgressAt: Display center
		from: 1
		to: delta union size
		during: 
			[ : bar | 
			
			[ operations := delta union collect: 
				[ : eachDeltaEntry | 
				bar value: (count := count + 1).
				eachDeltaEntry sourceIsNewer 
					ifTrue: [ self copyOrReplaceOperationFor: eachDeltaEntry ]
					ifFalse: 
						[ eachDeltaEntry checkIsMixedComposition.
						MaNullOperation deltaDirectoryEntry: eachDeltaEntry ] ] ] 
				on: MaBanyanWarning
				do: 
					[ : warning | 
					warnings add: warning.
					warning resume: true ] ].
	timePrepared := String streamContents: 
		[ : stream | 
		stream
			maPrint: thisContext selector ;
			cr ;
			maPrint: 'The time is: ' ;
			maPrint: DateAndTime now ].
	self viewProposedChanges ! !

!MaBanyanBackup methodsFor: 'private' stamp: 'cmm 4/18/2007 12:38'!
print: aMaTree textOn: aTextStream 
	| operationsByRelativeName count |
	operationsByRelativeName := self operationsByRelativeName.
	count := 0.
	'Printing report...' 
		displayProgressAt: Display center
		from: 1
		to: aMaTree size
		during: 
			[ : bar | 
			aMaTree depthFirstDo: 
				[ : path | 
				| each eachOperation |
				bar value: (count := count + 1).
				each := path last.
				eachOperation := operationsByRelativeName 
					at: each pathAndName
					ifAbsent: 
						[ "Not expecting to reach this code, but nevertheless.."
						MaNullOperation deltaDirectoryEntry: each ].
				aTextStream
					cr ;
					tab: path size.
				eachOperation ifNotNil: [ eachOperation printProposedTargetTextOn: aTextStream ] ] ]! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 2/27/2007 12:49'!
printBodyHeader: aString on: aTextStream 
	aTextStream
		cr ;
		cr ;
		withAttributes: self headerAttributes
			do: [ aTextStream nextPutAll: aString ]! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 3/6/2007 12:22'!
printDirectoriesOn: aTextStream 
	aTextStream
		cr ;
		withAttributes: self headerAttributes
			do: [ aTextStream nextPutAll: 'Directories' ] ;
		cr ;
		tab ;
		nextPutAll: 'Source:  ' ;
		nextPutAll: delta source fullName ;
		cr ;
		tab ;
		nextPutAll: 'Target:  ' ;
		nextPutAll: delta target fullName! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 2/27/2007 12:45'!
printLegendOn: aTextStream 
	aTextStream
		cr ;
		cr ;
		withAttributes: self headerAttributes
			do: [ aTextStream nextPutAll: 'Legend:' ].
	{ 
		MaNullOperation.
		MaMakeDirectory.
		MaCopyFile.
		MaReplaceFile.
		MaDeleteDirectory.
		MaDeleteFile
	 } do: 
		[ : each | 
		aTextStream
			cr ;
			tab ;
			withAttributes: each reportAttributes
				do: [ aTextStream nextPutAll: each shortOperationName ] ]! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 5/24/2012 22:18'!
printProposedChangesTextOn: aTextStream 
	| operationsByRelativeName count |
	operationsByRelativeName := self operationsByRelativeName.
	count := 0.
	self 
		print: 
			('Selecting proposed changes only...' 
				displayProgressAt: Display center
				from: 1
				to: delta union size
				during: 
					[ : bar | 
					delta union selectPaths: 
						[ : path | 
						bar value: (count := count + 1).
						operationsByRelativeName 
							at: path last pathAndName
							ifPresent: [ : operation | operation isMutative ]
							ifAbsent: [ false ] ] ])
		textOn: aTextStream! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 2/26/2007 17:02'!
printProposedTargetTextOn: aTextStream 
	self 
		print: delta union
		textOn: aTextStream! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 2/27/2007 12:49'!
printReport: titleString viaSelector: selectorSymbol on: aTextStream 
	self
		printDirectoriesOn: aTextStream ;
		printBodyHeader: titleString
			on: aTextStream ;
		perform: selectorSymbol
			withArguments: {  aTextStream  } ;
		printWarningsOn: aTextStream ;
		printLegendOn: aTextStream! !

!MaBanyanBackup methodsFor: 'private-reporting' stamp: 'cmm 2/27/2007 12:46'!
printWarningsOn: aTextStream 
	warnings ifNotEmpty: 
		[ aTextStream
			cr ;
			cr ;
			withAttributes: self headerAttributes
				do: [ aTextStream nextPutAll: 'Warnings:' ] ].
	self warnings do: 
		[ : each | 
		aTextStream
			cr ;
			tab.
		each printUserInformationOn: aTextStream ]! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 3/1/2007 12:59'!
removeOperation: aMaFileOperation
	"Remove aMaFileOperation, and all of its children, from the proposed backup."
	operations remove: aMaFileOperation! !

!MaBanyanBackup methodsFor: 'initialize' stamp: 'cmm 2/14/2007 17:40'!
reset
	operations := MaTree new.
	warnings := OrderedCollection new.
	delta ifNotNil: [ delta reset ]! !

!MaBanyanBackup methodsFor: 'initialize' stamp: 'cmm 12/29/2006 17:19'!
setDelta: aMaDeltaDirectory
	delta := aMaDeltaDirectory! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 3/29/2010 00:22'!
skipFilesBeginningWithAnyOf: stringsArray 
	self where: 
		[ : eachPath | 
		stringsArray noneSatisfy: 
			[ : eachUnwantedPrefix | 
			eachPath anySatisfy: 
				[ : eachDirectoryEntry | 
				eachDirectoryEntry name
					maBeginsWith: eachUnwantedPrefix
					caseSensitive: true ] ] ]! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 1/12/2010 12:06'!
sortedOperations
	"Answer my operations that are not NullOperations; operations that will have an effect on the target filesystem."
	^ (operations select: [ : e | e isMutative ]) asArray sort: 
		[ : a : b | 
		a deltaDirectoryEntry pathAndName printString < b deltaDirectoryEntry pathAndName printString ]! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 3/6/2007 12:40'!
sourceDirectory
	^ delta directoryAt: MaDeltaDirectory sourceIndex ! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 3/6/2007 12:40'!
targetDirectory
	^ delta directoryAt: MaDeltaDirectory targetIndex ! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 1/12/2010 14:39'!
timeExecuted
	^ timeExecuted! !

!MaBanyanBackup methodsFor: 'initialize' stamp: 'cmm 1/12/2010 14:39'!
timeExecuted: aDateAndTime
	timeExecuted := aDateAndTime! !

!MaBanyanBackup methodsFor: 'view backup' stamp: 'cmm 3/27/2007 13:27'!
viewProposedChanges
	"Open a window displaying a report of the changes that will occur to my targetDirectory."
	self 
		openReport: 'Proposed Changes'
		viaSelector: #printProposedChangesTextOn:! !

!MaBanyanBackup methodsFor: 'view backup' stamp: 'cmm 3/27/2007 13:28'!
viewProposedTarget
	"Open a window showing the changes to my proposed targetDirectory, within the entire context of the targetDirectory tree."
	self 
		openReport: 'Proposed Target'
		viaSelector: #printProposedTargetTextOn:! !

!MaBanyanBackup methodsFor: 'accessing' stamp: 'cmm 1/19/2007 17:32'!
warnings
	^ warnings! !

!MaBanyanBackup methodsFor: 'define backup' stamp: 'cmm 3/28/2010 11:08'!
where: oneArgBlock 
	"Customize the backup by flitering out certain files from the backup (for example, temp files).  The argument to oneArgBlock is each DirectorEntry of the source tree."
	operations isEmpty ifFalse: [ MaBanyanWarning signal: 'After changing the where condition, you must #prepare the backup again.  To avoid seeing this message, call #where: before #prepare...' ].
	self reset.
	delta where: oneArgBlock! !

!MaBanyanBackup class methodsFor: 'access' stamp: 'cmm 12/27/2007 15:13'!
dictionaryClass
	"Squeaks standard Dictionary is not very scalable.  If available, use a MaDictionary for improved performance."
	^ (Smalltalk hasClassNamed: #MaDictionary) 
		ifTrue: [ Smalltalk classNamed: #MaDictionary ]
		ifFalse: [ Dictionary ]! !

!MaBanyanBackup class methodsFor: 'maui' stamp: 'cmm 11/9/2010 21:11'!
mauiDefaultView 
	^ 'Create New Backup'! !

!MaBanyanBackup class methodsFor: 'create' stamp: 'cmm 2/20/2009 16:02'!
source: sourceDirectory target: targetDirectory 
	^ (self new)
		setDelta: (MaDeltaDirectory directories: {  sourceDirectory asFileDirectory. targetDirectory asFileDirectory  }) ;
		yourself! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/17/2007 16:59'!
assertBackupExecution
	| backup didWarn textDescriptions |
	backup := self newBackupUtility.
	backup prepareToMakeTargetLikeSource.
	didWarn := false.
	[ (Delay forSeconds: 2) wait.
	backup execute ] 
		on: Warning
		do: 
			[ : warning | 
			didWarn := true.
			warning resume ].
	self assert: didWarn.
	backup canUseOsScript ifTrue: 
		[ | delayUntil |
		delayUntil := Time millisecondClockValue + 5000.
		'Waiting 5 seconds for script to complete...' 
			displayProgressAt: Display center
			from: Time millisecondClockValue
			to: delayUntil
			during: 
				[ : bar | 
				[ Time millisecondClockValue > delayUntil ] whileFalse: 
					[ (Delay forMilliseconds: 500) wait.
					bar value: Time millisecondClockValue ] ] ].
	backup prepareToMakeTargetLikeSource.
	backup canUseOsScript 
		ifTrue: 
			[ "Make sure target is exactly like the source."
			self assert: backup mutativeOperations isEmpty ]
		ifFalse: 
			[ "Otherwise, the timeStamps are not transferred, so the target files will always be newer.  Therefore there should be Relace operations for the four files."
			textDescriptions := backup mutativeOperations collect: [ : e | e commandWithRelativeName ].
			self
				assertIncludesAll: #(
							'Replace'
							'common' 'Sub'
							'in'
							'Source'
							'Only'
						)
					andRemoveFrom: textDescriptions ;
				assertIncludesAll: #(
							'Replace'
							'common'
							'Sub'
							'common'
							'File'
							'Older'
							'In'
							'Source'
						)
					andRemoveFrom: textDescriptions ;
				assertIncludesAll: #(
							'Replace'
							'source'
							'Only'
							'Sub'
							'file1'
						)
					andRemoveFrom: textDescriptions ;
				assertIncludesAll: #(
							'Replace'
							'common'
							'Sub'
							'common'
							'File'
							'Newer'
							'In'
							'Source'
						)
					andRemoveFrom: textDescriptions.
			self assert: textDescriptions size = 0.
			"Should be warnings associated with each of those too.."
			self assert: backup warnings size >= 4 ]! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 1/19/2007 12:23'!
assertIncludesAll: requiredSubStrings andRemoveFrom: textDescriptions 
	textDescriptions 
		maDetect: 
			[ : each | 
			self 
				string: each
				includesAllSubstrings: requiredSubStrings ]
		ifFound: [ : foundDescription | textDescriptions remove: foundDescription ]
		ifNone: 
			[ "failed!!"
			self assert: false ]! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/17/2007 16:05'!
assertMakeTargetLikeSource
	| backup textDescriptions warnings |
	backup := self newBackupUtility.
	backup prepareToMakeTargetLikeSource.
	textDescriptions := backup mutativeOperations collect: [ : e | e commandWithRelativeName ].
	self assert: textDescriptions size = 8.
	self
		assertIncludesAll: #('Copy' 'in' 'Source' 'Only' )
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'Replace'
					'common'
					'File'
					'Newer'
					'In'
					'Source'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'Replace'
					'common'
					'File'
					'Older'
					'In'
					'Source'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'MakeDir'
					'source'
					'Only'
					'Sub'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'Copy'
					'source'
					'Only'
					'Sub'
					'file1'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'DeleteFile'
					'in'
					'Target'
					'Only'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'DeleteDir'
					'target'
					'Only'
					'Sub'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'DeleteFile'
					'target'
					'Only'
					'Sub'
					'file1'
				)
			andRemoveFrom: textDescriptions.
	warnings := backup warnings collect: [ : each | each printString ].
	self assert: warnings size >= 2.
	self 
		assertIncludesAll: #('dirInSource fileInTarget' )
		andRemoveFrom: warnings.
	"Make sure the warnings include that we will replace a newer file with an older one."
	self 
		assertIncludesAll: #(
				'ReplaceFile'
				'common'
				'File'
				'Older'
				'In'
				'Source'
			)
		andRemoveFrom: warnings! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/17/2007 16:04'!
assertMergeSourceIntoTargetOverwriteNothing
	| backup textDescriptions warnings |
	backup := self newBackupUtility.
	backup prepareToMergeSourceIntoTargetOverwritingNothing.
	self assert: backup mutativeOperations size = 3.
	textDescriptions := backup mutativeOperations collect: [ : e | e commandWithRelativeName ].
	self
		assertIncludesAll: #(
					'Copy'
					'common'
					'Sub'
					'in Source Only'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #('MakeDir' 'source Only Sub' )
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #('Copy' 'source Only Sub' 'file1' )
			andRemoveFrom: textDescriptions.
	warnings := backup warnings collect: [ : each | each printString ].
	self assert: warnings size >= 1.
	self 
		assertIncludesAll: #('dirInSource fileInTarget' )
		andRemoveFrom: warnings! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/17/2007 16:02'!
assertMergeSourceIntoTargetOverwriteOldest
	| backup textDescriptions warnings |
	backup := self newBackupUtility.
	backup prepareToMergeSourceIntoTargetOverwritingOldest.
	textDescriptions := backup mutativeOperations collect: [ : e | e commandWithRelativeName ].
	self
		assertIncludesAll: #('Copy' 'in' 'Source' 'Only' )
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'MakeDir'
					'source'
					'Only'
					'Sub'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'Copy'
					'source'
					'Only'
					'Sub'
					'file1'
				)
			andRemoveFrom: textDescriptions ;
		assertIncludesAll: #(
					'Replace'
					'common'
					'Sub'
					'common'
					'File'
					'Newer'
					'In'
					'Source'
				)
			andRemoveFrom: textDescriptions.
	self assert: textDescriptions isEmpty.
	warnings := backup warnings collect: [ : each | each printString ].
	self assert: warnings size >= 1.
	self 
		assertIncludesAll: #('dirInSource fileInTarget' )
		andRemoveFrom: warnings! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/4/2007 12:41'!
assertUnion
	| union |
	union := deltaDir union.
	self assert: (union collect: [ : each | each pathAndName ]) asSet = self correctUnion! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/4/2007 12:42'!
assertUnionForLocalToLocal
	| union |
	union := deltaDir union.
	self assert: (union collect: [ : each | each pathAndName ]) asSet = self correctUnionWithCommonFileCommonAge ! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 12/21/2007 15:09'!
checkTimeZone
	DateAndTime localTimeZone offset = TimeZone default offset ifTrue: [ Warning signal: 'Your TimeZone is set to UTC (offset 0).  If this really is your timeZone, you may proceed, otherwise file age comparisons may be incorrect.']! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/17/2007 16:02'!
commonSubSourceDir
	^ (sourceDir on: (sourceDir fullNameFor: 'common Sub')) assureExistence! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/17/2007 16:03'!
commonSubTargetDir
	^ (targetDir on: (targetDir fullNameFor: 'common Sub')) assureExistence! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/17/2007 15:53'!
correctNewerInTarget
	^ #(
		'\common Sub\in Target Only'
		'\common Sub\common File Older In Source'
		'\target Only Sub'
		'\target Only Sub\file1'
	) asSortedCollection! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/17/2007 15:59'!
correctUnion
	^ { 
		{  'common Sub'  }.
		{  'common Sub'. 'in Source Only'  }.
		{  'common Sub'. 'in Target Only'  }.
		{  'common Sub'. 'common File Newer In Source'  }.
		{  'common Sub'. 'common File Older In Source'  }.
		{  'source Only Sub'  }.
		{  'source Only Sub'. 'file1'  }.
		{  'target Only Sub'  }.
		{  'target Only Sub'. 'file1'  }.
		{  'dirInSource fileInTarget'  }
	 } asSet! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/17/2007 15:53'!
correctUnionWithCommonFileCommonAge
	^ self correctUnion
		add: (Array with: 'common File Common Age') ;
		yourself! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/17/2007 15:54'!
createCommonFileCommonAgeInAll: directories 
	| attempts entries |
	attempts := 0.
	entries := OrderedCollection new.
	[ attempts = 0 or: 
		[ attempts < 10 and: [ entries first modificationTime ~= entries last modificationTime ] ] ] whileTrue: 
		[ (Delay forMilliseconds: 400) wait.
		entries := OrderedCollection new.
		directories do: 
			[ : each | 
			each forceNewFileNamed: 'common File Common Age' ].
		entries := directories collect: [ : each | each entryAt: 'common File Common Age' ].
		attempts := attempts + 1 ].
	attempts >= 10 ifTrue: 
		[ self halt: 'couldn''t create two files with the same modificationTime' ]! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/17/2007 15:52'!
createDifferentAgeFiles
	"Directories created, now create the files."
	| olderInSourceTime newInSourceTime neededDelay delayUntil |
	self
		createFileNamed: 'common File Older In Source'
			in: self commonSubSourceDir ;
		createFileNamed: 'common File Newer In Source'
			in: self commonSubTargetDir.
	"Those two files should have nearly the exact same timestamp, but if one of those directories is a remote machine, it will be the timestamp of that local machine.  So, for the tests to work, delay as long as the difference in their timestamps to be sure the 'newer' files are indeed newer."
	olderInSourceTime := (self commonSubSourceDir entryAt: 'common File Older In Source') modificationTime.
	newInSourceTime := (self commonSubTargetDir entryAt: 'common File Newer In Source') modificationTime.
	neededDelay := (newInSourceTime - olderInSourceTime) abs + (deltaDir hasLocalAndRemote 
			ifTrue: [ 61 ]
			ifFalse: [ 5 ]).
	delayUntil := Time millisecondClockValue + (neededDelay * 1000).
	deltaDir hasLocalAndRemote ifTrue: 
		[ neededDelay > 30 ifTrue: 
			[ Warning signal: 'To test file age comparisons, we must wait the duration of the difference between the local and remote computer clocks.  We will now pause approximately ' , neededDelay printString , ' seconds (until ' , delayUntil printString , ').' ] ].
	'Waiting...' 
		displayProgressAt: Display center
		from: Time millisecondClockValue
		to: delayUntil
		during: 
			[ : bar | 
			[ Time millisecondClockValue > delayUntil ] whileFalse: 
				[ (Delay forSeconds: 1) wait.
				bar value: Time millisecondClockValue ] ].
	self
		createFileNamed: 'common File Newer In Source'
			in: self commonSubSourceDir ;
		createFileNamed: 'common File Older In Source'
			in: self commonSubTargetDir.
	self assert: (self commonSubSourceDir entryAt: 'common File Newer In Source') modificationTime > (self commonSubTargetDir entryAt: 'common File Newer In Source') modificationTime.
	self assert: (self commonSubSourceDir entryAt: 'common File Older In Source') modificationTime < (self commonSubTargetDir entryAt: 'common File Older In Source') modificationTime! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 1/3/2007 11:36'!
createFileNamed: filename in: aFileDirectory 
	| fileStream |
	fileStream := aFileDirectory newFileNamed: filename.
	[ fileStream nextPutAll: 'contents of the file' ] ensure: [ fileStream close ]! !

!MaBanyanTestCase methodsFor: 'accessing' stamp: 'cmm 5/24/2012 20:28'!
defaultTimeout
	^ 30! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/10/2007 13:37'!
ftpRootTestDir
	^ ftpRootTestDir ifNil: 
		[ | ip user |
		ip := FillInTheBlank 
			request: 'Enter the FTP server address (temporary test directory will be created in /tmp)'
			initialAnswer: '155.109.143.36'.
		ip isEmptyOrNil ifTrue: [ self halt: 'Halting the test.' ].
		user := FillInTheBlank 
			request: 'user?'
			initialAnswer: Utilities authorInitialsPerSe.
		user isEmptyOrNil ifTrue: [ self halt: 'Halting the test.' ].
		ftpRootTestDir := ServerDirectory new
			type: #ftp ;
			server: ip ;
			directory: '/tmp/' , self rootTestDirName ;
			keepAlive: true ;
			user: user ;
			yourself ]! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/4/2007 09:45'!
initializeDirectory: rootDir 
	| answer |
	answer := {  'tmp'. (self rootTestDirName). 'target'  } 
		inject: rootDir
		into: [ : dir : each | dir on: (dir fullNameFor: each) ].
	^ answer
		assureAbsence ;
		assureExistence! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/4/2007 09:44'!
initializeSubdirectoryNamed: aString in: rootDir 
	| answer |
	answer := { aString  } 
		inject: rootDir
		into: [ : dir : each | dir on: (dir fullNameFor: each) ].
	^ answer
		assureAbsence ;
		assureExistence! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/3/2007 13:07'!
localRootTestDir
	^ FileDirectory on: (FileDirectory default fullNameFor: self rootTestDirName)! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 3/6/2007 12:37'!
newBackupUtility
	^ (MaBanyanBackup 
		source: sourceDir
		target: targetDir) in: 
		[ : utility | 
		self omitTempFilesFrom: utility.
		utility ]! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 5/24/2012 22:08'!
omitTempFilesFrom: aMaBanyanBackup 
	aMaBanyanBackup skipFilesBeginningWithAnyOf: #('_')! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 8/12/2010 23:44'!
recreateSourceTestStructure: rootDir 
	"Create some files and sub-dirs on the target to test the following conditions:
		1) exists in source only
		2) exists in target only
		3) exists in source+target, newer in source
		4) exists in source+target, newer in target

	To this end, here is the directory structure created:

		_banyanTest
			source
				common File Common Age <-- for local-to-local tests only
				_temp File To Skip
				common Sub
					in Source Only
					common File Newer In Source
					common File Older In Source
				source Only Sub
					file1
				dirInSource fileInTarget  <--- a directory
"
	| sourceOnlySubDir commonSubSourceDir |
	sourceDir := self 
		initializeSubdirectoryNamed: 'source'
		in: rootDir.
	commonSubSourceDir := (sourceDir on: (sourceDir fullNameFor: 'common Sub')) assureExistence.
	sourceOnlySubDir := (sourceDir on: (sourceDir fullNameFor: 'source Only Sub')) assureExistence.

	"Created the dir for the isMixedComposition."
	(sourceDir on: (sourceDir fullNameFor: 'dirInSource fileInTarget')) assureExistence.

	"Directories created, now create the files."
	"Directories created, now create the files."
	self
		createFileNamed: 'in Source Only'
			in: commonSubSourceDir ;
		createFileNamed: 'file1'
			in: sourceOnlySubDir ;
		createFileNamed: '_temp File To Skip'
			in: sourceDir! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 4/17/2007 13:57'!
recreateTargetTestStructure: targetRootDir 
	"Create some files and sub-dirs on the target to test the following conditions:
		1) exists in source only
		2) exists in target only
		3) exists in source+target, newer in source
		4) exists in source+target, newer in target

	To this end, here is the directory structure created:

	:=banyanTest
		target
			common Sub
				in Target Only
				common File Newer In Source
				common File Older In Source
			target Only Sub
				file1
			dirInSource fileInTarget  <--- a file
"
	| targetOnlySubDir commonSubTargetDir |
	targetDir := self 
		initializeSubdirectoryNamed: 'target'
		in: targetRootDir.
	commonSubTargetDir := (targetDir on: (targetDir fullNameFor: 'common Sub')) assureExistence.
	targetOnlySubDir := (targetDir on: (targetDir fullNameFor: 'target Only Sub')) assureExistence.

	"Directories created, now create the files."
	self
		createFileNamed: 'in Target Only'
			in: commonSubTargetDir ;
		createFileNamed: 'file1'
			in: targetOnlySubDir ;
		createFileNamed: 'dirInSource fileInTarget'
			in: targetDir! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 3/28/2007 17:10'!
recursiveDelete: directory 
	directory exists ifTrue: [ directory recursiveDelete ]! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 3/28/2007 17:15'!
rootTestDirName
	^ '_banyanTest'! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 4/19/2007 09:37'!
runTestWithRemoteSource: source target: target
	self checkTimeZone.
	self localRootTestDir assureAbsence.
	self ftpRootTestDir assureAbsence.
	[ self
		recreateSourceTestStructure: source ;
		recreateTargetTestStructure: target.
	deltaDir := MaDeltaDirectory directories: {  sourceDir. targetDir  }.
	self createDifferentAgeFiles.
	self
		omitTempFilesFrom: deltaDir ;
		assertUnion ;
		assertMergeSourceIntoTargetOverwriteNothing ;
		assertMergeSourceIntoTargetOverwriteOldest ;
		assertMakeTargetLikeSource ;
		assertBackupExecution ] ensure: 
		[ self localRootTestDir assureAbsence.
		self ftpRootTestDir assureAbsence ]! !

!MaBanyanTestCase methodsFor: 'private' stamp: 'cmm 1/17/2007 12:16'!
string: aString includesAllSubstrings: aCollection 
	^ aCollection allSatisfy: [ : each | aString includesSubString: each ]! !

!MaBanyanTestCase methodsFor: 'initialize-release' stamp: 'cmm 5/25/2012 10:36'!
tearDown
	(SystemWindow
		windowsIn: ActiveWorld
		satisfying: [:w | w label beginsWith: 'Proposed Changes'])
		do: [:w | w delete]! !

!MaBanyanTestCase methodsFor: 'tests' stamp: 'cmm 4/19/2007 15:05'!
testLocalToLocal
	self localRootTestDir assureAbsence.
	[ self
		recreateSourceTestStructure: self localRootTestDir ;
		recreateTargetTestStructure: self localRootTestDir.
	deltaDir := MaDeltaDirectory directories: {  sourceDir. targetDir  }.
	self
		createCommonFileCommonAgeInAll: {  sourceDir. targetDir  } ;
		createDifferentAgeFiles.
	self
		omitTempFilesFrom: deltaDir ;
		assertUnionForLocalToLocal ;
		assertMergeSourceIntoTargetOverwriteNothing ;
		assertMergeSourceIntoTargetOverwriteOldest ;
		assertMakeTargetLikeSource ;
		assertBackupExecution ] ensure: [ self localRootTestDir recursiveDelete ]! !

!MaBanyanTestCase methodsFor: 'tests' stamp: 'cmm 4/19/2007 09:38'!
testLocalToRemote
	self 
		runTestWithRemoteSource: self localRootTestDir
		target: self ftpRootTestDir! !

!MaBanyanTestCase methodsFor: 'tests' stamp: 'cmm 4/19/2007 09:34'!
testRemoteToLocal
	self checkTimeZone.
	self localRootTestDir assureAbsence.
	self ftpRootTestDir assureAbsence.
	[ self
		recreateSourceTestStructure: self ftpRootTestDir ;
		recreateTargetTestStructure: self localRootTestDir.
	deltaDir := MaDeltaDirectory directories: {  sourceDir. targetDir  }.
	self createDifferentAgeFiles.
	self
		omitTempFilesFrom: deltaDir ;
		assertUnion ;
		assertMergeSourceIntoTargetOverwriteNothing ;
		assertMergeSourceIntoTargetOverwriteOldest ;
		assertMakeTargetLikeSource ;
		assertBackupExecution ] ensure: 
		[ self localRootTestDir assureAbsence.
		self ftpRootTestDir assureAbsence ]! !
