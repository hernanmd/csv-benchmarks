Class {
	#name : 'BaselineOfCSVBenchmarks',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfCSVBenchmarks',
	#package : 'BaselineOfCSVBenchmarks'
}

{ #category : 'baselines' }
BaselineOfCSVBenchmarks >> baseline: spec [
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec
				baseline: 'NeoCSV'    with: [ spec repository: 'github://svenvc/NeoCSV/repository' ];
				baseline: 'SMark'    with: [ spec repository: 'github://guillep/SMark/repository' ];
				baseline: 'PetitParser2Languages'  with: [ spec repository: 'github://kursjan/petitparser2' ];

				package: 'CSVBenchmarks'      with: [ spec requires: #(SMark NeoCSV PetitParser2Languages) ];
				package: 'CSVBenchmarks-Tests'	with: [ spec requires: #(CSVBenchmarks) ].

			spec 
				group: 'Core' 						with: #('CSVBenchmarks');
				group: 'Tests' 						with: #('CSVBenchmarks' 'CSVBenchmarks-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]
]
