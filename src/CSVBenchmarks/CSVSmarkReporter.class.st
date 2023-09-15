Class {
	#name : #CSVSmarkReporter,
	#superclass : #ReBenchReporter,
	#category : #'CSVBenchmarks-SMark'
}

{ #category : #defaults }
CSVSmarkReporter class >> defaultOutputDestination [
	"Answer a <Stream> used to output receiver's contents"

	^ self defaultOutputFilename asFileReference writeStream
]

{ #category : #defaults }
CSVSmarkReporter class >> defaultOutputFilename [

	^ String streamContents: [ : stream | 
		stream
			<< 	DateAndTime current asFileNameCompatibleString;
			<< '.csv' ]
]
