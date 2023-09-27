Class {
	#name : 'CSVSMarkReader',
	#superclass : 'CSVSMarkAbstractObject',
	#instVars : [
		'readerClass'
	],
	#category : 'CSVBenchmarks-SMark',
	#package : 'CSVBenchmarks',
	#tag : 'SMark'
}

{ #category : 'instance creation' }
CSVSMarkReader class >> newReader: aCSVReaderClass forDataset: aCSVDatasetSelector [

	^ self new
		readerClass: aCSVReaderClass;
		initializeDataset: aCSVDatasetSelector;
		yourself
]

{ #category : 'initialization' }
CSVSMarkReader >> initializeDataset: aDatasetSelector [

	self
		csvStream: (CSVBenchesData perform: aDatasetSelector) readStream;
		yourself
]

{ #category : 'initialization' }
CSVSMarkReader >> read [

	^ ZnBufferedReadStream 
		on: self csvStream 
		do: [ :stream | ((Smalltalk at: self readerClass) on: stream) next ]
]

{ #category : 'accessing' }
CSVSMarkReader >> readerClass [

	^ readerClass
]

{ #category : 'accessing' }
CSVSMarkReader >> readerClass: anObject [

	readerClass := anObject
]
