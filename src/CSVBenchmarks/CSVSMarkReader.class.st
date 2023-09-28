Class {
	#name : 'CSVSMarkReader',
	#superclass : 'Object',
	#instVars : [
		'csvStream',
		'readerClass'
	],
	#category : 'CSVBenchmarks-SMark',
	#package : 'CSVBenchmarks',
	#tag : 'SMark'
}

{ #category : 'instance creation' }
CSVSMarkReader class >> newReader: aCSVReaderClass forDataset: aCSVDatasetSelector [

	^ self new
		  readerClass: (self class environment at: aCSVReaderClass);
		  initializeDataset: aCSVDatasetSelector;
		  yourself
]

{ #category : 'accessing' }
CSVSMarkReader >> csvStream [

	^ csvStream
]

{ #category : 'accessing' }
CSVSMarkReader >> csvStream: anObject [

	csvStream := anObject
]

{ #category : 'initialization' }
CSVSMarkReader >> initializeDataset: aDatasetSelector [

	self
		csvStream: (CSVBenchesData perform: aDatasetSelector) readStream;
		yourself
]

{ #category : 'initialization' }
CSVSMarkReader >> readCSV [

	^ ZnBufferedReadStream 
		on: self csvStream 
		do: [ :stream | (self readerClass on: stream) next ]
]

{ #category : 'accessing' }
CSVSMarkReader >> readerClass [

	^ readerClass
]

{ #category : 'accessing' }
CSVSMarkReader >> readerClass: anObject [

	readerClass := anObject
]
