Class {
	#name : #CSVSmarkHarness,
	#superclass : #ReBenchHarness,
	#category : #CSVBenchmarks
}

{ #category : #defaults }
CSVSmarkHarness class >> defaultOutputDestination [
	"Answer a <Stream> used to output receiver's contents"

	^ self defaultReporter defaultOutputDestination
]

{ #category : #defaults }
CSVSmarkHarness class >> defaultReporter [

	^ CSVSmarkReporter
]
