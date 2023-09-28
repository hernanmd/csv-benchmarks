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
			"(#NeoCSVReader -> #aniProkaryotes) ."
			(#PP2CommaSeparatedParser -> #aniProkaryotes) };
		forSelector: #benchmarkOperation addOptions: { 
			#readCSV }.
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

{ #category : 'benchmarking' }
CSVSMarkSuite >> benchCSV [
	"Read CSV datasets defined in the receiver"

	| csvReader |
	csvReader := CSVSMarkReader 
			newReader: dataset key 
			forDataset: dataset value.
	self problemSize timesRepeat: [ 
		csvReader perform: benchmarkOperation ]

]
