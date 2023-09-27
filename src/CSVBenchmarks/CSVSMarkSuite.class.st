Class {
	#name : 'CSVSMarkSuite',
	#superclass : 'SMarkSuite',
	#instVars : [
		'dataset',
		'benchmarkOperation'
	],
	#category : 'CSVBenchmarks-SMark',
	#package : 'CSVBenchmarks',
	#tag : 'SMark'
}

{ #category : 'benchmarking' }
CSVSMarkSuite class >> benchmarkParameters [

	| parameterMatrix |
	parameterMatrix := super benchmarkParameters.
	parameterMatrix
		forSelector: #dataset addOptions: { 
			(#NeoCSVReader -> #aniProkaryotes) };
		forSelector: #benchmarkOperation addOptions: { #read }.
	^ parameterMatrix
]

{ #category : 'examples' }
CSVSMarkSuite class >> example [

	CSVSMarkHarness run: { 
	    'CSVSmarkHarness'. 
	    'CSVSMarkSuite.benchCSV' . 
	    1 . "The number of iterations"
	    1 . "The number of processes"
	    5   "The problem size"
	    }.

]
