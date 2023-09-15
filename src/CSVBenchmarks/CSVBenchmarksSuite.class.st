Class {
	#name : #CSVBenchmarksSuite,
	#superclass : #SMarkSuite,
	#category : #'CSVBenchmarks-SMark'
}

{ #category : #benchmarking }
CSVBenchmarksSuite class >> benchmarkParameters [

	| parameterMatrix |
	parameterMatrix := super benchmarkParameters.
	parameterMatrix
		forSelector: #dataset addOptions: { };
		forSelector: #benchmarkOperation addOptions: { #read }.
	^ parameterMatrix
]

{ #category : #examples }
CSVBenchmarksSuite class >> example [

	CSVSmarkHarness run: { 
	    'CSVSmarkHarness'. 
	    'CSVSMarkSuite.benchJSON' . 
	    1 . "The number of iterations"
	    1 . "The number of processes"
	    5   "The problem size"
	    }.

]

{ #category : #benchmarking }
CSVBenchmarksSuite >> benchReadCSV [
 
    self problemSize timesRepeat: [ ]
]
