Class {
	#name : 'CSVSMarkReporter',
	#superclass : 'ReBenchReporter',
	#category : 'CSVBenchmarks-SMark',
	#package : 'CSVBenchmarks',
	#tag : 'SMark'
}

{ #category : 'defaults' }
CSVSMarkReporter class >> defaultOutputDestination [
	"Answer a <Stream> used to output receiver's contents"

	^ self defaultOutputFilename asFileReference writeStream
]

{ #category : 'defaults' }
CSVSMarkReporter class >> defaultOutputFilename [

	^ String streamContents: [ : stream | 
		stream
			<< 	DateAndTime current asFileNameCompatibleString;
			<< '.csv' ]
]
