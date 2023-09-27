Class {
	#name : 'CSVSMarkHarness',
	#superclass : 'ReBenchHarness',
	#category : 'CSVBenchmarks-SMark',
	#package : 'CSVBenchmarks',
	#tag : 'SMark'
}

{ #category : 'defaults' }
CSVSMarkHarness class >> defaultOutputDestination [
	"Answer a <Stream> used to output receiver's contents"

	^ self defaultReporter defaultOutputDestination
]

{ #category : 'defaults' }
CSVSMarkHarness class >> defaultReporter [

	^ CSVSMarkReporter
]
