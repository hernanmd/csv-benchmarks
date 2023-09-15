Class {
	#name : #CSVBenchesData,
	#superclass : #Object,
	#category : #'CSVBenchmarks-Data'
}

{ #category : #'class initialization' }
CSVBenchesData class >> initialize [

	self localGit exists
		ifFalse: [ self cloneDataRepository ]
]

{ #category : #private }
CSVBenchesData class >> localGit [

	^ IceLibgitRepository repositoriesLocation / self remoteGit projectName
]

{ #category : #private }
CSVBenchesData class >> localGitData [

	^ self localGit / 'data' / 'csv'
]

{ #category : #private }
CSVBenchesData class >> remoteGit [

	^ IceGitRemote url: self remoteUrl
]

{ #category : #private }
CSVBenchesData class >> remoteUrl [

	^ 'https://github.com/hernanmd/csv_benchmark_data.git'
]
