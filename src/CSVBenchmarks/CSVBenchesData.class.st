Class {
	#name : 'CSVBenchesData',
	#superclass : 'Object',
	#category : 'CSVBenchmarks-Data',
	#package : 'CSVBenchmarks',
	#tag : 'Data'
}

{ #category : 'datasets' }
CSVBenchesData class >> aniProkaryotes [
	"More than 600,000 GenBank bacterial and archaeal genome assemblies report named ""Average nucleotide identity"" (ANI) analysis (GenBank uses it to find and correct misidentified prokaryotic genome assemblies)."
	
	^ self localGitData / 'ANI_report_prokaryotes.txt'
	
]

{ #category : 'accessing' }
CSVBenchesData class >> cloneDataRepository [

	(IceRepositoryCreator new
		location: self localGit;
		remote: self remoteGit;
		createRepository) register
]

{ #category : 'class initialization' }
CSVBenchesData class >> initialize [

	self localGit exists
		ifFalse: [ self cloneDataRepository ]
]

{ #category : 'private' }
CSVBenchesData class >> localGit [

	^ IceLibgitRepository repositoriesLocation / self remoteGit projectName
]

{ #category : 'private' }
CSVBenchesData class >> localGitData [

	^ self localGit / 'data' / 'csv'
]

{ #category : 'private' }
CSVBenchesData class >> remoteGit [

	^ IceGitRemote url: self remoteUrl
]

{ #category : 'private' }
CSVBenchesData class >> remoteUrl [

	^ 'https://github.com/hernanmd/csv_benchmark_data.git'
]
