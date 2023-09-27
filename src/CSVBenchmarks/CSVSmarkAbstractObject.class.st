Class {
	#name : 'CSVSMarkAbstractObject',
	#superclass : 'SMarkSuite',
	#instVars : [
		'csvStream'
	],
	#category : 'CSVBenchmarks-SMark',
	#package : 'CSVBenchmarks',
	#tag : 'SMark'
}

{ #category : 'accessing' }
CSVSMarkAbstractObject >> csvStream [

	^ csvStream
]

{ #category : 'accessing' }
CSVSMarkAbstractObject >> csvStream: anObject [

	csvStream := anObject
]
